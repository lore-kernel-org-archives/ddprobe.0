Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F5125B2
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765666974; cv=none; b=tlvjT3cszgjzv9sCZRLCK90BAp1n6YeNn2MGpyUdxYWPsGy43zQEapGxgzwzO1QnKBs2ZsRf95j5/+SkJNmwdAUV9cHVqrhEok8KaWzJfD56NfmIQYiO6DNdXwBiWlNpO6jFVKiEqLTjchYWf/JzdxRI2oOp8ASEi5aOcPKQ58E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765666974; c=relaxed/simple;
	bh=OeDunI3V+IpcvfvNKrn68fxATOOKiCwkyH+JIMJinR4=;
	h=To:Subject:From:Message-Id:Date; b=RSCx/ZLZHnpJxvD/ZgGMc7a+dLQzoe0uE+Ru7DKUzdosZIl+nrrefVUJGN4FLkqBpsCFDYCBY+8UP97Ekp7knfjpVjYaERnB94yzt946eX2G9McMeBXcarjnoD4wNDtTVgQpoZygbwANkvJVhnLH5+nvSxWrqsXL7eQ0dZ3too0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUSGHm8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUSGHm8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765666973;
	bh=OeDunI3V+IpcvfvNKrn68fxATOOKiCwkyH+JIMJinR4=;
	h=To:Subject:From:Date:From;
	b=AUSGHm8yGM65SPhZ0gVP8svIAPIP3zpSNEv9hh4eL1ulc2iGJDqSc1c66COHRP/XK
	 p1EVp5vQwKFAVa90qeFoPCMctIqaHwoSuZXXl/59/DupSvDDP980kr0igON/hxEOOp
	 x4ogJJGJOMAx1MPQEbiY724osZIceRkx8VrLcpqrvCe06Fpl8ISqc+rXaXR23PNe3i
	 FPCXaEtbvYi++FECkq0hA9tz9VjNkcbQQcqWEB4pQx4wNeolG2qDvtj9l+0fuW6Iy+
	 hheLVf88hdMcgfSVMCxgUOA8VNKOI9f8cKAMj9/COC9A92ZzYsVj5bfdbqdpMq3Q/K
	 weidjdK8GhK2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976AED5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566697358.28989.1686911736369426781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f823235479482a3e35c920e1b3a666262eef3dad641f959f6830dfc6664310
Date: Sat, 13 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765666973
