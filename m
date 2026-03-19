Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019893A6EFD
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773907494; cv=none; b=nP9zsNqhx16/2sWLVcwpFW5f7p9oeoqUcl8jXTBIhBsQ6nugJFiZFK8HKU/LQlGCmPo8rLH9l3ceqEJ7mc5OlJfZZPYT4tGhSiJx1wXCM2rsabRMAT4eu+ayh9tcfkL9vYUsPVrJB2T62PVl4SSmrGI5ir6yMSAh92ed7SQXOwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773907494; c=relaxed/simple;
	bh=b0s38Q10k73/1a98oeAauOC53+NUEUshk0SsmYulPbM=;
	h=To:Subject:From:Message-Id:Date; b=bzjy4ZZtjI9soL597HRGncwF5l63Wpb5xaqdj5cdrgGiF8G9HaMjjPBeF1L/ZI9T8yr2H5qIyUW+iLykXTznPIM/CKyDHh26gBTfypZu6V26t6NfEuPdoBUS57HiyGkJHAB5OmgQNm8/rDHX6X1hybHnD04TcrCeK/rgTKTnyT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xsp6Tr8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xsp6Tr8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4687C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773907493;
	bh=b0s38Q10k73/1a98oeAauOC53+NUEUshk0SsmYulPbM=;
	h=To:Subject:From:Date:From;
	b=Xsp6Tr8AhOhxhTAXpEmC986fhXZce+/MHaa5qjUa61L22AHvxhYrA5zP21sFMGz3G
	 oXxR8wIpU7OLD0EcXLi58eK1HQrE+Aio3YwFsnjDyaFwG6bzynnweJAOfFLVJ7Dpj1
	 0Fpwy9efS22RIICqbZVZWVpji31AA/gKASLT+tLsmIS9RteThhdkB7KoYLaq7jok/z
	 cAFFEVR3A3QHAkDNOPn2RGX1by8CMdysbima+XFxK3agyJZXXUwFdCfg+xL9H6mPhg
	 qYeuIGVYVsDaXlC6Hexa75tFrSrHxpFecrTmu3/ZzZVI6aQYdthochS6XsNdO7MPOd
	 1jzf1GNod8Glg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8F1075275
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390749358.12748.15554905566866584879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d7bd72cdbd4915b8e89f336c3d1c5613c3fc907eb97b112f4ae946e20cca45
Date: Thu, 19 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773907493
