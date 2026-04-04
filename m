Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C4B2744F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775310334; cv=none; b=o4f8tWtvEhXtkgv6OjKZAC+tOpo+vegDqMkEaduAMeeAxKa0Ao4YdmBR+3BQfUfHt3RfIlUKiuPOQgPNUBTDdHh5Eezr9Eo4IkN6zyv6vuP5GCmXd34tQbY/sj6jog8G5pDvZaTbqs4Ql4NnJYmuuWTason8cjBSN9SSEvwtMvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775310334; c=relaxed/simple;
	bh=sBaOkHfgHoAv3WSQ4q3LP7v0lCMnpZCDpO4zxItKYH0=;
	h=To:Subject:From:Message-Id:Date; b=Cpv2AkA4qNxvsPfQMlbYXlnYHBWk0wgBL/Rw+0VYoD5ewNkvGlTkaqi5TnUXs/0Yb//g91Y3iGLA8Xlw4Ejvm9Ty2PXSwbFwOQTRWgwpIOK1z6dnuElwS9oRuxB4I9zWxG5x9race2nnWI+mOVj4PHsri+UTVqOdXbgS12M7xpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lieu+K81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lieu+K81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC5EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775310333;
	bh=sBaOkHfgHoAv3WSQ4q3LP7v0lCMnpZCDpO4zxItKYH0=;
	h=To:Subject:From:Date:From;
	b=Lieu+K81j75EQIvipJ2DBGqCqT/dK7s1oYontpQuG+v0aVFJrfeOFgripGWSoW5Ct
	 Pxv/QeNUs6GkIyYYBI0e8TgdLOSjki3gWWv9GIgkU4bia6k8cgK+HuhHxN3vig2D6B
	 d5hc5Bi6lm8ZeyObd4tgFD/OEFeCrQKNIjF2ypJkBT6e5edkMTfbVfqhGGoZUsfc0S
	 xnEaTlzIaEj8b7Xk3jc2yzm5yZX06NKLZVot0NW3bWivRXj3tB8BEzCFwrfaxDX+Wy
	 dOPoHS+cYY3EsL/M9SwwqbpqZpml+A9nr9l6MCfG0v8fDySrGH3BdouBraAItlrpeS
	 f0SgjWJybRZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0794E88D89
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531033370.2428.11207123570822960715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7fff4cf92d9078aa31ab8c7a176b1e659a0fdad5b02b55f3d6d61994e3f51c
Date: Sat, 04 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775310333
