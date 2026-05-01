Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4413BED6E
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777643854; cv=none; b=UkxRtISsVMlCdg8TZ5BK4Solej219lRylZl7Z97GZErxvIk+tVAtu/npDtJuj/tiPoMBzXz4sSFLexYG/yYVmImF6dEuHDk/ICDiiQt0Rr16jVZw2axGlo2oC5MW3GF0uo0dywJNMHFgXRm14YaZyIlIsxo/2+S63tUvS3LDApo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777643854; c=relaxed/simple;
	bh=LVazXdIqxjsekQUZW++Ji8gseYWR4CsI77PyrP88orM=;
	h=To:Subject:From:Message-Id:Date; b=bd2YnqCZAzxz8Y++WNkaYp9RjotXu5o3gVQAbHITlMQ7ARrbAA76RlkoEnn9sLQoRh6NMPE//VfAhrOi6vkbNeQ5RjM6ftR2RbnbVXFMJuR7n/ziR2W8qddq3952dVvgWfLtLk+F33/Bf5RZ072wdpLF24EjPyqLzm/hOt/3y9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teLRbAQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teLRbAQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD991C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777643853;
	bh=LVazXdIqxjsekQUZW++Ji8gseYWR4CsI77PyrP88orM=;
	h=To:Subject:From:Date:From;
	b=teLRbAQVCy8EVz7+pAivW2y5kJswitK83r1vNeFGqM0Ayn37JpZ7F0VAG9LAd28Ko
	 i6/LfcqkhzCThsae4gG1Sgc4CdL+YnE/V0NFIB5VQw3a0rMYt0RC1BMgsH1enfLiWT
	 IK7sp29XIyhr1Fi31WvHITQOGXbAMrgcZxdiZxRAEMat1Hm/Cr0yc2LCMPmu59yfbm
	 rIcuXFfk2Ot8hxveXbx6rIAG4CKHPWWes2S9j2RlkRXv4fJFuNfDGDZRj+VG8KRSbU
	 2RZ7QtqepE4CgJrsMLQ8XQZvAP7ZGzuzYQJ4YlqUODmd1RYPN6w78hPuYj2iBdN10P
	 BxngbcJE2LO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE88BCD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764385370.25632.8458892137403052329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29c8c3e30ca929fba16d2ced15209c40e05b65971a8571961519331e41fdecf
Date: Fri, 01 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777643853
