Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADF02139C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718853563; cv=none; b=uE9yKDp9HIZFdTnOPYJDNIALmInypISy3Xy96wPtuFMKzfgUPf/t495Ktyre3N6G9690OiHd4/qRTTS4GFuN79LahzlFCxfYeX4KUPOGCAcjXcjkbOBovn/DMB71g882e+0+vCDjho/y5w+2ss5T3fp39y2QTJ19gVbkWF+wXgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718853563; c=relaxed/simple;
	bh=zkKZj0bipIo40ftbLgw/siUGPenxD7Mmv94+s5/0hWg=;
	h=To:Subject:From:Message-Id:Date; b=hdApudYDsECTfbZP/jvCD41uIO0sE4jYDYLH2Nl7+uoFy1P156XZeI97h+QS6AXN32xGPPdMnpBtIe96dpCg4hAIZso0E9vtI7o4f1gS12i1W6Bj/ru2y1t5S/aMMKkRyUR0viGFjb/b6DCjYDi/hkGVwp1Ni+70S505ovdUeoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXK+l845; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXK+l845"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF68C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718853563;
	bh=zkKZj0bipIo40ftbLgw/siUGPenxD7Mmv94+s5/0hWg=;
	h=To:Subject:From:Date:From;
	b=LXK+l8458GgUIpvhx5wDTL4hhEOs/hPDssvtIZxthDnvSFKjPtyxkSt7wQjv/ZB0c
	 WO0jcpX1ZnXAnutMfIOIPUx4nlOfqzyCX6wxC0pu6rsjjG4y4opumHN2Szmrw93ICd
	 xYSQWjOfogPb/eCGufzKQJ1t6Q516IGIMXpQHwdqsUbTF28f9PkkaDfEoAjm6r7LzE
	 g3p0vV4jWMwrEhmh2vnk2jgOgjF/eRI/a2oCFFKFZ2G90u2sZxpblE5tBK7D8XO1CJ
	 SRhxA+BF+v62rmcjDS0HTCxUa+zWROGgAn7agsl1ePghqkBpHlRKYuQzs22Q+dOo4U
	 9gaXTajkSDEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D572AC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885356281.7799.2228162566444048958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12a65a663de2a96656360194621b90cd0bc39999f7eb6f8beb853001af8373f
Date: Thu, 20 Jun 2024 03:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718853562
