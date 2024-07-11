Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CC6DDDF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720689443; cv=none; b=OuXHkUCkyT7YQAz7grYycKCaYy8ulEpvXHmUCOPNi2uwcgG2ktEo0jWqVs+IhM0pbtfpLxpAC7pHyLkn1ufkGmWgQAo4eY8rxYxU+udHEQ+Q1DaDl5yRuHanCuzW9zFHIJ80HMlv2P9A45pOytXtlFSczzTOrk/JoUx6s0gHuMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720689443; c=relaxed/simple;
	bh=KdHZnVoQ+mvUxN0wTB8cm2cEto0h2WJ/OHdjvHJkAnQ=;
	h=To:Subject:From:Message-Id:Date; b=Pj1svUusMFAOV1JscegsAHXiyhhVYW2t3h2tG3LgRCz13vdIqX91afOEB/hbs9/JljocMWW088fiX0MBO8MD610qsAQlJu4q3WdTV8MzPGvTKkKI9z7KrGN25y9FDwHlZybHCS5Kk10Up5ryTyi21cSgjQbWs7usT72hsMXRmsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1arRIN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1arRIN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D14C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720689442;
	bh=KdHZnVoQ+mvUxN0wTB8cm2cEto0h2WJ/OHdjvHJkAnQ=;
	h=To:Subject:From:Date:From;
	b=O1arRIN2to2gdHnCqqC69FCUsWtvSkwCdaAjEquuhuwMPhOj9AIC8EtPGzy3juTvP
	 mWMVNlMQH2nawKVw5qddytjkRZD2DvebwXSh0DIb5t80DyjQ3dHdHKvALt0Bngp3FI
	 aAXQy8uX/drz85xp9frKexJNUL3Sq68SP8OuqVI9dKy5TczuH1s8yo816U14Pngv/d
	 sd/6rtjyf94Ib6v56ovcr4yHAmujI9k56mm1EaJMbHoq5h6gmDUsMiGo302MKKXz1b
	 i9XxlycPOx3fG4+PSfFL7N7QSMjfvAPyz7vX7Gj7IOYPrthUSf2Fki933z1+1F6UC1
	 8nz1HyYimRa/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF225C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068944283.5566.4174971671014042237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fd332c7e569de7076ccfa66e605b6535d49f39af20412aa98ecf06e1e3fa33
Date: Thu, 11 Jul 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720689442
