Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492B7629
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737594954; cv=none; b=UCZpPZ+1wE2bQ5L79ATY7dOTsMr50yPLiJjH8Pbzc6hcI/XV8QQ81oS8UnY5tcoV5/SpGz0+nqLk1stfbVcTZAedkohFyKEw0J5gLLzX6kUDn+C5t4mfMn0GCU7kFxWhZ8gw+MPM2moUnrEdX1mTa8xGx/p1nQmM0/ATXo/3tBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737594954; c=relaxed/simple;
	bh=qPuAj/Clj+CHgDXIMPU08hpbYWAf4V6814tKVqKL6yI=;
	h=To:Subject:From:Message-Id:Date; b=C2MI6egaYNMHgdTNZ4u6K18lRcMP0rhEtuExLxJgmg0LlrIw72l+bCRu6Vs5HHT/edxc3KxMjF+6RiS8VDQt+KkUOfHQugGdRE6Y+U9dU6Ns4tMXaRHtnL5kem17QTeHRhlAUt2n9kGS4VbieEgOl7o0tBWMmXJilUbOkg58/t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxi9bazD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxi9bazD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCAC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737594953;
	bh=qPuAj/Clj+CHgDXIMPU08hpbYWAf4V6814tKVqKL6yI=;
	h=To:Subject:From:Date:From;
	b=pxi9bazDirUtvEjnxyoDGMOW6v4TOmOhKpd35BgLIr0YtQB9URHvmbk+ugVylRlT2
	 pYHsreVNJS6eJ29PNYb5QgStxzyKes3b8loOIVcZhj8xNoZJLgLeGLAMG/X40P4ZMc
	 Js9RCikdATy32W+6z/sqfClG/ly60mcvaw1jdDg1NctpvssW2uIVxXBVUU89MG8JcK
	 xvKQaidD88BWa/eeiCp01K5JoJfVwqNLK15k+JV4V+aD/V/cxpXQ3R/QvFy7zKNUur
	 vOOrmD1jDiImoGHyn0ebt4ZjxUeZIHYUM2YN/wbVw1BHx58T+re4bgmf3FIVi7qvew
	 yO0gozMjwsdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90846C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759495358.12290.1079787237405152035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ade2e0b0d51d37b7abb5e39b654e6cfb9a247fdfb9e57c4038c6190be8b06b5
Date: Thu, 23 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737594953
