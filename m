Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C3EAC0
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724265954; cv=none; b=WpnJSydMAu/sSo9k25zlKJH7n44UZcw/9q/D9HZjDhysyJ/uAVXUiBD57vWrIdACMlzOQc7RuMPr08EKIwQ8FOIAHSR4pjWEophDXcdT6PlC2/pV7ZW8EQUnyfwZtAyuVcbG+zsyBBBMqVO6hB9j7uve76yT9Ixo3dbfoMECJyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724265954; c=relaxed/simple;
	bh=uyZnCS6Mcf9yVniV6SXkCqnOnMks/YtrzguCRHdnerI=;
	h=To:Subject:From:Message-Id:Date; b=Tp++J/wf7mrAD22XdH/h495iSCxGDu9q6kjVu1zHQawkAVv0BWtNv9Wh0RydUOUlT1hiUSMj4zYURSp+1/Au13xqkVyLEsgm8eO2r/wD9qKwVsoXi38E6f8DyVsPfjeBV6PFsPeyW05dVe6gi5ZL+Ado2xaNVGKBCyPS/+HAL78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9XXCd1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9XXCd1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB750C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724265953;
	bh=uyZnCS6Mcf9yVniV6SXkCqnOnMks/YtrzguCRHdnerI=;
	h=To:Subject:From:Date:From;
	b=h9XXCd1iV/tkUbAl/Fk4+eG/mrbRgDj9Xy4Z6fBj8Q5M8GyFttH0hLLMdcpjKpHc9
	 SmOIf+QK7ZHQL0TcU2CxsN68g4peF3thm5J/O2P4bP+Chd85mUPqYgNfSwjNYcnuzD
	 oPksF4nXmaWswUFbdlIYx9aqpYng42dkSkEWgqmF6vff4jU6LgYXjK3gb6P6+7zKRx
	 kbiduBn2XOtYH1iwNQFbUMlzfKWs+ixN9a3eybdrKs7I1V+CoCyzEKf6FI3kvxg9rc
	 l6IfghuK1mr+zULnz/56gbIDlE2TkuMxFcXnva0SaFnfi0iujVw1o36+bTdwq2hTan
	 NbXhSVLL0VBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD2C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426595361.11300.6477188292411244313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499c4518d204b3b74ca2af080d2d04d9cc947f11bfc8fc9c99d465df22cf1711
Date: Wed, 21 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724265953
