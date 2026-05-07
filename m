Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7432437D13D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778142454; cv=none; b=ZF3DBnuup1ljZbtGQTGhVAJvJYRxQlaavUviG5g5k8dhaLiFHcj/Gofr1Ya6StqheEImDLUnjYLTCFfQZJsnmJG4WpB0SXH6IImVd+LIj7wT2vHU110fpHiUhd8EgnYjfEMt1Ih5yqFknwT+WTff+eDj5wdDXv6kW0MV6spoT+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778142454; c=relaxed/simple;
	bh=MNnfquV1GS0gMl3QWr2kejfWYZTp6gih5JnSCTaYjms=;
	h=To:Subject:From:Message-Id:Date; b=bymhPQJ1L3g97ZFkLlrSr14zFVprjmU9/1kFL22ZJcxQpu2jAlDmczorgF59dEuu5fiDcTOXaSRI/mE4ELpj9sXqcbu2vUFMe0gZuHI7GKj2VtRPaW8eGouAd/eruORfErYQ/awV70VOpDyyJB8Uty6lb4aUpMPM4dfVsTeR8IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEYdOYdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEYdOYdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB83C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778142453;
	bh=MNnfquV1GS0gMl3QWr2kejfWYZTp6gih5JnSCTaYjms=;
	h=To:Subject:From:Date:From;
	b=SEYdOYdXP86PGmjkKj1bxr/t89elm/Ih9e8wjztbw4+gNptzK0GyDZvXPe0YWBgU4
	 HKxkrJQVsiZ0t3WPQWzsPgdcW/urkWZ/4z+I7D3oeOX591AAEq23sWarQQ8jdTKrLV
	 oHOqpgGq+QcKtDUK7rmW32FWPgKMujuXATUOuwP3goeFbCJjIcmlUZFi0wKQJLOdP6
	 wAn0HPHBlQ63MehkzZJ45tffF4lcAzGtYHqhKOrzHbLbSylDeHLGPufIjlIAJN5TuO
	 mNYEiQrgpY+Poj6HDE8LiM9Z5y4QqHsrJiHAkgoM7F552VUx+66jeO1p030mp3/17b
	 /dVou/JgERPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC052CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814245369.16081.16563810254905549693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964e8e996e2e1a2413b06a61ab1d0de419b8379da566d837d0984d7bdb939d96
Date: Thu, 07 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778142453
