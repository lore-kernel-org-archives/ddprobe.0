Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329AA19D074
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760909394; cv=none; b=mjGYcFtuhH99GEwQT/9/wnrn2yINDPIAMALkvj+fzykGtobt6uBUE6Tp/wzJWoG/bo8iUSPeCC0MxP/5OerCdlmUvq+2JpWmoLAoo0rYwAMoVutU6qVnsbnReewg6tcwAHY0GsX4zGKx8CNNa+zrPBiHWa8cUauzNJerxkMhn0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760909394; c=relaxed/simple;
	bh=tfu+iA5CUSnoe0Agqy17W3/rcYYJ6V47EAF52+SAnDI=;
	h=To:Subject:From:Message-Id:Date; b=VGBguGaw3MDjlsFbcZu7HfTX8ow9UCffBPZni1udt7zBhfp+JMOZNIGQ1xs5BQS43zJkN1UvBsR0vILaOwHAFAS5gy3xy4MyBB2ZbA/ptpphWWm1SNHqjwJgT9yWxW2PJrO9ohR1K21bKXR5EUX/Pl8TQ0Q2TwqQRuOyPXatrdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJmh7lto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJmh7lto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D769C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760909393;
	bh=tfu+iA5CUSnoe0Agqy17W3/rcYYJ6V47EAF52+SAnDI=;
	h=To:Subject:From:Date:From;
	b=mJmh7ltozOKTYzXdle8KCadf3aX1oq+hKZcYMdLrGSQKwZZl60y4mekEhKDLMRbAi
	 Uau4Kjzc5EmphqMcqIBeT/NaqfymCMywi1kxuOj1FRko5t3HStFs8EphmQGudu41yA
	 FIYC1XLLIORtZ/2ifHKM+peZd/LollP1K0P2NFLoamCUsE6cvqsoFomLDXdAZYosR7
	 08mQUOtTIhzoKrIR3lEdjHz+95UgT/GBXZmMqkdS/YIcdWteO7LLkthCN7OXtw9xCf
	 oOpVI2UJ02wfyLnOlCU/c7s1oDrGDqMU8mi6O7WkviBTYfQVDoJC+GbsvDsjHysRLl
	 9qT1XC/N4X8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E353CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090939357.23730.1977308636945113733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac87772318d42109d5f3ca96850c73cd5afa995e67f363f4736b33aeb54159e
Date: Sun, 19 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760909393
