Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2142930B50F
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781510194; cv=none; b=h3jfVJDhDa9+zkOTgPyNucICbJ5l9t4tP9u1vkpJcTwAG4a0xGOCRlleWI93AWz//d/dL8OkiNGoqQZ+cHEEThIRzHSq6VlPJn0OHq8oPhU7LVjY+hUv09tykt2s+e1uoDHYFYzM3et16Y4dHs9Xxy5jdjf29ayWuDFOFVaLvlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781510194; c=relaxed/simple;
	bh=fltd2xjNau4/eYU/EHsSt02fWZQaG9dHDIKJG/PiZ9Q=;
	h=To:Subject:From:Message-Id:Date; b=PiyBLUCKCnz5KatgqQIxO+07qa9Gku8vDEqGPFRq44CXBdM/HU7BiEGsyCmkkTU0w+oK/WGoHS1a7iwwu60NZAdbV+Wzel4ZGg6uj2uJUhQ6W3ik9EXKIFqAA7JhRiWZZQAXf0gPr0zDGbKaLxPkYlLxBNmt2ghhq2AjpzgBMpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0DH7oHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0DH7oHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B6CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781510193;
	bh=fltd2xjNau4/eYU/EHsSt02fWZQaG9dHDIKJG/PiZ9Q=;
	h=To:Subject:From:Date:From;
	b=b0DH7oHilc0wJJFjXk64NcofIDpNm5Vbr0bl4P2dqynNSnocy+vSJvHCC+zNQSycr
	 EDqDxHgfY5rVdKmbzxxDZdWegVnyFCpaieSnZWsXIVOaYAqJsbcw5Kw4xnJjX1IA3i
	 71bm2Tcdg8cCXfAKzskrUsSt6ZXYm8HzvUagYeGnu6bwBig9D1pVYJ4RnQE7nHU2xZ
	 jfHcnb2t2z/8FKSr/yVr18yzh1yNnMuYtCHjBGpVQDKQ9u+r8ivwn8BrtHKLdBXf1l
	 DPxj+Q1zd+5zZEwBRUzxtLMnnaJpiSyTbXNi6FoJcb+G3hAZCroD/3VWHPTRIVnY+f
	 OmC18tCM6u4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A26CD98D6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151019373.14236.17353124317952693240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c6a4d73e0a67de9ebd0a3bb0dfdd5ed6bf22e2808811aee50da8bc14e09328
Date: Mon, 15 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781510193
