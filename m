Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B55145FE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743880195; cv=none; b=nH83N9s4DjI5WvuQgbwtzakYnZAP8cIpYL+Gdru7AHLdZHt1sTtyu+P/ItTRgEye6+jltjkakvol0EIr6/ilo4kJWQ/xoH99UOzuKGE0aOIJqQxEcl3fbId1aR6yErQkalzpIEdDeZhRY+2XD6KntmsE2Mz+tfwn4/WovvvNL28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743880195; c=relaxed/simple;
	bh=AUBi2dTpGaNniI5APaumS/WIwgYzI9M/OXhUs80QFMA=;
	h=To:Subject:From:Message-Id:Date; b=ZWRsRWAAchN1vTBz0yldQMVtnR3O7/gn4xmVEyvgmIdsTLFGE1+ocexL/ZCHf4tsZozJA4WNYFe4nUo6veYJbfvbH06HaJ1WkQS7YuRe2EJ9YSpfBZvugBD38WEqVBqV/MeWA8i5cKdidCuZe5QSX8gsNLGvKqNlUHV9aXU38ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjeu2Xv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjeu2Xv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0515C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743880193;
	bh=AUBi2dTpGaNniI5APaumS/WIwgYzI9M/OXhUs80QFMA=;
	h=To:Subject:From:Date:From;
	b=fjeu2Xv1BbB7dT4dRzZxf569xhZFo9iT6Jb0lmfj+Zo3DF1z8CTai2KX4ufspmp72
	 Gt2+tPXph+PDDt4X47Sm87/v0+4TPVCEkPORcTPhEol2seTBf7XZOmcerH24iHnjXU
	 DVnV9B+aOmpHXpexo0+aZTtAeM0d1WEaDv0Za5BrV87vPeBIuzFOxbA6rvCMeUEyHK
	 bW3tTOgFhJkTgHegc8nhzhIYsLvAevNF8SI88+gHALOq0ZPSkHyhTPGzGAvjJepUL6
	 29eikxfJQucldMwLCkHjI6vbgLqHWMbxZ43ynfhS6O8L6662K9l/Y2rq5yLdB1EJnX
	 zD+vvo9G+cF/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8C8C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388019360.4675.5285515835727155113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cef0e3fa4e0426c8864eb70ef55e86c37c471e3ed2df848bfc92ff2fcbfd8f
Date: Sat, 05 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743880193
