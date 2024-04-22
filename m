Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651A34CE05
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 07:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713772223; cv=none; b=psoS9QPYAHKUn9FBRZyoc+7AVlyph3XdJCYEKuoxGjN56inACCHgIXN7yReJUyrKQciG9NBvjlcvabro3+qdxuihxxxF+M8hmILI8vfdlo0Z6cKAe1SxdcIOOPoIKgacDWfM72nf8KZ6+YU+bsJtVGIVqWcUQadn1g6PPjvLKaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713772223; c=relaxed/simple;
	bh=upyKyVtqCwLlf9MJFCpxbHVZpvA7u1g9eM0mR18A194=;
	h=To:Subject:From:Message-Id:Date; b=fRDo0aWF7lUVsjrel+yfzetSLuIGh3o1OwJ0k3xvOpCjnkF/LjG24YDvGKDogAUcCfEDTV1Mg6qMImZgsdzw5vMpAcdxkE+IAjmwFRzm7gy0AA0wzthHjs4YHmnioEJ++xRRiCQYPyNyUDTmqMLfG0kmGiS6XMG9Uq4w4b44ktU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU3QNvLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU3QNvLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD132C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713772222;
	bh=upyKyVtqCwLlf9MJFCpxbHVZpvA7u1g9eM0mR18A194=;
	h=To:Subject:From:Date:From;
	b=ZU3QNvLQcptWmMV8EXWCkEfFLaORs8CHFblikyMl8ea4fq+bOEgSUfLUmQhrgywcV
	 xQInK0lQJ3PXkSzaoaRJ56OAy/3An12HioOcwz858dmwmqrB+sPv03Qv4KUCwJgdYO
	 YdRFnc3TZFIITiT6fIadQcA3/cZKFpR9RXn23N5IiSk7CVVFgkY6GwJwblHq4Nq+oo
	 fvq3nPR3Dyllm9L917AamOS25+mnjHx8y9IB6Fm0yB68JpZHMuust7OcUMlp2NKT10
	 YNGnUR+sjUkMwsCOSoUAxWGmszquoZLl2koro8cXG51qQt1oaWTH/O9uUQWe9ZJQ5M
	 TQjhs/dEqiqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8643C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 07:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377222280.1830.4130254125922347206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeadd60e193282279af5d69764361b108704c37fa32a9020b6649636a0a716e
Date: Mon, 22 Apr 2024 07:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713772222
