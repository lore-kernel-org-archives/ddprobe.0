Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE3B1553A3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746316194; cv=none; b=hrzcerFMHVerb6zm5k30j7yimm2VaarLcrBUvx3+gDSvaE8gOJ9e03jme8xxMNWrN5HcWXOtSVr+4jfMdyc+byfrdiWgtgRAnUv2VWuTeGY6dVCcQ/fGcws+n3ZUKHFJ8UtGa1NzQfV12JBgZuohBbklBHTZaCZZ4jCYuiP3OM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746316194; c=relaxed/simple;
	bh=7vM9dr4CrNr6UKYxqoNvox3k1Rty6F0ohvOfgWcTnOg=;
	h=To:Subject:From:Message-Id:Date; b=KkvxwnStzF/wsEIlwhTnqiZcbam9X39y3PzqQ1dkGMbZc1Ne002g1Dc/IlC8epAU/ugw07Y87emkmbH6C4rQ6NApf22uYEJ+L/wgqv381eUJUatPZDjqri2qpMaAm+ThquKXb/W+7i4tIi9GDheL4VItRJUYZ5Zly3qtkLOJRm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZjbfPKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZjbfPKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5130C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746316193;
	bh=7vM9dr4CrNr6UKYxqoNvox3k1Rty6F0ohvOfgWcTnOg=;
	h=To:Subject:From:Date:From;
	b=JZjbfPKZo4iAfFcaJ9eQTjksD8hu9+AseA/QSfj0NAlLrCde0cHQFHiGCgYjt0HF0
	 l/Iu1tQzdLl8ivpjUp19EspVwzHjr3kHxG5hh3xA0hMCnRDDaqoO/d7Rgj9/oJzPEk
	 ATxpUZFHiUadyLFb3VEK/QZM8bUYeSSiSwvKTw3v70ewwCz3cojvep9qA0ftocnGp4
	 Zce4Ea5GFT+cLl7I6rioMV8JOzLxBVoqfUExJtbdSGAoRAW+v3CN3zLtzSwpSo1ViF
	 IwAPndmfHDj4BVKuH68u5O6wUavuJzQMp4R15+as4sdHpIUt4whh38tS+p+7x56Zji
	 A/UcRv88ocFMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EAC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631619357.27320.9959992149214712890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e961a0fe6246f42f6250becb0083f9082df3de955d28d70c9bf5b86a4ed41acb
Date: Sat, 03 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746316193
