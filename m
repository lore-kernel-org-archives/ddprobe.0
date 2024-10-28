Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148881EBA1F
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730151354; cv=none; b=j7MXkGPdSwZpb1oABXtWmrRx4p/gBa769bbOSyT3OmzsC/wGgdykP8Z3kMieTabGXa6dUFNlhccnO4lZVa8s65sGxxNeyDcmHhJKxeG5/Qmqn6Fig1gmSDqCGbg65eYxvL4MhmDPWKv+SVxFxp7mFwwLzAyrrY0XiO/K84nlfEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730151354; c=relaxed/simple;
	bh=T9niZoTgzv0IT/7uMBgxxsr3rirI9Go1Lj3VpB5+lAU=;
	h=To:Subject:From:Message-Id:Date; b=swzTPzZwpDd7lPBSAt0bIUNREUxd7EnCSNUcdXST7MdQ1p2TgKyui5JI+L9O/MkFYgFE/1fmBdKAgtRdlELbh3NheGR/GqFRvVnCxWnnOCnF1CFrenGnPoZocRlWUQnoZjJKuMJmLS4OImsKkduonaQoxDqMj5UqLlAQYq8HUC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3dZ/RIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3dZ/RIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1B6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730151353;
	bh=T9niZoTgzv0IT/7uMBgxxsr3rirI9Go1Lj3VpB5+lAU=;
	h=To:Subject:From:Date:From;
	b=q3dZ/RILzbSoA0OWYvQoDHicRBAkJe0nwTXVVWiPQA+DPYtbrMEmeJLb7lpH5b9XH
	 EH7bQ8HYNBgUvq2xtMkuUjbRHNIYNDbYB2z8hIjLcjHxuoXhS8Rdylqur9GhQVa7mg
	 UqqS+QOSdlGzEDfyS2/Eh8y200/4nVevsED6KCtlZtVB7r/zQPjr5edS618q+viODz
	 miVqR+7tLgZZvi+6nWkNf2r4pET1i3l/LhB5TFtzPgGRd27ur1IQvuzrin5XR3O8mP
	 GR1sSv6Sc/+BVErmCitRC1PpsjrwiyivFOWlpc1znaPe+cMUXGtlD2UKl+wUEMg6ye
	 aMEJudJuT4fbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6BD5B158
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173015135361.22476.17964671550852340817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa34a497f0e8bc561bb19d9e88a3c4054cffdd1898c7909ad0a29678537061d8
Date: Mon, 28 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730151353
