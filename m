Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E96AC8F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548994; cv=none; b=Yu50BovMcIQh9HQoPzijOuEdVc/e9PcJWXZCKHMJQ4SuPnAgnAdNU6IXQ77ZoEZBSimdtI5bJcx+vqkNwNfOv5/sbJC0LHcXKbvopspkjH8sTHZETAfqgUQm2Mb8awWoJl01eA82eytzPsnBd2xr/6j+brLSUUL+ascl4IKDAO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548994; c=relaxed/simple;
	bh=IUrwgCWqbPH409zsXFGE7OfHowj+AS9xSYXvFb0WtwY=;
	h=To:Subject:From:Message-Id:Date; b=UtImMrhAFuhZXaGlraSGnuY8wK65eLaIeDBi/UoeGU3hSTysm9Dz+U7va+nMwuUAjJ71PCz/12fJhq4JAu0k+/wYF3ruRltVeqT5ArWxFXcp0HO+ahFJ1aj80aC1hlMcuIJJ8KuoXebrNW+Krtt3PW2eThlbSC+y07EAK6blE04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM77osaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM77osaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F17C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758548993;
	bh=IUrwgCWqbPH409zsXFGE7OfHowj+AS9xSYXvFb0WtwY=;
	h=To:Subject:From:Date:From;
	b=eM77osaNr1JAhVyGLYlYqwJSkYFpe8JtxUL61c4+QoNdzaaFE3fzXfeg6nc/hBbF+
	 AuEURT09xi3vFVoifUqJ8ByrovQnEE4I+0JwqjcWgAY9a47nkOWOExdlOFf0ZKJ0UU
	 8L/d51iFNT3cYpHYJMXfFp4wk2oDxDrNIaJTc8q6cFHJLkGGPq+1MxlYCWFgVZU5n3
	 KFGAbHplX7QciGE97MiI8P6J8ZTlxy0Qquf2o/8zb/3j7iPEyXxqpwPSc9iC8WRZcD
	 ECbWtQu7yH6QP4Zypcm+19Kb1eAtzAnLMe4zcHwbk9MRbH3ibhr0NdQ48JsBwHq+lT
	 0zokZPS23h1gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91288CAC5AA
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854899358.7077.12464314079981759121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062ea6b4349d7fcdf230a4070ea63cc5c127e26ed1b2e0b5ff64196448850087
Date: Mon, 22 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758548993
