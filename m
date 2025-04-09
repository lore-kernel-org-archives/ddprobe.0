Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CC41A5BA4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744242595; cv=none; b=IXDUF2k/Op/HLORktKvay9tgLP7WpoVkKnJzSR58hRjqiJYiodcJ5M0nKh0J1YMKtD2ZDUQ84AKcx1eB1MYYpu2jKRyMe/RTVN8ARct0sPSSgc7MXlT+QXlrYeM8qK2ziQG+kYyc5giY43qKSzAyYOh10IL5S30vreQk8Eq133M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744242595; c=relaxed/simple;
	bh=5EGrq5TDKyp9/DEiswhb3iGtOkLlfJme0KcAczeHhds=;
	h=To:Subject:From:Message-Id:Date; b=YaFKu6FSsWi9oaGgM+LFe/h0r48c4eKQ7KX3tIh5QuiCi2JBW/VrVpWuqC+tAxH7OHZWh0+EmWRKEidoQag48f2+pwPZqt8lF0Qgyd6kIG/UmaILa4u5BuxbIabjE5X5dogBZpqmPM6ouSW70MgVsti03riRNExcDR09cl9k4t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7Hr1omK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7Hr1omK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24BDC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744242593;
	bh=5EGrq5TDKyp9/DEiswhb3iGtOkLlfJme0KcAczeHhds=;
	h=To:Subject:From:Date:From;
	b=G7Hr1omKWXvzn85EI9c8j/46ga6/QHavupZF0/c3CcRpgL7l62vJkEn6EAiQrE3pc
	 YT6qQJ42asGxylg2ddf0byEqdPdl9tW1uKI5gWQh5iPHXbVxXk2A0hy8WPK7pOkAqa
	 u70QeczPCAh5ZFatTuT1z82K7mtpdXZxRAVuXD8b3Fy5J2IAgXyjvFO4L+gh/AGA2h
	 r2wFeON6uxRuaUvDahvmso5HAJ3cHl2IGvybx82YU7Yh+zzGhYC3/HtsI91hcTZSaj
	 cbwTFBTC3y4uEExEd3VImytCs86CUHxmQnp7VBfletfEhwDlSodU7oYZw2ILVQaQx+
	 ILs3YuyWuLMjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE0EC369A6
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424259364.4914.15643677430237991127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8299cbeff2c3c49ec1e74e91bae8f23d807b9dc1d91bf123e624dfab66b749a2
Date: Wed, 09 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744242593
