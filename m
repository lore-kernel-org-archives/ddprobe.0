Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670FF2D3225
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792195234; cv=none; b=WdNn7ytnR+XQIZaOYq+BozQtWMsrPtu3eWagw1pw0FmUDh4YMG3gKWSJIQDP55TsAobxm0cUQhvm4IklNX92cK07JQD+MNF/0qWbpvEGoPmg4Rh93prGCU6Bh9rLBJ1NlcDH8j/CkZk0Q7JB852j9JFws3cDYhMnKaPFIfbjbMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792195234; c=relaxed/simple;
	bh=BiLyHugASQqKFbZ68gyxhjqeqk4NWEg5/Lvh/felPik=;
	h=To:Subject:From:Message-Id:Date; b=VAy8Zm5fFu6b3aZieUod6mCweYFWFrGID8YCn7MnqZbAu3BASzRmeoQA7Ln7QvrvtRRtXsIwZGMXvboXOSQ3qY05GGEhW8qwQbA6rZLlT4ta6pE0ZtffZUUuY7ncj8elwjPmcO0vWrZKM61LDK+naigOCqDE2AmnkN1Lknf1WCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfqBM9AO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfqBM9AO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E163AC2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792195233;
	bh=BiLyHugASQqKFbZ68gyxhjqeqk4NWEg5/Lvh/felPik=;
	h=To:Subject:From:Date:From;
	b=OfqBM9AO80MMMhZj2j7z0Nri55snnuup05CqdHqqoJrih3olQextK4qG6GSXhbWTc
	 G0hvsnUrHc9RFeR1N2k/IKQyoh4hWfioMmx0igF0jsjxjjUx1gBPaKF9aepzNFP15q
	 ldUUyzHgNpcd540EA9IUM3tTTqjXL94MtL8pvaC/VmxFmKORlOFPMwAmhjLV7ZUaMs
	 epzbG6uVA7j9DdEqel4XgmR636YUSAedL+nnfVcNXC8VmQeo1Dl5THVwFm0TKMtS3w
	 BxNp+UjF6hfSJqkL0OHPMsb8Ls6wQdUD6kEnbzM2CPuXtws38eqSOFSNnNv2JU17zv
	 N7Smxc54YZeKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC29CCCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219523375.12408.2288381615932148603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abaec80cdb11e0ece60e95aca6ce4e982e584b03b60e88ecd6ed2796d6d83260
Date: Sat, 17 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792195233
