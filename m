Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322C018B0F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750505994; cv=none; b=deIHxXjnPE+HAbuSgRiVv+DlzGRuLY3DOp1A51V4/PdbfYwraSqAEiGmTPN282tGg8D5qJTxNCJAM2pBZW/IpGk1Is/z1Vf9WRrEsjSAeN2KN9kc90RCD3ThthuqIn+cMIY9kXkRgYzBjtUtHUcvPOmgDEC8YJTIkcRQ+ct3XdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750505994; c=relaxed/simple;
	bh=Yuq/nZQtAwLT3XXlucePT8gVh7l6r+8R3VA+hZ39jxY=;
	h=To:Subject:From:Message-Id:Date; b=cNaUQLd8PRVj8WxKiRK25lXiaZswJ66+G+/k1bzjcGzRlJFWm9cKkk05kTLis2SO75Xkd53nr/KaTM4mMJRoqip0/ty/Ng/NWuy9yiY3Isz/zNAAPnxdKN2vSKl7yW+Gt01nxZcAXheyKyeLwrbUvE5XBjHubCGJLKDw5+518LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVJidEkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVJidEkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A80AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750505993;
	bh=Yuq/nZQtAwLT3XXlucePT8gVh7l6r+8R3VA+hZ39jxY=;
	h=To:Subject:From:Date:From;
	b=hVJidEkz3mxSZm95Q5p/HgSrTQlTbJen0a+AMnKmVa8TyePVRlUtSZtGJjaimhFiW
	 CwSqtjQIymAK/yarGu4f99KG6LytHVeM6sgkYW11o/+6lwVyH7jLzLPqmoW2tR36tm
	 KlDo0WNlGjjNNirtazg5SGglNvC95pA+7MIdp8zKuvmlGNSXE0EFBNOz0cM+4MBcnH
	 TP/G3WhxTv2WA8ztYlE/bTxPddr5/QAgFnUCT3zMcJo8rzBQzB6aEEiOfjkcD3KmbZ
	 YXQKo8efyK5jViggkYCurfzFYRRG26fBL/66166l0JnXf3Mnjww7v5AtX2xeeWc+/j
	 RUKvMINgz1cMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E442C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050599357.14197.16556790888320578006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8ce2e769bda857e7d097c741a870ece08478fcec54b7dff9d6adf4f0961850
Date: Sat, 21 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750505993
