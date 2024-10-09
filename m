Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C971DF997
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728503754; cv=none; b=Pz5eJ/+ss0xaBgLfhO8t2c4mggS/UkUkt6DRdnJxa/qJxMo/+A3C+E3sIJEC7NWvj57nn2Akk+INZREiKjoggtiblbC5AT8hHse1L+Wiznq6Ki6pAncUkvXMr66rmpp5/KX872Rb6tVPucL+CLvQw0CKxAdu+4wqcKWQg2LXsPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728503754; c=relaxed/simple;
	bh=Gy1XxuzNlHWgg1Ecs1J3r5NkLRd2VlwaS6TAf4YKWuY=;
	h=To:Subject:From:Message-Id:Date; b=FsFJL0Bcn79E11lApphYbN8Jvmk6I0Wbq519Vq1+IXZ7EVlgHcYd4VcoeMdtTOTsLQ8soGIF7DWV5GQ6E9B5Xab/iaQJjwC5wb8uW0eOKgVI13pxGglEB0cZlz1/udaGO5c1fNqAKMfHa9hknv7lRDH6Gg12X4ULX2AtoqteE2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anYVVpOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anYVVpOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9406C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728503753;
	bh=Gy1XxuzNlHWgg1Ecs1J3r5NkLRd2VlwaS6TAf4YKWuY=;
	h=To:Subject:From:Date:From;
	b=anYVVpOA+oXGX+lmgm/IkN22NvgDm4aqLtZLFTITls+ailgjNtoVgjMKtrZzXiApX
	 RIvdkPmSiU6nVGIcTGnnG3cihyCk4iKllwYsHy+0c8dKb4CMeoVQ88TB7JNGcEBEVY
	 kirPKju+JV8aTzKLpxRdpdXVE3nR7QZPmXfOH3hei6a6COoxm2RhFSH5qTwcItpOwy
	 MigfjSocSO5d8Qt6yYRWWUcFxzf8jCJqIwQNalhVGwvJ58JQ22/NkuvDS1OwYJYrFI
	 SS6OqucUm9F8+aOzaVyqLbyBzopmjYDJ3VQlcYb1kZowaaBqSKrnjF/4TZ2w6tmV8+
	 zo+OduL8wX0GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D6CEE345
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850375358.9433.2299744622250432743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6982136aa7684edef1cabe34485e334c73b908c4a767414729c13d0ec4f82abd
Date: Wed, 09 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728503753
