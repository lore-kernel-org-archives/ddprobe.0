Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA84347BDB
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786196434; cv=none; b=pIKZru7mgUIn7ySQLzlINf2es5yVoidhLJXdAqwhvZShF1EM6PFEfO8v2EZTe63PrbxgaF7lrt5apg8OQaAt6VlNOsx1PiTMoZifb7seZ4dJoMiR/fSln5AxWHQXeHau+8qcJBfwz7n/3JUdowbQpTtFrrBNM8owWobtVbi6aKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786196434; c=relaxed/simple;
	bh=6fMo2NPPfEAUheEPYniUYALrivgdrLI9K1AUYKUel5M=;
	h=To:Subject:From:Message-Id:Date; b=K1ipOQ/9c7yilNsnkXpaRoEl51M2k9qYCbl6zUEBY9gTkPA1JW1r+KEShnMKQnTh5vI5wE3+/bVG7ZuBCMHas/gJTNaLPMAWqOHyH3X9kXGR2D9m7QS96f7dOQ8tzJHNCfLMzhmtF0iHP7iydx2LmDaesyT6zK/la7AH/fD4SNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9mMbOXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9mMbOXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D262DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786196433;
	bh=6fMo2NPPfEAUheEPYniUYALrivgdrLI9K1AUYKUel5M=;
	h=To:Subject:From:Date:From;
	b=M9mMbOXoGjC/tf5Mw3/8lZEooaS23bipSKPBWCEjLX5NPndwpjGbeYFykipjveXGD
	 BoYJXSutGZJlUujsfIme9/Cz0rC4Ccv5NDDodr6+gxvauq06dASv2iZCu1ci78j9IT
	 /H270ZWQM6rOgN3vitRkLd8Otymdgp+VK7MPqg9s6gQx2qj4Iu6Ze8OX+jDZJheRZG
	 Z09QrSGyPX/SvbDdL15ZWaS7oQWZylsqYaQPapQnqj4hymDsIxBF8+vIRAnxlVkP00
	 CJigUQqd1tXMc9SrjNKnZSM9d/C5y462S8fUwrauoetY/zUnyuP7DpoacmVBlLSVJH
	 sOw4qKXeHrYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD63EC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619643370.7789.5378114676427214103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3722cdc0e370010c0c4ad923c7bd55fd79f9c20e6b7212fb7c16bcc53ebbac68
Date: Sat, 08 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786196433
