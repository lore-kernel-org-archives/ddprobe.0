Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EAE274FDF
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765466574; cv=none; b=vFgyjCyYprmYnJ3aD1klI7Iyx3gtlkuOUQKdwb1ID7M047bPNjphjUztnXDfOn7MjbeFFoE7INIaMosSCEqZ1DsYKVC9C4d/Yg1bOruleCgguA/2PreiRjkqW2rqo1yElpLxTN9hmYOoPnHR/NjAWPZMt0BW2R+MPIL4DiqgqiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765466574; c=relaxed/simple;
	bh=qjbEwXlcmUmWIFWHTl2po95Btm+ELcZOj07rvUyIm54=;
	h=To:Subject:From:Message-Id:Date; b=pgojOxMGkgjJVrFKcZMAClMnO2JFnAAnTjZGXvD9539OCzjlZgzlyBu4D9XjdzbHz/vpJTFrto2u4MDy0/hpqydS30rZVTheDsv8lTXN9nBAg9ozxML2fPwKr5+nBXSoPi5ynlLJfrfDJZCBxSvFyx9GAUsrdXWyvyXRUZ7JXyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrsZS47K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrsZS47K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765466573;
	bh=qjbEwXlcmUmWIFWHTl2po95Btm+ELcZOj07rvUyIm54=;
	h=To:Subject:From:Date:From;
	b=BrsZS47KVIEn8Jr5eBvIOsLp93abaUnd+1nXdZHWzfY7pJ4fopF8f8jfpXObNiwWD
	 C0bTxP7gNMXEDkV2FcdpHIHy7T+NizzJOe+b84fXoeLc4qftGKiU7mYu/6BGz+JPa/
	 DvvALFLuy7LpiY4hThnFnghWmEMIrhcQ5V6X1S5uR2M4eLg0Dup0pOMR8c3uvWPA8D
	 2HqRohF08u1JwIlmDRj7/b8J5//szs3dSIq5amCFLBL+1lEB/hVOpvuPwgkIVURYyn
	 rpkfzryFUy3wtf0pUIAxvPUCdz4qLS8UJfbC7JIfvCsMeaFd5moTZtE0Iya4rpy5f/
	 yB0CDd8ve7Bwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FFD41D57
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546657360.11941.15271747476050553509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0a9968162c3f4d692135a6ff4002164ed31a73da2635a5416beb8a11c800a3
Date: Thu, 11 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765466573
