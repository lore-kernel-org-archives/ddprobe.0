Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1CA1A08C2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722128153; cv=none; b=XHdle8qqE6eFl1JFenMECFzrMaNQfQuHYFGumVSYeBL8MrJPqyI9T6oQLqjaDDmDosWL5rFmfeOjrbRihW+8c1c8c1tCvsmvWoEMPA/wIkuJkiZ7lLhVp0Ykfki1n/RxUF4QIv0QIR2tjVmEGtrCzmMX/bHcq/PmGuS68AaA1cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722128153; c=relaxed/simple;
	bh=injljP9Fwl6gUf3AuqInfpkE6HzzuqMS7pEAzJJo4Sg=;
	h=To:Subject:From:Message-Id:Date; b=c6FVI8kBkNH5PQEznZjfju3Hppkl3N6NumO0stKp3gMY3Zluq7yNR7ox8sOgUPnYAhFRb3J2dLGjJLnYu9tM6oFmploWRqjOb2GoKuJ7fZSrNhgOCsRfuw7IWLfZEOApL0ku6kveHNhWwjmppwfRa5JNYLs8aXjo1L2xsO2A2v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxE9Nxib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxE9Nxib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE3FC4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722128153;
	bh=injljP9Fwl6gUf3AuqInfpkE6HzzuqMS7pEAzJJo4Sg=;
	h=To:Subject:From:Date:From;
	b=OxE9NxibYp0g7vIW4srr+h+ytTyMXpkjrRkerjIE1rBJsw0I8ODgpMhRwAQtW4vws
	 iOm2QJcGSBFTDcIIYFmcih9uqgIS6Zp8P6z3A+msQnvt8riJNaYgJlZt2WOD/9cJ0W
	 kg70Xff1ZrTRuuE7ccaEMZFvPls70UOJyeJOH5l/0XbEwijrLT37GcRirm7R0gBeCE
	 ZLjCktLzPKTp/NYOL5dqTOeY8hjED4G0DJauOPxi8Kx1xl+fit/erqYcz3y/ck28yi
	 BhVwLzcOxYrHycjDO9rYYo1XN8ZBAX07QzPvj5mxwtZylAA1He+pcg080jHOiodu+7
	 7V2TKtzmlRnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4D0C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212815362.23873.358359829544690523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300852eb09d6611863949167b83967c47f5e488a8027714407619411af93be88
Date: Sun, 28 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722128153
