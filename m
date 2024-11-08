Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E037212D35
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731081354; cv=none; b=bk8r/PUTd3YczIIRJCRaFnjoa+ZG1TchF8ggKpv67tfKuJCOx59zv2a2kI8l1SIYqDMuXn/r94dbJz8rRkhG8Scstplp3RCJ0+b66a8NXp3UrVX45DSvxjNho9r7lBGYoZqEt4VLmjoiQFFK3q1v/x69R1KtBLfdtKNTrbUi280=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731081354; c=relaxed/simple;
	bh=WZOUSbAk0MPH6VP0/voOOMSY3bVNgXIXRAgcnoIDLmY=;
	h=To:Subject:From:Message-Id:Date; b=AmSijjpmUDOVpmukF32Bj8pDkUMXLbnuxWYed6SuZVtcWj3BH/zYMy5d08rHC2q2LRsCa0QGdItXyQfIGw0LHRCq5vttAFhq02KXtCyLFDRMbo5gN52Gi9z47b/6qJvNa7BQwpfRxBrdITl/cIwgp9RyClqxuf+tNw4KS53P97g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbBlMsei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbBlMsei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1137C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731081353;
	bh=WZOUSbAk0MPH6VP0/voOOMSY3bVNgXIXRAgcnoIDLmY=;
	h=To:Subject:From:Date:From;
	b=gbBlMseiE+0c04tyMUqAIIzN+cX6EyMPTOh/j5cxzVnrO61J7juB4ncCJXA441KuK
	 jTOKIxJyg6C550tYdUAm4VdO3zvj6L3urzKDrORQlLN9ZVf6JLPhA1yOWz+exQGoOh
	 O2nzIKzeXnESWp75+1rGTm89lk/1sGEGePhcz+T37LXjKFuwjadp9dsb+ybwpdYBgq
	 OSVCcZs3/57SaK2IWldW/igBkaVMjzI9NqVqWyxi2eKXMYGGoNOn4emPQv3Gwdrcxz
	 g0ZtwLfw6Qq6zD840xGm28x/pvuLAD+tb/w7eBuyKAatKBjIFv2Y3DD9ATlmh9lKaR
	 RUMIztMX4hmKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CED5C0F4
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173108135358.25124.2738321549800742581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcea84506eac7eb36629a1120b3f3af8042531de86f0ce2110fd12e761641487
Date: Fri, 08 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731081353
