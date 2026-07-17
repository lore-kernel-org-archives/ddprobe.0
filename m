Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C23137418C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784306314; cv=none; b=LFDeUVdqhhmMSgShOCMrErtsjXapsxyW4SSFwwBgOaHB0Qv6ARKrQuswxH90RWunow8bEawGVCEOb6zf9xsAhhQY8L4JR4XiIQdikwbujBeSy0M2kKe5h/bwML1oHoq4YxIC+KRoNgW57Va5gT8yEjMebV6gSgNMxihWX6ffUmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784306314; c=relaxed/simple;
	bh=DwNdhHZ79WSgIQuiBpxcEBcHz+UOo0gWEqpUTZIZCLk=;
	h=To:Subject:From:Message-Id:Date; b=datu8NU4E+++fV3gROnjaf5pJsmUWFzHAx7fN1Cu51E+MhGnlxNL+7Q6sRZj5wlnb7uuS9yOK6tmH+nuOD15uhSvnHiuws6Z3j6lZso9A1wyb6HcYast0mmjG9Egbpgbq+UWw1s5jzdBtOkvakiScwH+CpquYQ+v9gZQw+dsN6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE8koyli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE8koyli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF191C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784306313;
	bh=DwNdhHZ79WSgIQuiBpxcEBcHz+UOo0gWEqpUTZIZCLk=;
	h=To:Subject:From:Date:From;
	b=JE8koylizCU/D43wZ8UPdy9QuHUbKAmamlNFfCoKNr/xGDfxsRpuFRLBnNImh7uGK
	 pePqiZMh3P30GkskJi0MdIJm/TV8A1aZPROAhkiehVf0Lm/oNYEdKcawV8YMDm6AeJ
	 diTeJ/CYt8H/1/3zn+bpcXdNuF3HgtmGEIJFD3/H+iI7F0/HgSZsjpS8WMbeALCB5c
	 aJXa+DGueYiLF6Lhkmdoz7IHmFxZEOjYZy+6q/RcI7LGiEe+486+Vz1CHp2gkpV7Nh
	 gWtUL8lZwIoq9OIZ0Smp88TAq+BlxYzJz3qRXCfTWXDhHJLPvoU5BhwNrPKY4bVfb2
	 v3tM9dcOvzkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB068C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430631369.29946.5304589372595606717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ba8eb674236c94795a12b9ba22bfb34e4f7b7e97662afe1141c21eb60f2051
Date: Fri, 17 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784306313
