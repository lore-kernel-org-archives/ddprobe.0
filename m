Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C952EC0AD
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762698594; cv=none; b=APYyMS65tZcW/jUHZSF4Xnibp2ZeiCadaw07HnYjGLLXfZgrVJVLUW+CeUsgwNgaFz45wvzxt6R3pb228RuVXo3iCSpma96AFwbQRr+Oa5gOnL4QWJEm0wjv3jhFOfdWWhYXNWky3W3h4Ajh46SIDxvuY233HAfsp17LcHucclE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762698594; c=relaxed/simple;
	bh=vHDNE27E5pFDJt4evcWYMVboF4JpwH/YhqxDzZ+8XUI=;
	h=To:Subject:From:Message-Id:Date; b=S79qWZOF3440vslobdgRE72mfMRMAprUti5r928AORiwiGCCTByFWybMQ/64YnJ7wy394Q3FFy/JfVmhXemVwlWq7wJX6N7o0pPPdYZT208peaVMtDRzvX+vDq0ScMUPxiYoXZr2uNxtU43EqYGbKl8zREJQblHg/kt2ubxhnHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMSKFoWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMSKFoWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A096FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762698593;
	bh=vHDNE27E5pFDJt4evcWYMVboF4JpwH/YhqxDzZ+8XUI=;
	h=To:Subject:From:Date:From;
	b=fMSKFoWvfP272ZIWJoK57bxS/LP+xPb6Eed8jweLXe1QMNYsilFgWi0+iTFP4drhN
	 bbpFwrOZ6H9hfK5Jn6606Hi2WlVWgEO+QPP8hX9rEqUutKvkZBHqFRO0LRALR2hnTP
	 CIMPfuvvlUgt5CpbR3/2bnhsd09hGfk9FpY+4K95IQthVEgApK4uccYJRYLLEdd5KL
	 bgVvic9La4KvPPREjGcuQaG+uCBRri+cmuVxNAcBx+Spp2TBGRUIyX5GPVSTJVFF+e
	 jnbWs/F724zRhuzKhb6+Lixtx1WExwdSKzo4Y8I/R1tSAgZJBZRintCW4DTUemgFZL
	 6VMMhoqlSjLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F6CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269859357.19271.15404113334582336387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f2ea3783283b3dc8fcc6be133de693bae51f2645ac9a7078e1c8ac05591c12
Date: Sun, 09 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762698593
