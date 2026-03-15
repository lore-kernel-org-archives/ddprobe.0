Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1056F35898
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773552294; cv=none; b=KS149DjF5DXozsrUn+1EEhW5KlL/XTLV36YimHJJSvfBx0sb4T1p3U5uWy8h5eQ9i3OlnuHz6DMnZOijFRV+oa2Y9D6Hz4hinFrBNk1ozxioWxU8qiP9YisIyTkbNPkkKw6pC1AsaO6MeTGWIueI8gC3drxWdZc7oUxaJ9Fk1Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773552294; c=relaxed/simple;
	bh=73CGCubUtsN5DeESZuPj+y0D5xkxwLGtbFXD4XzHm/0=;
	h=To:Subject:From:Message-Id:Date; b=DkAsHXpCEOFonT9RypRdOEllvP9Um4CTSHqs5Axnei1940MoA190f5T8P+vRlBxiCrFF7xTYnqr46UsMcHwiJki7aljo1MSd0LZ8AD/ZJnKoNiaKDWI3tWgUd/4W5lFJ+16ItAEGl5BXX+JFJapuooqE0xtRy5FB20L7SBHDdX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhgipkdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhgipkdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD397C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773552293;
	bh=73CGCubUtsN5DeESZuPj+y0D5xkxwLGtbFXD4XzHm/0=;
	h=To:Subject:From:Date:From;
	b=fhgipkdD4owosHrOUk8DN5t/LvnbCXlcJ4Nhlh36YebL8PPLztDH15FMQs5S5k8Dy
	 qPR+n/hlO2BW2ecKCun4PXVWwpFJlsITTvGKnQSrdgfG1/2ju+SStIOI2Q2U+Y7fEv
	 fZpkmcCA6Hp6whbmOgpgCzlTnkGA/dK5naqT7coiPwUhyD8U25VYj4+8ql/sOUD4+7
	 qhGabD1sVR43k4rQ0d4FQqoOr83A9D80KrAcwGF2h+XVPuwpL7oJUQuWxzNZqiDgbT
	 v0qyCjkNCVEQFh3BOBHPCKWdYLJwfmUf1MAOHIeITmsK4e/49zR7t84r3Lh96RJoNN
	 abnyVFL65TyEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A41ED58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355229361.31720.15760889467693981732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d22cbe842c960332fed2440a6218ef0839eb0be696916b0748cfeac8b6eb63a
Date: Sun, 15 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773552293
