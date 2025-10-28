Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB36302CB1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643794; cv=none; b=qPCoS8kTFhRAQvgvXFp+1y/foTOWajUavfAc1fnA4z0z1xxtuNaV3pqbHnwnn2K64w20tNJrgII43S+cxr7QT0Ls7d3sSWsSeWklku9d+i1AQTTsBnCsDXKZ4ksaFbNcBKAMtdNqz3lO08bOKxDdKU4ndypr5KTvF2/5G4eppj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643794; c=relaxed/simple;
	bh=0A5MLviPf64NioAm4Q247OmIV8BEON22IT+4ggE0Chg=;
	h=To:Subject:From:Message-Id:Date; b=aN8FRq54HNXfyGLfYbnxkAuptUhcZEJESsIVRBh75k0VQDgCzPAWjAo27jiyJGR1joFLxU+9zDdS7jr5Ub0KR3iIY8XWNAjk6Wfzc+dAVruNo448ythyplI0JnQKXRgIjdeyC7nYHYwLDQ4q2T4vTsvND4Fe4y+/JTqB75+yHdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwCcPnRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwCcPnRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F793C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761643793;
	bh=0A5MLviPf64NioAm4Q247OmIV8BEON22IT+4ggE0Chg=;
	h=To:Subject:From:Date:From;
	b=IwCcPnRPAQMwAdcdjXF+nO+4YbrpRwdk7Gl71xovGPndHO1gHiBovI56fIXZ2JruT
	 3BkNexNI8iZVbsNu7VfTzGPLQUqjSJIMrhqYumlz9Zou71shJDOV7kQsO5TPq4M06C
	 +5pd5RepdM8J/7TDX1tNdnKPjjW6ShRuJdtONUymNfeYRDwk8kBIphca7SHMrFBeQ+
	 olVRyHdI2oHM2IddX86OjNvsFT7G0B5rNqJ3GAcQ22gLetfw1EGZ9gX+HplEyUE2dl
	 F9k1les5GvCZpuW+hxGPWmxzAtm18/U7Fzz5NlEliJMHqu/MamziSczMEJeT6LWjA2
	 /8GjI4TZxOFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB55CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164379358.23436.9501975497722217028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0f1393b7eae1849794d6e2a7fe02eaf1fe7c6824a5b25373fdf173807a8967
Date: Tue, 28 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761643793
