Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395723C2F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762036794; cv=none; b=HMBX5PV5xYuMf0NGpdFs8zLqmFDEdihJ5ujE2oAWgQmMhT7vOLsJjiMVEApXBc05iL7EhBJ3Joc7NWWElLB1vkuYe7fGNlq+omJLvvI79DmxpOL85kkxgpSVMVihX7Tc/QqKlNaeLGswls8i1QV7NLalH5Bju7NNujHss40/xPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762036794; c=relaxed/simple;
	bh=vxmP5ij7UY0rovA4hwJMXypNekpPYu3uNi/0wuZkW3o=;
	h=To:Subject:From:Message-Id:Date; b=eJ2B+uLDOahRMaWINBvBvuOPFbrt79Mlzvp/TvRWrR/Th7VABLX0G/e2e84LXQQD7SuEoofQbfQ0tP8WGJ95nUFyR/tj6ql8TM0PPpxNCUuAWDyBYzudrg/RZSCznZkaM6fVRekAEs5iwE0CeICmeHstKra/yuhP1E5/r5B+5X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVGW2rbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVGW2rbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDF8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762036793;
	bh=vxmP5ij7UY0rovA4hwJMXypNekpPYu3uNi/0wuZkW3o=;
	h=To:Subject:From:Date:From;
	b=WVGW2rbFSwiFw3XdZlpj29VeXh4HbKT4aLV7k4vuuai1oWk49ao+E/UwEwUuTp2Ru
	 yON+vRm7cO7Q2zMjy/Q6PX8DZdAdmuWB3Gy3bOOeAYExYyaBHPIiezoHjLogjhDA5D
	 Tq7Rs+Iy1jmH+Y21UJeXUI6PYMjdotDplJVDEz+ZSM+esD8Zt7rFT/jE650tteJp5u
	 s+NjA2Y42MNaLTj+0IAZ+FxFZmYVZy7+HOuDNB5EijQN6jJ2nX/gvKsieKcwGbxpoU
	 5dLfOnaTuoBmMbBTZIZYy4W/6IsPCBVDdSDeo21jmFLCx8SWz2IrEMjwh4WjHGa14y
	 gGkbsWE7Eijpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93714CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203679359.27355.9920590619182729814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aec7bebf2307c4fce62fc7a9e6ac68fccade2b6e63e3a085258384cb3ab6e95
Date: Sat, 01 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762036793
