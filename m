Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2837C13D891
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762015194; cv=none; b=cJbGYFKOzHBaAUOSLpE34Kg5TPS2z9D5o9IIMoyWb5xo24by/Lpf5gr5Ai+zN9aTL2vjobzi5LYv81ZhQL78Dfr7Ol65PHaFzdC/UkwlCdlkMxBVehy9oix5E4+JRyqavT86Y8Cejv2wtWELM9nlelVivZvB1V/1ArEfSwHPBZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762015194; c=relaxed/simple;
	bh=0i3u7bVlK5HOyWAglpCfu8JL/hRjbzuDsdKDs8tdymU=;
	h=To:Subject:From:Message-Id:Date; b=O7XVpx4dgf7cNzGCa8LfOKZ9X4hs7ppRAHU5Fj7c2tRh5Mf5RePDDE+a45dDyihPEReg2ymVYLEXyGeFC8N36F+O1kPlva0pLb8OfjdRq4fm0iw66+m4w+PI6xlgGFY6ztr/xU/WxoiRHxZPsJViltkyVoOweAxkZQXUULs4I+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzAXRy63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzAXRy63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762015193;
	bh=0i3u7bVlK5HOyWAglpCfu8JL/hRjbzuDsdKDs8tdymU=;
	h=To:Subject:From:Date:From;
	b=DzAXRy63abkZVopGiRjywp9C/zJRuYvIUehAQdVvtv05Il+8zD0ynZPbONgt+oDPa
	 Mxt+z2VmMA+QMpPTVohQii0HwpkvlTgl9E55fawglNiFCiCYZ6Ev2Au9BNx/1kl52O
	 xz/Llrs28bu+X6cESyAw4+kzHKyzrGTRr+FwXVRphBBsxh3349DHUsy7kGxycM3sU6
	 1QzQl8QsYPX+gvy+NRTBfcVwSu3pxD5KALDlF4JU1uY89+62Gfuj10Wz46idirMvUY
	 DVbcCbOzba2v5OoUfeI1uxm//sJxt062V+2mLSywg3CIZ1TYIuh3sngTVWwev4Mn2D
	 y58PPxKEqUn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AF2CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201519358.14240.15247362842677723770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af0d5809914691a522dae4d0c0c9219cfd3c68052120d64832672ef289a6c5f
Date: Sat, 01 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762015193
