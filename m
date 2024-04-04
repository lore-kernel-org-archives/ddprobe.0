Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D6D15EA6
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712256497; cv=none; b=ozLFs09uSI2kH5gu/D419buaxftN05KE0XRIRhr0MAZQL4VyCp+qhJ66aEAQ+pOBBKeAHWiEqIfoxvICdmsXyJNKcbiI8u9UoSUt2zTPGxKXRqFKNTMpABUOC8LoFUUV7/qSqHmbgj6Eha/Wo0mWJig/WMVzMaWDaqg0lzRXtM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712256497; c=relaxed/simple;
	bh=2NRlwVIOyT7sMnA1scH9v4+rEgH4fhIVjoDO5VTeAfU=;
	h=To:Subject:From:Message-Id:Date; b=ODxFjLCq3X5UbSULjKCxuUllKUcE6SHCerTT+c6tHifjpnDFYXVjYZcELD+gfS773HH+dhVkwpHeTIq/xkIofe+kRnneuN+mdO3OtsaIT93TbRYOsMz9kfRV3dANaPBHQqLzFhzeoEx7yiuNGImxhWpIznTdEOr+cLgKusANslo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3Ry09DM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3Ry09DM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B6CC433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712256496;
	bh=2NRlwVIOyT7sMnA1scH9v4+rEgH4fhIVjoDO5VTeAfU=;
	h=To:Subject:From:Date:From;
	b=Z3Ry09DMVVf063rRLo4Fm6ufO5RzXgbCGaKrWWUbQ4CnG1+kLQ2Vyuw+3McD6Olhi
	 feyhfl8gsg1x/5rQA3TzAK+VsR7Hw1ISptjuk4v5DM/Jkk1VcObmGZgTVUxUJVanN5
	 r2TvDT/1wCwB5t5N5b6twsdrHBVkriWBSxlpzVBdi+JNt6brX35kV65OPTK5oz42/w
	 bHQBnLAZ1i48/sXrbkFL55gvlC3KJZDnknpTMp6HFlqEaDziuufrQKpwsrAzA0ES6k
	 EdChBmfZdR5pl0qAGq3foI8mF1b/TFX0x5I4RIb6Dv3NZYSFyfi70TOBm8+JUPsm3M
	 DTLLlE+hfixiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D35CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171225649641.19475.5172479187390024897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ee692c52f44b36e10ad3127877d9f34ca70aa2090771a16d0de6b0a0cc3d22
Date: Thu, 04 Apr 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712256496
