Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE8A32F749
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601594; cv=none; b=ZmukGg8aGsC8i1uoquVCFj46jPcT610+bqWNPIlk2DS7loV4i1YpKNPZ2mcnb+DfFrrOg7EmI5zzvP2cXLH1d0apMjVAyUCmlu/ukOgF4Po/QuDWd76KVhzhI10yl12YlAMCmXOOoxyLc96Wr2xFYouyoe58Cw8qRLyLUHOlBic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601594; c=relaxed/simple;
	bh=I9Y3vv32k+eX+dAC1FHmZ1Q1Ern1uprBGsYxnnipChs=;
	h=To:Subject:From:Message-Id:Date; b=qRlthSTAJAgBa3V2bQpVrF4TtTb7/H3rtWnHdYkhT3SpiwlwlvUxob+NoLrmQA1JJ0Hvyqzkt2PL4mbIYKgza3y55nJh1YQ0uIgRK096oORekz8/I9B7uQ/BpEPFq0zz5I2Lg1ARPVAUBlYys/CigjmztzWSWJg3BeBhJnkGMUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEMCZ0m4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEMCZ0m4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B6C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757601593;
	bh=I9Y3vv32k+eX+dAC1FHmZ1Q1Ern1uprBGsYxnnipChs=;
	h=To:Subject:From:Date:From;
	b=tEMCZ0m4QogcRW5ZzxDgHp1aQCqhC5S82EwHuyttSlXzhy9czuT+5DYdJh6d5LLzl
	 rXMBaEyxGYKmT+Q7U3OmFryLmFlPD8z98YCcrY0FwkIN/vGrT/7BlEDs+TTMF9tpBc
	 W6wcgARRDBJPuLoSysFGCB7lHghkCWMPJ9XkK0zjeMRoGr0qmjy3YWYTceTRN9nCHk
	 ZuJL9gPy8dShA43HRqAkPj2liVp1728bunagL+BvopddWj7mb4/wXoG8T3UlZnvYPW
	 80QzEiqVIw9Hd4Hal9jJQNGm0hiOVui5ZP9yxyDX/VWWKkbNBVTe6TPVPB9BpU61Vi
	 f4aFLTTsuncFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F4CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760159358.7920.1622880262440065507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a13fe908ad93fd1b8d7e57a339cd4dae308407e3ee9c4d480ce3204670a264
Date: Thu, 11 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757601593
