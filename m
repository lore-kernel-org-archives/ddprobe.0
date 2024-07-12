Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F712032A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720809563; cv=none; b=QDYYL4HEnmu1ygaS2Mwub+Mf9EwHz583Aa86PBBhso7NdOy+JSHH/xQNfRlTXnO4FulATnx77uycvHFLqbIxka6fsd/oN//96aSyml8S09rCrmybPPwZrnQ2NPRegd8LtWTGcT1bWy6OvUzsOrmALTugIDQduEyTz3YR+COfKLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720809563; c=relaxed/simple;
	bh=XUydTL/LtqTTuFI6kQLQK51+lgCUp17/EGwRIUEe6hk=;
	h=To:Subject:From:Message-Id:Date; b=H3Zo6GFdDNyxZOxMFv1AlR9ZdMm5h+WKvVAmSAJ4zMe7rR92P1+NIZH0G4+43LpwLtjzqSU+6R5aB7+vaqOIgbK9clGsPd9lJg+83B6qQe3ME6ILkrsr//ywExdgHyjnQpBIWiP/ykFVAkmKEwebIziYt2vEcMrndiOAn13ji50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgKzAVIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgKzAVIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67D7C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720809562;
	bh=XUydTL/LtqTTuFI6kQLQK51+lgCUp17/EGwRIUEe6hk=;
	h=To:Subject:From:Date:From;
	b=WgKzAVIQEnJa9v3sjKTZfXgEgaSGHJCP0gWZe4yf8931vP9536B+Bt2MEUEcsFekP
	 2y5/MrS853GfkgrQbZxVYZcoVfnSEsBWZMIqCBZkGQGp2NDV3Q66WhMhc3bAB1ZmH+
	 ittKtdENHEXo+zxSJ9nn4Ipcdbln3b915zQXFpHSSXVHeJjPw8ei7WLaQDn6BcO4Qu
	 BhnLLhOwsPIT0V6a0UrreASk/MWalF012sG5VprsiZ0uZUkvqfuZC4BpNJC1dsO0HK
	 oM/HDZtGISuaH4XHNC8N7EwYjfeRIv/wdk0z+HYoL4yWA69X5pU0V4SDc8xbfAsL4T
	 V90IuHid4uF2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1883C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080956278.4683.12250138607968158593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eba75af2d9891acac3c6716ed122b1d16e02e95f5f007eb8e5e0d42ecc80328
Date: Fri, 12 Jul 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720809562
