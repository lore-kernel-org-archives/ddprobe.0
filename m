Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306CC47F46
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723274754; cv=none; b=As8zJlmLmWk4DonE8aVvzpU+MRbtQoIvLShgu9eesKeGgeyelEIUoVaxcjzaHLk8n2R+snAnc2qRM92+oKQG5dmld9s104vsBzOT04c9Rq0S59vuhDxnjL60+gtg1gCgxAR5gDSCSogga7Zm2C7to8vq7gmIHifNKLMV0mpxiOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723274754; c=relaxed/simple;
	bh=uKwGNKNZvzQQTgRqMU8fPH8e7WFv5+iw/d7QMdBYGEE=;
	h=To:Subject:From:Message-Id:Date; b=N8xiBVTdAU9w8DQrKRlGxtyOqrXfXMHunapHIE2LAIvLWTXeXQ8k9v8TYgtUvoGVVQwYw3iQnLdqPymHSVDXPmq0Z42LmQOruwhjvhEOiglQ1wnru0gzxfE5m9+xZ4rIx7jXi9FjUlEo4falblThTCsOYQrAuMsWV1/JX50X9O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myePQgy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myePQgy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EC2C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723274753;
	bh=uKwGNKNZvzQQTgRqMU8fPH8e7WFv5+iw/d7QMdBYGEE=;
	h=To:Subject:From:Date:From;
	b=myePQgy5yhYWz53Th6E4lyel9sfcAeyUu1HXcniGZIEDUHlimLhj8WYHgl4VVw9Fr
	 mtQB1SFgTnUOBAYbw5qa6FZCuB9x52TXxBUJGo1LmBYJT+HENlo7d/8q+0dgvrnPoM
	 IwvTkSLx9Se6uJPCo05wmKgW+EKSNLdCT3wYEJTOxDXLWavGOXjsTKoy0EueWDANke
	 SHDI6Eom86s0HR6AA5KHZ1bBY/xlWoutnkjmBPr6Qa0AmXLC5KQsPZSNPufxR6rW+h
	 hjCD7CzeAtCiYFY0VL0x33KSh20+5Vhx/FRJh8fcBBxqaG2P3mGufQVI/yOTbQCzag
	 0jtUBRk4KG0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFC1C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327475360.30066.13754916920521280640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8c179683469e2a933ec393d15539be1f756abab5bb9666f51267e248be0be0
Date: Sat, 10 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723274753
