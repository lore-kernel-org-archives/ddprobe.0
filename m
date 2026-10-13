Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5689E3911A2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791877234; cv=none; b=jw0usbnr0kVdV1iQYtGUu0PoPwKKAvfI5WfYq+r4xkn1WOG5y4MIBa+3L59vmoP1CGe/6LjrlbMSQmZ3uwX/8jP7XAeni+021dPToO3UCTAsNXKKllVn1+Cf2+U9/GkwbcRKwLetmmzsAEqpIM2ROpkU4iC5gNzRHADrHvHNQgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791877234; c=relaxed/simple;
	bh=1/kkV0rHrDFAzsfoUrDFqLI6U/pakhucsHHFXKg28rg=;
	h=To:Subject:From:Message-Id:Date; b=gy05CdCRIw8IdM4fNcpTksvbfSNXdU1hJXbXJBRyKJzLuFkz1EL+5CWEI+J5gVGcOZAiHiVZOIg/qnkJ410v1NDMos0879Rt8LTF/3qPuaiiox6+h6kbfvzGtkcEZJQ6kzViGBw0NLyW48Vo92tGPCY9b66taC/woIMMil+xNno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k20ZgsnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k20ZgsnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD84EC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791877233;
	bh=1/kkV0rHrDFAzsfoUrDFqLI6U/pakhucsHHFXKg28rg=;
	h=To:Subject:From:Date:From;
	b=k20ZgsnJACrEz2GzgZrtAMiKWJzA+CRF7xMmzpmJEPn0kZtmMEcIox85C+8XfFZ/x
	 4qvn/ZWWWbD5Pxda9ZR3jg6cPFOqwivovcLXg4r3sCu9o4V1WEpdQB4iE5AwtWuT1+
	 X9WUEHbHJgM1nR8dz9UPEuo93ma2LPJSCK8WLoutgZ+KAQThPJteuugOxA4XbxMTh4
	 9L0M/bGqW362JgmNY5lC/Z3sA18Jc++vy/gJ6ZFOZdEjF0KP8Lg7DtB5p4nYpYJ6UP
	 ILfFxDSV2Mb3glQLZGtqjEzdDGx/IM9BFjLh6bvz6uS+bH6PqiTh3WG1yP8ODR9Omp
	 HYFtORxbsiD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F03CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187723373.17407.11872877147666815794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fce025e6341736e083b843555069db4212f6fe2aa9c22590eb7579bcc4c95f5
Date: Tue, 13 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791877233
