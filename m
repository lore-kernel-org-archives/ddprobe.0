Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB603002DC
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760607595; cv=none; b=DAYqb//BPmsUMnvfX0kQoxs/bi+978I4czZbHgcarCD1EUY6sQY7Ph4PNwZS/9Nq/1HkUCOc2BFKfxUQTWq6iaxUfmPx8LvizzpcP5t5OHd+N1rmfeUmPhCMsVZs5+YB1OtbDLNKYYRThPhTtJDVF7p8xdeoHKf2Ae2xOU+r2Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760607595; c=relaxed/simple;
	bh=UJQYfVKcI/p8+wam9tCJmVMnT1+Sn+ynOzcx/Ngj/qE=;
	h=To:Subject:From:Message-Id:Date; b=rKz/STugRXAu8fZFlfWxYGmw0z/HBDQEABlvYwvZcYOuwfo4TSatmYg/AHPCo1BIRf3Nl5yKRvvkukHICv2tWGph+vs7BrEhAG0/riog4cBPu3tDSXBkhnGT2E/7XHyfmZ/qrN+jLL5XXiidXf83rMaSYicbgyNdgVbFPCtUN5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3Ds7twp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3Ds7twp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760607593;
	bh=UJQYfVKcI/p8+wam9tCJmVMnT1+Sn+ynOzcx/Ngj/qE=;
	h=To:Subject:From:Date:From;
	b=S3Ds7twp8yIMPvu+bDpNrI/24KjzGa7mDRKYsW1Bm3JYdxl4QJnAfuZxLa0D7A8nb
	 hsh/SjGsqse06muwrCbne4ecM2j5n5FIuuy352aie06QyMEWli/odtxVp6Dd1ZT85l
	 viIgv1QefypgxkQ9qbYQCLzJaKfHIld/jCSxLqvlEI3f1N3ydkmPF35rylenuRciRP
	 YBocDcxqG5nuAAYdahYdAQFvINA/Ka3a9JMz+0cs/Us+l0UGntOO3FTjx/ziVKi+EW
	 st//9C9IRDMVRaPM4bDBUOxm5t7fbkOWjzidGF8rAuqgEaOAEOau34U1QwBg4Q7g/n
	 bIFhv0T5QdPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FFCCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060759358.11263.295734549723660608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37565bd4620805f9b2ac912a4e71727833dc235ed00ea086b80c78dc69c1962f
Date: Thu, 16 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760607593
