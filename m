Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC3453ED1E
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789652434; cv=none; b=LiVNE83zkJJuGdHpELGWFkRlgCCGtyyofvRLeH+cyjiPshijTwClZc2/t0MV3/rf7ZIhDyxsJKFYU/viv/soMviFC1uvW7Xa/rci3biGaUoWtowNcE5/5ecJ+sUO+z2rwWNHjxaU/xnkCEcN6lb51qqgULeUd6NKfm3Vv2KL+pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789652434; c=relaxed/simple;
	bh=okrATbHo5kP9sgTio2JHdoOhSXSk78A54yFscVeNv/0=;
	h=To:Subject:From:Message-Id:Date; b=PRGGsE0+UtfP20ZJf604VQPxWdx+rWOV6e2X7HLvfXcgBEYtPMhxGt6P7oYRzeJADZSTbNka21mOKT/EHoybaHeWjAPSgOTlM0NlVtQm7PqR/1BbVUuEQRtw6mg939eiiW6VsXBb2mbN2/8RcBHf6U8L7dbtpKQ37+3zyT0Toq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5t7ruoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5t7ruoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC14C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789652433;
	bh=okrATbHo5kP9sgTio2JHdoOhSXSk78A54yFscVeNv/0=;
	h=To:Subject:From:Date:From;
	b=l5t7ruoS+dj2GcxcheUbZdr0p0wtQNdeg0SrNa03jeeeQUu1sK8iHqsMic30bMy0E
	 Xadg5zw2Dopg/KufFNMC8m35khUGCoXbNY5/0pg+pb83WEzuU6Qdba8CcE1G+LKUIs
	 SSW3MpdemLKUSSqng0YcrWtRKlMPCX51VG0oJBiBWY2scnNM4MigfEENxE0LHdW/5W
	 VhU4nmncpmD7Ol9hWf/+KK872mB7SY49/qsWzaC0Ei//UeO+4l3lVEopGze5tFeDGG
	 d341cUeiL4wPYOZeFwobowYxr6on0fUHgmRioekntu7FNyseykIQAiWlPJaIriGF3R
	 56h8WoiLq7tew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE06C982D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965243369.25984.17663237474075974500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f581134bed936d68d97d6f774e9a43b2946aee4db7a2002bd51f0151c3dfa74d
Date: Thu, 17 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789652433
