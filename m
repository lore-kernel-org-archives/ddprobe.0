Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFEA136E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753603194; cv=none; b=Tzdqcg6hatOEx6L7K64g5y674mUkbckNN1S/+dbIFQ+bSoUx09HrYhBkcfq8WGKxFnTurEsVznk3q2AxmhKeG73DYEbRM4gOvNUCIctq7JXot27jhzRtS6nqVU+/6KJqqclen71dAtI2/afMw1halY+QWw70Z6Z6/iSV0ZEAEOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753603194; c=relaxed/simple;
	bh=R9WN1SD89HQUtQErETIcPDxorFHHY2XTk/ohdFRV9YI=;
	h=To:Subject:From:Message-Id:Date; b=kOjFOY0MnOhpgf/ZMq7GzwB5wh0/LRvdPbqj0UIC0uaa+/hVzuMsH7f1eEoB8Cck5w4i+7ReDqvJlD/teqED06+PjwbIaaSJF6wrkB4QRSeEIn7k+hgICgzrCzfsqC7z7Fp6sbsPJBJhJg1j6wOFEihKb0zPH+s1sZZ0/fCiRaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF6kiAQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF6kiAQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D46C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753603193;
	bh=R9WN1SD89HQUtQErETIcPDxorFHHY2XTk/ohdFRV9YI=;
	h=To:Subject:From:Date:From;
	b=CF6kiAQHHNY66wUbz64wx9z/d+0Ci8hil6W8YBLrandrOeNxi99FIpiZtjHy/CJ8d
	 M/mPVkQN/nRrGuv6pCkDah8p5o5kdd5dflSWGH8TG1VpHx2wdy3gFSvNLzNqK+znFd
	 qDVh/VxY3vxF9WcmJSOB1IgzzbpLqVXJiAkQYGJB7T2r2ldB7ah6O/7Nbk7M9UG7ZS
	 8x09ROGcohZLK4hiM4OEpCAAb8+aIMjMaPwXC0nP8bokL7Jj1uQ42t3UwL7yzeE3Bo
	 Df57YUpnCnc59SLInQPR+dfS99TzVUjIgyLwXRytzDdi6dJvqRsoqF8DGMtm7mMP+e
	 h3h+tOPADnbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9102DC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360319357.12807.15817770901912822048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3deacf658692681224b9174f4ddcf01465eb00c62da5830e851b7c699da4dd03
Date: Sun, 27 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753603193
