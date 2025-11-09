Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8621F03C5
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762702194; cv=none; b=YN39fWs41SrMOW8MyVgGFCBMKFU4yqCbXOTs3P+dAJI7JNiiiu1O7tCF+hjepVwWgp6k/gZPN0i8jmJ61eXbrx1vu1WC207dfLrzGu/NDPMKizj2RL8jzoPY/kFh2NyFHp4G7DZtvDKetHUSfg65sCgAICJyENxBcVL75+ZjZ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762702194; c=relaxed/simple;
	bh=708uQqyEjJoZSqJhDZuyKStxvZXYM/SpeZgDIgVxvok=;
	h=To:Subject:From:Message-Id:Date; b=H1rztENwvOpPoyF2KBPKP5plNrLmevomhx+ueejclCyrAgH1648CfBvwX/TA9LO1gMwa2GY8j8v2DN7FmTcNFLXvFMlwXYTQf+HXPC90NqqSytq9ST38lvC9ijRB3jeM/85wYCMYO8tDsNgOOSSGlOxqRWmV4so7fO99z8JEZM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA3l41wJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA3l41wJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE2AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762702193;
	bh=708uQqyEjJoZSqJhDZuyKStxvZXYM/SpeZgDIgVxvok=;
	h=To:Subject:From:Date:From;
	b=nA3l41wJl2XiyN6Z4JKpak/UI8y/Crg7X5EsIksVr7n9PZR9jD0Fo44hxwINhZqCI
	 JSL8xP/u2Q0utx6hK6f7Cj7sCs7fbzJvt+3unNff7WOBnVYn9WBVnv6+/vYeatMOKW
	 uvlk0ENCpDzNWE/QSTSSRJpahlZcji2ze4v9SqL3c6kp1wcWbWzNlX3+9Ed85EADlL
	 aIRMqKetbQqRZedL4PyrjddNj4PFj01QWn4zCN05uJZAnjpARBcjgkZmeuCk2SVepE
	 gNIhZw1bEAXuWmxrbYKSC6vIz8/hCG0Com328qSvN27KrzbzMesUO9FyDIv3kuJqik
	 H61SkOwmXrg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB4CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270219358.652.17484982796341994742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8d75ff7030a9efc69279adaa8becf0f8161c9c88007620bd71fe38c446fae4
Date: Sun, 09 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762702193
