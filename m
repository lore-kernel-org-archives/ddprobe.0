Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31010224AF2
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764268374; cv=none; b=gOIka7U7t3kuaCWaJ6i14lElweoo4llmXRPJTqrEjgBe3WBhan4WreE/rKIMD/QYVBR9v/PZhlhfPF/Rc82iLhC/X6FF5rcsjcSzMnTXVoEIQx8eZ4rBUro9/W9552JlDTZI17xGms43hB2vSM6kDtqZMh/DxR95GEmjjm5CAoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764268374; c=relaxed/simple;
	bh=iTMcGK0zneIo/rX3D0cRgnh7h+lNj2DBba40usSptV4=;
	h=To:Subject:From:Message-Id:Date; b=urFTAVqKaDEtWuXg1qfnpFr0XeCS70TI4YxHGDIzb2EjwzyHqeZpI9HpIsfAPhdVtuAImoZvF/nmRh1gXG2Rhrl7nhdzM8gpgfnGeswuCpIwR1at3WxZ4/OYIuqZVKaCKjp5IDDa/qlWg7YblY79dD4akyxyqaAGwwUOsLZXbkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/zKY6Gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/zKY6Gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0464C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764268373;
	bh=iTMcGK0zneIo/rX3D0cRgnh7h+lNj2DBba40usSptV4=;
	h=To:Subject:From:Date:From;
	b=E/zKY6Gpz/B1aJWqIsvcwXMyxuhLPQB2OZjG7tlJCnmOCcHM5X6Z4KN1HQAhTYlgE
	 AhAREonDZQgWVckkPARxbyGepq34wyhLhHkFg5Sy4ODSUOO4P7h2HJAEiZVJv+UEzl
	 etG1iruWM/se7SJ81QVmGVNk91JeZx6PCpBntFU5VSHaoba7usmN049NfoCb5Y2Ogu
	 Mdo1bceQdiI7IHTHWVfILFtYhKJXPERXgVZdD8Bz6Z6Zkqwf9aZ2i93Z1Q9L6jKNDy
	 PwcZv/87zwd7kMpScU3DEpnSCQ0Mj2KTczcj2W/KRfeETefcCUYriSkipUQQkRpRH5
	 Tcz8Ebu84xa8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E889CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426837361.6515.6510072988535696914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27e16d6a6a44298cbef145554ff7f93b6e76598c6a8cc9ab23a65b085276f71
Date: Thu, 27 Nov 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764268373
