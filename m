Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B23918A93C
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754619594; cv=none; b=uxU5T+qu/lpbmckY7Hx4VSK1Pz10nOK3vkCUpS37F0SPxmqyjOTO6LuLDFmkTcuD29vkEEp4wh8m/Z2fQhcPvE47PzB3D2BrV0ufQUm5d8IM9j+av0j82avYLqXubevmFt8Y8mp0iIbndd73hbR+2djKbeE6SlB4FKzsuyJ2q68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754619594; c=relaxed/simple;
	bh=8FyRmDvELoVTClzVpFEHU7Kbihawn5Xb/a6OtPzqVMY=;
	h=To:Subject:From:Message-Id:Date; b=VGusjPNaY3bw1W0ebS/EPdawBZqVzlUXppFQ5SDXyVwfNBUrOUpBbeNiA3kwx7xQa8BAQdW0wzk8wP0N7ruSa024ELL9PknQ2O85Ogw9pgeZ4FMuzLQ0yGEqX28ERrOQr5Xouf8uk0dAk2LHn/kd5TVwncYIoLEukgFJeVl3Tlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2sPFTu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2sPFTu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754619593;
	bh=8FyRmDvELoVTClzVpFEHU7Kbihawn5Xb/a6OtPzqVMY=;
	h=To:Subject:From:Date:From;
	b=Q2sPFTu5AShMqkUPJp5sNJ6tTYW3jMExrZiq0Jg2Z40lmO+vr4vGHu1i3WTo0Clxj
	 uukumFa780fUGqdl8KmQzpM7Nz2ija34alvhRFV0GUTZ4hYh8JN2d4ggfHfzJj72Dt
	 gS+n6hXVVVvvRuaxDz4DRGBNqi0B8VnCibPJEhBeR7iv94nEjPABkERghCrRIcZge7
	 62VNs1AtCqS3DEfpzR/7rBBkuV796HZsGKbrGojEeut7AMcaVj/mcn4CyoXdrTSwmP
	 5AB5AEHbaO5idV5NBmQbaUxExC7VtPhMwakSJRud8XanKi6N68WkorZ8KAY1G98R+B
	 gBTdC2kMR8gxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED67C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461959357.14925.18203376402402344378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574e2758c5ed8e565186bec48e04b142c9215d675c2acf32a8ec81343640ef3e
Date: Fri, 08 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754619593
