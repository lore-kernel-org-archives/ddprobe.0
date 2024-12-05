Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B2322576B
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733418353; cv=none; b=uEzLq+3I150GWPY5WdKIDjFJACAkzY27lS9kimL1gB6D37vGX11KBV1piLzzz8g8CfwD7DjTTF6Or9BiWUGVUfX1La++mxbe/aouwyFBl7Nw74pePry3ksoeMOluWEyMDA1U4nmOEy/TExmfYQw1y9z5lTG8krEFUJy/PazL89I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733418353; c=relaxed/simple;
	bh=4oT2Jk6ByLrxCCBYK4M/iINLybeiArN98Dc4+25ifYA=;
	h=To:Subject:From:Message-Id:Date; b=Mqhftccw+ZAZgHn2GnHE07jN6fsk/ytq5IDeDOmnj6nLyEVnPjx1TMrZsOGVvWagHi/7FTlJ4M51IrIIIUjVkXMUqvg2pozeWVdjNno7JdaJ91VJfFyC+guegpvP1SvV1jC++1z2vFCmOdmX2pbcYcRZz+BWMM2Gol8nwYAO3gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogr/JcNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogr/JcNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A30C4CEDC
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733418353;
	bh=4oT2Jk6ByLrxCCBYK4M/iINLybeiArN98Dc4+25ifYA=;
	h=To:Subject:From:Date:From;
	b=ogr/JcNxff5YTIG+q+DG1+/FRGvawVW0n9wUkg2iTecRMEYfMUtf/d1GtnORu9stm
	 54B4sr6RQtmc40lM3wxuEOOHP/oUsQ0Qpq3kfsXSElz4sZ1Q2021krquLu2UJZSp6D
	 MVTWobkZt18XMPoGQt+INsa5VrDDvDuGc/p3a135jRtPKE6+7c0DyxjHGjvL4Qelpz
	 JAkixVhy9OkG/FQ4EHue5E/zqJ1DMjXL+eD+sfIbjKa+dofEH7+Or6En5FeCqu3okV
	 48VIxyXdjljiPnbj64XbVW+SNviAOL4NlYRpIcjbvhEJhv5I3sONy7+aOWWzUoI49g
	 EOa5xdeMB1ftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F935E77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173341835364.27750.7087702744455690653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6abd4430403c076ccdc8df368e581b0f99e9557f1665a26a87680dfda83498
Date: Thu, 05 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733418353
