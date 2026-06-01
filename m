Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371D9363C53
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780316074; cv=none; b=MLT2rFsAMsI7janaDJbCa3+nCaLB53eDd4V6rEvlrkby4VJ4VIiPWejmQlWLfCgo79qqL6sy80O0S651JqO0+RIrPqhc0PZrtQtFjBg07GMwpRKX4UTPalMlNUuqjL7G9/RWcOeRWADrBEMPoX4xgd2Y3hq6qD8BqCHL8GjT5Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780316074; c=relaxed/simple;
	bh=VIPhA5byu6tBtmYD2/pxWDEH1JAPj2dLxcJE76L/soc=;
	h=To:Subject:From:Message-Id:Date; b=qYQIdycdW7eaYQj2mMiGp/3dzVDX76qA/Ihgfbu0OumKB1iu/wrYUKsh5ZD5pw/xhTBIebdfvmsyrWOZGL3qrQlNegFjM448y5r6X55jt0TF2VWFqvhSqJxJ4RY9iK/nWEUSEKwWvJgWiCB33jgEib4zjnItDRDT4Lm8xaDT3f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nON597NT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nON597NT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDED5C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780316073;
	bh=VIPhA5byu6tBtmYD2/pxWDEH1JAPj2dLxcJE76L/soc=;
	h=To:Subject:From:Date:From;
	b=nON597NTZxnvdT+nhSTT9vmQpBIMwKpbg8jpMlxK6yoVYCQAQ0kBUT/RJmlEV9JwB
	 H6h42ZpcRzTQOKbvot5GNvgLk7wLfl6+gwSjzQiUEoJtABVedcRNc87uxKJ8pjyoNR
	 y0x/7jckwXRwcAD5r6rS2GWPeYn4a2jAkiT6M//CcTVvyFlM9GmvtCK+ZIRLYaHnzi
	 TgPlbW8BB1QoG8dbG+diit0P7ERBd8yQTKrf5AL9dDSfa/TJYtX2+Y/PscLOpApQt4
	 REtP7KA+7jbqHkDg85MXMRqbSyvVHT4NxMx6MJrDRII7QqL0fo+dIKGvarw3FjIJYQ
	 vwG8oBX/xEazQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F7CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031607368.32574.11266551502267928123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43de743b32b6618690a06a61dd5c6c49c42d2fd434624de8476a2567bc24bd56
Date: Mon, 01 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780316073
