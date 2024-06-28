Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7533A249F5
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719552863; cv=none; b=BdBp6pFFpwGjBEEpnfoYwygW4oHtOTRqgUsJUBSh012LMQnbykq52ufJhwZY10IoKZJv9xlEuewQZ3IBVsMf9FvfLTH4DktMhW53Vww7OMIh5HVpr05QwZVH07xzpC5zbPPfbHf/NEPxOYiwgTi8ojP20ve36+xo+DHLftPAR4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719552863; c=relaxed/simple;
	bh=l2/CrS8UmrRH1Ugt9piCKenkvx3RMsSPZl84Dpcug+8=;
	h=To:Subject:From:Message-Id:Date; b=V4EdPbvfVHm4SzvPRuh7dSlguQ9i5LXLq5elerMY7ISHPFfoMOooiscefx2I7DfpKKpN+6igrxa3UZcneewHkgDnvYM+Oj9uEj1MoZ5//+EpzCJgcL0oKaaz1R4CAGHWtqOSdu495RN0IFbVHgaQuTClnVMv8HKu3zod4kCwaCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IACdmvRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IACdmvRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ABC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719552862;
	bh=l2/CrS8UmrRH1Ugt9piCKenkvx3RMsSPZl84Dpcug+8=;
	h=To:Subject:From:Date:From;
	b=IACdmvRdwbU4hf0nF9/OEEj5fUfbpVoQKDNmw1yDCOrpArXme93dB46Jq6283n6P+
	 bZuRMP9Vzpas0Seh7kRELwIPZqhaF1Bn1LL9h5TKVQCmPGAuIGRLseqFHxcfZn/sAB
	 SEUd0V5AfrqJRDxyEd9J0PW1k2oNgflTDBnt5cWt87yJ4/VLLnVeaeopFK9/YV07n4
	 dA5QmaX/zyEB13+plm7OFK9dbK8oENFyflehdL4wSeyrmO4epC6mvLvO32D8l8VuJO
	 O/uMtzB5X4Ktfu8arIIb/a7hwNDmVBABsobj5q0lXU/eLhVzJitioVE1yStHCTIyBj
	 4tNTUewMKyGog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE272C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955286276.6051.2361228345049117752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b7a32f0a4e14fc136bfea968473db89230a72707c2f9b13448fc5caf826117
Date: Fri, 28 Jun 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719552862
