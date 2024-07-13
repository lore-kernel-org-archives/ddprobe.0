Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDD814006
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720863023; cv=none; b=GyJrlFv7gg7WJVLwTM5G6iYqFJj8GZodHLSvbK/0dzKWvBtiYHr5pLfgdCiX1FSfOS8ohW0e7QYak5KkVTpne8S5kBx7IrvW2YnMo9nWm8ccnexIHnXXLN/YNB9YMXHRLUd2YcU6arNK6y/7oB87AkAY83L/DgGgA9NOGbymA7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720863023; c=relaxed/simple;
	bh=rR+l+aSC0l4yHU0xW38B/K9wMfnES7wUwx9QwZ2ql9U=;
	h=To:Subject:From:Message-Id:Date; b=bigAr5V0P1n4DYvJBUVoNifZKZAIlLCwFrviNWxDCGLPhW79WGrRicgTy1V4eGHWOhF/A8ruJi0Lhe9m8H8QiUZMn6j2d+bK8/hRGIoD6KE3S9PAPt8IGelg1vV4H7vejFLEqQR1DF9a9gs7l+qL8qB0q8DVCSGecIA8lsvXVrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFQfva12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFQfva12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D741CC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720863022;
	bh=rR+l+aSC0l4yHU0xW38B/K9wMfnES7wUwx9QwZ2ql9U=;
	h=To:Subject:From:Date:From;
	b=eFQfva12r990RT3XulUx2+hFNgSxX017s6PfTORXbi+h0lewiSoy3C9vrzVmyjSo5
	 TiuEtJLnzBPf9jb0hhkHnuectDTVgHJkP+Ge3CBNIb1KAKHW/7Aahi3FMLt3u2/eBO
	 fy+CLuOOnlI/VtU6ovoi89ETAiOqI+7BlvjFLXZZA6FyKpsB1Zy9vTSt4+0p3Juv+8
	 MZnHEER12ipMCHtWmPsqUrOZ0oNtzwnakvG1YZ7EPFir3seuUSMNvqYmrLgofJb+LR
	 M2CY7tg6fM8E0dFn3fplY0oTSQEsMJPyNXkfgARli/4RkDfq0g/eHhWj+SY8XfkBFH
	 12+oLa7y6EmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EF7C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086302278.13849.2942834289045713026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df6c0f0ecc561cfc888fc95bd1f5b214ebe270642c4e42e179af91b7d1ef7db
Date: Sat, 13 Jul 2024 09:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720863022
