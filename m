Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328F6381B0E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781960794; cv=none; b=tZp0JfC5TrTdPpyxnpRnOMwy3akFx+5fKO6VNgKwid1SpZTdwoCHgbOfZTluZfDmvNhyeAh8LLHY89S+x2KUkL//PBT+Ps77qryzk43fFOc9asD7UyYoaJEDPArL70oAOmAOK18WyUq7MqeQvbSr6CP4WOAJxyOk27CbmEP3YWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781960794; c=relaxed/simple;
	bh=WXuZm+pHOVxA7ehAzu69fypEGi4RXNYQ+y/E75xPwLM=;
	h=To:Subject:From:Message-Id:Date; b=Hl6cF9X11J+86j2GiUiTKhFW0pVU7FpsZSJBIbDrlXBYvklEwcAXotRhuAaK65pNYJ5vylpgwxqKjvKVRIhx6tQLWHiNyz/nMkR5uYfUU3kQg17poaTB3Xn5OJ1lZxq9FJy/n5FgU+5QgMjic8n/1dTOufqnI3dOeUb/hq1wMLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hu1+qYf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hu1+qYf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC16C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781960793;
	bh=WXuZm+pHOVxA7ehAzu69fypEGi4RXNYQ+y/E75xPwLM=;
	h=To:Subject:From:Date:From;
	b=hu1+qYf1ywcStigcp8a2tAJ8aHWL4GUa7qGf4y0vvUblNCvUSfMxz0isSEEwssW24
	 7TQ25b7PW1/L6JC2hg4M8O5snOdNq/3SsFAu+M4i0yLVjWtaDhWG/LVbEOGuZjx4Qp
	 iQFiPRPs6WaJ4QSjfTfM7EDCJaEOk/SlqQbYHujHGdnqicp4MJSzSc+hF2/xRdCdxL
	 zhXt7LSZ3YdvlRteMnZSXyc8LpoKVInHmQO0+/fobtyBtok7QpR+BX6sGAuqVanshv
	 pyObCt3A0Zb9GH3SwZAr+EcDQ4IYlEVA6uxD5O+CYWNmtC09SwaHR8fOpXbJRVo+gW
	 kBGbuWu0VKuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0350CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196079368.21246.6888064736326965823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508fef0c329124a151bd3c107fc9ce63317c65f30b50b70972d7d7f111309e75
Date: Sat, 20 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781960793
