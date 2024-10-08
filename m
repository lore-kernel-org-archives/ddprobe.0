Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337851E009D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728375954; cv=none; b=Cs60HM7I/0VFpXVP/sX2bSuGlrk+/fZNC64T/ndzPpIzqDEeJZ5UXJfJttsE0jado86kZD/1+Mgfe34OneM729+dJtFdgfJDhxro3DYvlyYTMXBqb46Op2OwxZf/sMc551fYmoDo4dPP6VgILEVExJCdrouoy7VFKEiOkZvuFK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728375954; c=relaxed/simple;
	bh=EPagoXoBjLahXlRkAL4YYJRI/nO3+buFsLdD+V2me/U=;
	h=To:Subject:From:Message-Id:Date; b=YNvyR1vemeUAncF2Bdjz8Ih+r3C+/g8lUc37q+fg7tUFvSztc9YH3bnb9dx0yB+lkAnDejDNnUOqbICkLGtQxDBexNSd3d0aEwyiXHXA4jCLmcc6Zq7JaDSttgUhQeSjp+JXU5cOVyg4MlgbURLpwIQzdL70Sc7BE+B3yvKWjZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQHKpmme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQHKpmme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7653C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728375953;
	bh=EPagoXoBjLahXlRkAL4YYJRI/nO3+buFsLdD+V2me/U=;
	h=To:Subject:From:Date:From;
	b=cQHKpmmekQjEJr5mucKivIGzq4boWzQjftq8xE0O05UhQpL/QsZ7Ji3Q4isL2rNQE
	 4A+86cYbM7qCticgATbXikqx6y3a5GtF9aWwqzezTlNsDlrWtsrZnQ8EMOzYGZlF83
	 CQIlQfYBbW0Ldw9kWiXyzgEctB17yjxF2IAY3drfdasikBiT5PV7NSkkpFxSpcyLGd
	 zv7NeU02IoUJcyrufI9g+FxVVdUrEHZPz0Fn7vlzGPM73TBYZTwytrPcjRrKNKF0Xy
	 e9DzK4JQJReNrkDiddtVZSDUhaYsae+UQ5KKa6tbS7TDBr8WPHP/4mKHisWkwGEHxD
	 UsbNFB6UbSXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB7CED274
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837595359.16203.16783137626197098690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a39519ad99abe744a717550db1d7ec120383eceaeaf935c5aa9a056b3b22be4
Date: Tue, 08 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728375953
