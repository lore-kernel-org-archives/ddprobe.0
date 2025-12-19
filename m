Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC2222DFA5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155434; cv=none; b=owntzINVcwki3joyIZXNUo6C4W45RtYeml92b2c/MyF3d66hXN80Bbic3exjNslZu0ES9kiWeOLbXISt8NhuN/ySFNP1UtbN875uYXu7bFNzygkwmE2l4WUq9HMK+Smx9wuMPzdjrqmSqfb3VP0lTDco4o3nNBoml4Rp/92+/wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155434; c=relaxed/simple;
	bh=cOMmg4gr+13NZL7D20E+lHqTLPaP0oFAhJaLZ+i0jnk=;
	h=To:Subject:From:Message-Id:Date; b=XsbzQD5Roq+IIYLb0ZHrubCPikNE01uQ36/D8DxVShJ1pNILCa4dYAAr12wr29Wt7RCQfvrZPCrnlE0utVWP5OwfQa1FiChOP1xBzmUyCR32Pjhipkt10fDKumrgAwMa4xzMGp1MiD7hcvju7OjYF4RkPGOjrhkP32FEup2F/d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpTuWIL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpTuWIL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D202C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766155433;
	bh=cOMmg4gr+13NZL7D20E+lHqTLPaP0oFAhJaLZ+i0jnk=;
	h=To:Subject:From:Date:From;
	b=mpTuWIL5F7iKHre1qLTBYCkmxv1B/+cC/VVJthiOuuer1l8NWHRLCom1MOzINybdl
	 +bnfi0jUeRdXRTG0ElpNLmKnA5tIWZ86/YCtDo3bSuKj1MdX4+UEnqveXaddCFXFwX
	 ae3eECM/mOLg+eKN4UQ8Nobl3shyz286BvBMTZrNRHn03meDjYl+FLCbTkBVIDRaL4
	 KbuD4qETeAmv8rCMmtXkr84h78EGZ1wxHVeD3JeUogRONxNOeAj2mKIx+Sashnuwuj
	 5wX4KpzcvZzkMHuAkJz/zP4wBeZmc2Wzbpimsc/qiVo31eI8RsFCOQMa2cr3h8OqIM
	 5l9rJgPJYJ1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F638D78783
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615543357.24603.14832768498358265754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fcdde8d749aff64fd69423450b13115c92bcbe5d59a5a029a1479f5c7501a1
Date: Fri, 19 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766155433
