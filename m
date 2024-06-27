Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B2E1990BB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719503663; cv=none; b=FJvU6bp3dzqL1WzZNrLTCI9OayNEzK+QmMnj45qKicw+MSqNHB3JvcnfaJSLsCKQ8L56MoUrrZpxWrCm4K0JeZ8SPucI3XYWb/YfZtJtXWaPvbCPL3hOUxtQqUb2LB4lnWFHRykQm71Ny576zcTznhFGFS7P/zAvRfnH01Y/ZYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719503663; c=relaxed/simple;
	bh=N1HzY9uJ0byZkof/KOnUBif0YKAWwXDMfrbO+LV+Fp0=;
	h=To:Subject:From:Message-Id:Date; b=XZNy/g21Wa4UfzA2xhjyiyxR4a+PRm0Zj5iqxEFdiFJIDzW9WWF0LqtH4PiBI8wq50Dx6tp2hyZNc/H6ICXMkzPO5rWw4ha6UGrpqfyIvM7epZX6hWwPUBlGkrJ0Wg5knX0A+g6gjgC9GMgxEyuOA1QywW4nI1oz2ke/eid4ZeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw/RMyP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw/RMyP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB1CC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719503663;
	bh=N1HzY9uJ0byZkof/KOnUBif0YKAWwXDMfrbO+LV+Fp0=;
	h=To:Subject:From:Date:From;
	b=sw/RMyP13DzirTi8sn/3aeblVlIFyCuK8vOEm0gnsHagDh6GamIEqHA3pCubf9TNP
	 GaW2/1dQSRF2hu+AeSlprswphqx4fB1P1ltrGc+g7Ddh9vyjwbEEgx7vyFi/eXT96w
	 RP31HRGCp6yps1cXst8gfhzA97aSk8FZ0gs2HbOGMjti4EcYYDdt9EgfA84xHV5seL
	 XTDRO9603pOZWbhKVyD15D8PD0X/bKuxnOFlx5IqOdCyL7XIVrWEhAWj+p7ghUpBSJ
	 VhahEl6APRhtnPIQ3AMIZs6U8Fwl14hHVxaHponjM+9d/1Q7NGSwfcUqWa9klZzTyW
	 3ciJsZZ2yA/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08F4C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950366284.1378.14126326658898378451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cae4ebc911dcdb5b82fffecde830f3ad5db8a80fedc7865ffa49a11e78485fc
Date: Thu, 27 Jun 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719503662
