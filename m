Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6AB28A724
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750432794; cv=none; b=GYj1J9c8cgFpp+kgvwO4mcbTY+xQ3DWV8gYhVt5JwdJC+qsbkIi90+v9PQMIJAyTo/U04xFBsdP23mq6Xcpt0R13uYAzYlTkT6WJBQDhGMWmD+y/gkU0RPZiuoWQ82z/+e5JXbiKSm9Wu0X+i8Ko6WQs4NNtr/wWhJzKsj1XMT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750432794; c=relaxed/simple;
	bh=+jAxTgICSByM+J86omifARN1QX0y/eQzoEbAfPtqW70=;
	h=To:Subject:From:Message-Id:Date; b=G3zdy7BMQImDUCAfjL7pHZgnIlsTEKt2VTeIpRwVEk/1zxr3CkocsY7VQHjnDGItDHQzA4ZRSYaoE3MHTtm7uEeaEAbAEGMLk5R28naMvcKRTH7wpLtIo7lDoaH44pFs/QQusMu9AjM8OE2PaeosEEJUv5nw2mjEp4epYbP2Wbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2gxb7gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2gxb7gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08BEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750432793;
	bh=+jAxTgICSByM+J86omifARN1QX0y/eQzoEbAfPtqW70=;
	h=To:Subject:From:Date:From;
	b=J2gxb7gitBFVktNQJu526xzwZCV14SRL7gFkXVoWxjihi7KyiKHQTgs869UFP7prO
	 9mi4kg8yM9XulTAwbJwm6rD0uWXZa6QeawOZpCRCwDB2S63lPk4v4z/oZF/z0dvK8B
	 Vyq/TDkXj4hIgq5+SeeTk52E4vCjN3MGcnNrOCHE83kbTQKMAxHrTNfQXKsZGHxu4l
	 ouTr8mJdPvotP6hNHPD6aYcOrtlcPLHZNCNe6NURQ8FlEWqZQrChAEy8TbRFS1D72f
	 7DwzBhHWucidSyZsosuMYMlDcfpz0rVU+LQHPxbqQtC8UtUeAL4M6CGI8mAK38C5Zl
	 yxluMVVKnInrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92876C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043279357.25288.4580142588014703066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5604fda5d484a3aa60c8841a63dfcf8c3564126220a3ca5932f585d644e185aa
Date: Fri, 20 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750432793
