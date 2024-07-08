Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340618E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720397183; cv=none; b=LE+vJ2/RFCbx0qtsnl44kkUqyvje7wOvMf3GHDu8WiGYOUC6u7RH3TpEfMBZaswlWM7e/KswbP5Hofn1nxh4yYh1AErWu8AdmeLzb8BfHSod7aTaisCGfu+FOkS3k8XiyYKzM5XUMyAz5wbjeuhhRKgiwXFIEZIfCFPrdBDzjU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720397183; c=relaxed/simple;
	bh=VXVpNO6mgXJihuGGFqBQPA+f5Smm1zBelisCvcbDgdg=;
	h=To:Subject:From:Message-Id:Date; b=qQZ7Ug+gP5bXIhm3H9WHMSMHSM67HQa9sIiQoJ/Ktxpt8UXpn5bPKLug2lwZ9clOOcz5cabrWVxwvFB9LO5RrQbniZ2uCUwXaEZJ9Me4szHLCMWoSbdx/x56zFUCmRgtpQ5NteRfxKjEO8UzejlnxnbPta+6jNJA/vbeFoMzAu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTZksJ4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTZksJ4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E297AC3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720397182;
	bh=VXVpNO6mgXJihuGGFqBQPA+f5Smm1zBelisCvcbDgdg=;
	h=To:Subject:From:Date:From;
	b=rTZksJ4k3pbcwbUnaFDBi0rzU5vXyIsrV7N3h1xIWl7bUuylcZi+pu/v+Wzg3XGoc
	 301VB4nZrp2+cDXicd0RwfxL6n9A72HqKe5dNztX6lngsbMMk0JfEVh+Zv3jAte2T6
	 y2ue6HwEHhGdmu8p3zp0ToXA/YmbggXvwYe+ru+gxCiMHCfMJJNuDqaloAPzYMCtvy
	 y7McYdIzVOtn/eGrfBy7MhMKgCMZ/Tpec96VVl2qPt/DcDUmMFB9xWo92LyR3PGlgr
	 nLbzdoQT/TVX6uJpKMa+6jZ4qljmKUsDkBjmg1jhWvuUmjQBrSFgE+CyXOFD1HAehv
	 604/R4vZ4PrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93D7C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039718280.4595.16324307149617712830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eccfe1caf2b4e1d8739a9c7aece294ce86717057aaf0fa3d943dffa9603a1ff7
Date: Mon, 08 Jul 2024 00:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720397182
