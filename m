Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396082580DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740002334; cv=none; b=Jm+M8FhHzfkPLHjoudRccZsxVJIngz7EL0e4hDJE8PEZxen8gfQwOscR6NOyPQKIrk5dIVaRPMxv+ZxUwGO/PWzjFaLogx9At/7zSWZAvprdYMgZW70IYIgAukD17rmgSSaDUGkcLMOEMCcHh5KmBxe32y6M8m6Id1dYruWncyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740002334; c=relaxed/simple;
	bh=JaukJli/ea7THs32kO0hU20xQqfmPR1FjeVmfkQF75w=;
	h=To:Subject:From:Message-Id:Date; b=DVtStdkp3hn0+Q7cIl7xqIJOJ50qrWpmcD37aIfkgnCfOs9sBO3eiHLGlbWXtOPgYxeAkxaxJaDo15eXB1jfVgjptjlhaTHLiIKJSoRkeWQJtOdZjRW4/PGJ+WME4OoQLQLR0i19/FE+tjkHm8UCLvpgBKrerDtBhb0X+7eq3MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlAHee7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlAHee7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20DFC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740002333;
	bh=JaukJli/ea7THs32kO0hU20xQqfmPR1FjeVmfkQF75w=;
	h=To:Subject:From:Date:From;
	b=OlAHee7DWf25ugbIiB1g0HGQ6lDycIgpFHzReaJ5BXPOgD3WCX5EMXG9OPwF921dO
	 DIwrkq0pK3YSxMkcGBkHYus44wWd95WZm3HOh02lcn3MnlqxPbQBYqwvQ06rvh+y/1
	 DW0cH0GbNV6AWJ6wjKAXPMYtV2vG9+b3cawtzCPwms1u7nur1fmUmk0//hW1N2TL0I
	 rvEr6oEyS1DI1dTG7QNcV3fNdPbyYzsy22BIJgqvlOtZbnyvmgwm7ukC4yefcZFz85
	 tlCZuEHWZJN6Pp5y6RDbFf/2jTFFIySafo/UqXWSY8Sx5fP8vG6zyegAJJSJokvIKH
	 HRJZFE5xuKgaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A140BC021B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174000233363.20015.3906995118507698044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8a0dc9a8ec324df9dd772c28e102cb575f6e961bd07d81ced876d4174285a6
Date: Wed, 19 Feb 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740002333
