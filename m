Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BEB318EC5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784358514; cv=none; b=GhtT89yBV3lCrBZFtuW7BtcJ/r8WJGup7G9McfLPey8uwC/3/jGo1sP/We3feokc0jO89ieRsznA5ZP2l6bNTJyiMs5eaO+LBeXU/mvCyYq7bz7AGuVIB0dmgrMPpTqysREZ5wy5/1ze7uh/q/+ePuaapArWWtA/O8NuI1+060A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784358514; c=relaxed/simple;
	bh=lX4YEdQP6BrneP5F615P8CoJUwMWyOATIaS8LHGTrw4=;
	h=To:Subject:From:Message-Id:Date; b=Fd8DvdPRU8jkUELhYpji3mNGmhJnLWLTNM9Jc5654h0giqfqq6xccRZWABY65XfhuZBqW7kGAWmw3debSCebAbvuCm2h5HqXMUlap12MnZZPQoE7G0OL7u3YforA7s1XKpxLhHHpwC7ITKs9aUQNCfFwo71U0kLIFl2NlY4kJ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bgajuu5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bgajuu5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B3C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784358513;
	bh=lX4YEdQP6BrneP5F615P8CoJUwMWyOATIaS8LHGTrw4=;
	h=To:Subject:From:Date:From;
	b=Bgajuu5SMi/B4Spn5DRKrhaJUmYUNrHKrHYv2WwnuTc42fkOBwb4D/Z1XPBEE/9po
	 oII6/9vueJRADPYYxLb/aCdVUnKn3S/aerUCuUIchJbj6+6IdehxVFaPisPCGCMTAa
	 OR+Q5bCucEc8UMeaRbJ9H56yiu9c19QTyZrNaD5ONMRBjq7ezSEeTVcH7+Dw75H2C+
	 nI4eVNlpX2yeaLkIaNpxA9ZHQgyePWfJ2ISbxmOjhQNTDiU0s3h0v+rkhJ5klDsXQW
	 Rg1CTXhTc6cBEqoQRKOLb4G5jLmSt2FG0P7ozHrlhkgIDlIpfePRdv5VvBOLYfPB4m
	 5miFIDJCafS5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8303C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435851368.15843.2255583838524452499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5bd3545c9bdfe474ebc3a4d7785357ed178246eae837b769e72976d987c030
Date: Sat, 18 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784358513
