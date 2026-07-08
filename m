Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B6C46AF08
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783515514; cv=none; b=OxsPU4JzQ/+inAb3vZO3fhC+wBL3rR40/ojzUQU1gl8oxgMPi6TZB7ExWLkdUA6RYMEVNH8UZO8xG1NYS4b8KWtDDKv185YOPllu4qP5JqeEGUrw7u3Ir9OwTWg+NsbquqWYRL7g9iK9ieze70TwcMymHqIX7Ebgi5UzWxjD/CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783515514; c=relaxed/simple;
	bh=KC4w5vvL1fzMcuJ7MB6owIokCMcIYcEhPWori3uG+dw=;
	h=To:Subject:From:Message-Id:Date; b=qQAXJs8Sx04qO2EnA9XQhpX0JgmUe490z8u0ewmapVNB+hpH2Htmwxu/TO6I8wba7iyXIemaJ/0//Zd7Nm3cI2epzLuKwEz1ceKLd3E2ZPffdhbI1uNURP19qXetvB3ZxMkDiIWAcCE7fLmKuorxpc2Ciq8Ec9gIz45yPayCSAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtB3xqbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtB3xqbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50C3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783515513;
	bh=KC4w5vvL1fzMcuJ7MB6owIokCMcIYcEhPWori3uG+dw=;
	h=To:Subject:From:Date:From;
	b=OtB3xqbX9DxuRcD6aZgvOhTBoyZRkmcs2a0ZYwE41Lh8DPt2KTYzseH/Zt1FkHG+V
	 VxJgVbhym3/INOxybfFWxEvkNW0JWd4wZ86y9OB019YAGz/eV3mgpOuQYQ/QGxeaTd
	 qhmixtnZx/+uFtLNlE3rXchUajf4rmdRJCSiS9DSWfhiZY/HtT9PzoQKYC3nNBANkg
	 9BK8+VohVlCFZj78u08KxnmAMbGONS24ekIbDvrIrSUyXECUWXFtR6y14y9RmzkHGr
	 22u6m8yx9Ytvc6nRg/zJwPz4zWTrOn+CPAlP0h02U+0TRI0DnGjur3K5/pLHYQRS7/
	 yoDY3siyvIaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEE9C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351551371.12764.17066639212010806504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f94f88067f14956e1118db3a07a4106f58b68f4a083e663bd218f7ca43222a
Date: Wed, 08 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783515513
