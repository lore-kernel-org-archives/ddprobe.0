Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224026F2B0
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771209894; cv=none; b=AjeBJmrax395uI2vgv10VtkaDRX8g0e2+cIbUf53nk2nJOvpKlQXb3L/F0RnwaoM8NQgNKkff+iraAQL/0aflMVzSCp4SibOuh/8hpVFQJp/FGIuNceXePznOpQzbncWejSqnuGNWZLpP5sl9EMCR7mvC4PIGAj055U4On2uDdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771209894; c=relaxed/simple;
	bh=e62Ob81MiBxBFhYBJKOX0u8riaKCr8DdAMEwCF6gHZQ=;
	h=To:Subject:From:Message-Id:Date; b=uNDpVcYBLs5nqk7wT3Uph+38CrLP7IG1VIh0k/IM6Z3W+5KPupdEUxhINx++EAXPga/ITjKhx5ut0CioF9AvkPlX1K8lVvgM13BfwnzdZcSNlq64kBeoPdUNejCpl5JaqDROgxzNTSIZb6s5askSVeV5D8eP2qM99JYg1eBwnfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gayx0T63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gayx0T63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBE6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771209893;
	bh=e62Ob81MiBxBFhYBJKOX0u8riaKCr8DdAMEwCF6gHZQ=;
	h=To:Subject:From:Date:From;
	b=gayx0T631V3uDMCX1LbQk7h0QiJX1oKGGMDozqTT7lcXqvlaSvjYy0fHI3QDdbbov
	 K4xTDRhUB7wiXmQtKxvZmIgNf1e2QnM0TyxytAchAFFtwFvM+Hl6MNkpxaWzG59c4B
	 gJ1gAaZpH/cSMCQNMz3LCAfwmpcnhy4ZSn6HjVMnla0xsu84D0TeAUV81TZSiacHeN
	 yT7gdNvtheAWp6c/Sik9XLYfLOj1WDRuplrQzq+gmMw/L/FPLxoWEAwlTg8ZUV5xNl
	 8V7uUhKvTvPwbqOanZ9GFHZUXn3Km9/sjIln/4BXwlG7xPHvWwBoqR8N6FaRTWg51D
	 mvZchrBfun9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77D0E63F29
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120989364.24596.3069131822298053173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e9ffe1f90b06667d0ff976aca486352b5d1f06bdc3f53a9599ca35b1c76a14
Date: Mon, 16 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771209893
