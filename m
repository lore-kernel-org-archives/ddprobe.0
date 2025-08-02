Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6151DFCE
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754145594; cv=none; b=KJPwTRU8OLPbDdEcuM4HClssSllsrNcM2WE1CiJ6DG04qNSaC8KutWIzylfXi4UD5sTtLwaYYDT/6nQSMAwWwOu9jyE73/1j6BgtAbZwHnbWvdtziVwyZUbQyS4CvcJHYo3CBYgjZTBPTpFDQcOWGbeYmWMgaYID4f/rZoBqqRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754145594; c=relaxed/simple;
	bh=x4zySYnE2lq4VuuizxlWyoO5ZVaHnLzKOCH5JWmPfl8=;
	h=To:Subject:From:Message-Id:Date; b=Bf0w6aanljYWsW+8MkOnBkGRCU+NxXlTG3BkCmry29AXN89Bz+ON8CbASly84G7qFSI0rtA4up2pl9GFUsDTkBPztuxWNChVAyT2v3H+a/P6vDA4F4LHSGEPzbRuFu4ce2U6EKL//ETgo75C0xU5XNIayDjk1kbAnBlAnudzhAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu6ofyZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu6ofyZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ADC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754145593;
	bh=x4zySYnE2lq4VuuizxlWyoO5ZVaHnLzKOCH5JWmPfl8=;
	h=To:Subject:From:Date:From;
	b=Bu6ofyZ2fb4uHb8SKVN/6tSDz5YL64LrGCO8rT1g4CaQvJGt/U5cXcFVzjU4phApF
	 Nb9b/pSPjL2rRhNFZRwTf52vxAZSuwrHAyBe7N7SOandja3wiLHr4RhNhj7PnClrVX
	 grCw5K3i7rS8oMyBQ5KiZ10pZU76cjwu83e1ZTvN9MAhIQck0BnDj4Nne62laAR17c
	 MA+ccMWoa9TvOQHzJck82V2qJ5CieshZq/LFkanCQYAArzmsKGWshMxYjTBvlWRXRa
	 y0oxwzlfG4bikPDdZLnQtrT0N5JQ8VnaFGMgYdKUNMY7W0e8lu8izH1vd+XJdwAPMa
	 fz41PMTfuq/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D60C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414559357.32355.14473946719620705198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0ac2c4c6ecf2b19285db3dfccb06cdd477ca2b496e61c327e425ff39df3423
Date: Sat, 02 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754145593
