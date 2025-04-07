Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572981FAC59
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744058994; cv=none; b=d5avFHxOzwgt/e2l81Tc0IT4U/iKIx7+XL4Gse2RnCPvDvKSP7torMaRFbPRrI1DF+xW6EHJr2ni4/mFygNeLxdnYKmAfk6vHk6+PxOWvszL+Kp+gZeHo8GD8a92zNG1agzpCLSVRNGTAD5/24N2IxIv4v+fcjtTHILWWS5gVLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744058994; c=relaxed/simple;
	bh=WXQhM+lcHI3Bi1nAzffICIMFPmYZXMeQ27KAv5B4F+U=;
	h=To:Subject:From:Message-Id:Date; b=nOP2CGAJLmq1nYyixcYZU4EreHEudgmNawJNrNQ/UfCZ/Vhq8shQ4iTMw8k7M+fVkE75iEtaC+v8pHXJ+Vn/jIPwc4l1op0d6pVBAaB0axqqr6IrVZxeOzN2uS/qOcmWzJ7uilutrrNdmV8dxf+51O+XyEB+a0GtRWgeflFH29s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSS4S3fB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSS4S3fB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF06C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744058993;
	bh=WXQhM+lcHI3Bi1nAzffICIMFPmYZXMeQ27KAv5B4F+U=;
	h=To:Subject:From:Date:From;
	b=JSS4S3fB7oJdp8nND/T0zyrodnaDPFj25X8hJkT8tfhoqYVZbW9VYlTWAz6CREiyG
	 LbFx8U9Gc+xWXZONUm7sH1lRcJ+ulPYRXj5ZQkJ1C/knPtdqTJtV4qnynQMj//upUl
	 +hQXag4b9Dy2txIrvbMLeXLs2mm36zJzQklXBkXTIgx+SARZ4zKOVkfdivBHBikLHW
	 8Y/OPaO6GbCPHXg3aOIAJNsmLLweSNi6eF/kuV+h1P+6OFCOH4m/CEo9EII1wLnh9D
	 mSwi3FsUiofooJxLX4b6Gkta5sW699XKVHssN6e+3J1q6WGY4/Y67rtfr5l/5LHON+
	 y6gaDCRqKu3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995ACC369A1
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405899361.32629.5941421734951415259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7add6d7c4eaf1378edbc0897c011465b1debb6bcdab5c3724fc27c01454d1d97
Date: Mon, 07 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744058993
