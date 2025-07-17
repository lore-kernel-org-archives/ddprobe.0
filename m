Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBDF2D3A7D
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752764993; cv=none; b=Tm/p/ZqMpVDKJqvXCu+c7I1OYUqXsY0tHKH1AWMI7ELxn6HG1bXRQq71fcbPk00l3+3h/OQKhiG15v9E3ba79lnaV8qhIwoB01nM7l/yiXkM0l7n9Ubfi8hKiUo0fF97lo1OkSJ7c+hEjimN8Y0cO4fih2LPI0M8+MJCTxDGXlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752764993; c=relaxed/simple;
	bh=Mo8bujPwzjZsA7SJW4BIspRc74gSVxIyDM8jcgtrj+M=;
	h=To:Subject:From:Message-Id:Date; b=CG/d1MEYy7VKBlwa7LvKHBdQ2QgEiSD8GBwOpS1uKoTw8yFO1faqsuIPliHdOBI3XrIukwN6vUHBZZgJR8MSc0XG3p5Wf3D13gtEaVMrSqnys8oF20Xpoczoca0u5QG/oqF4asnruhqBl07trHG6h6jWBdmdszk97i3RWyA4xK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRkCBmBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRkCBmBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8853C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752764993;
	bh=Mo8bujPwzjZsA7SJW4BIspRc74gSVxIyDM8jcgtrj+M=;
	h=To:Subject:From:Date:From;
	b=qRkCBmBqACEI6q7kbeIiMz175WJKcOsBQ1GOge6xbWwgxaEcCQdstibgpHPx2IoaR
	 QhzhPjIBA/xRTAdaXkMrPDIyt/pTgIR3uq7RevQdIyUCi3/LWxjn2JaBwggfmmd9XC
	 vVKBFuid1xkqHQRzYOkHYVtDX/wFqzqOvEkD1YmpPLRBqbD0rBoqxGYVi3I0rhr3ty
	 8oAQk8Mp6dl5m1tQfzhP6RPSCtgAWAXNe/U1rM7EYykSGMUFUXceyb1ydsG59KZ9zc
	 150O/MLyl4lWesGECDucbiUefYdAU7ahJuzIRsSzT/pN7N0GZzy+Fks5VI2/BVGv8S
	 YtAReY62a0rAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D36C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276499360.22631.4850313655073864067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912a51fffb7b5964e1815f7385e6864100845138f624d8afe878b0b27c473a33
Date: Thu, 17 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752764993
