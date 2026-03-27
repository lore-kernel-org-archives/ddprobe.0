Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBF63B3BE1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774593294; cv=none; b=D2/IkuGWiI7mIC2/jT6jRpjzoWhhiu+/9DU9hvomrDmRKwOA/ZfYVkf5JWgFxNJgX5MP81FkMGabKujAjdRwkx8knQB38qo/KBYzUk3Ybr0efWVlurM7XYlDpEWPo9XXU17CMWufSFi7HpYSIQXqRc3bI1GCIUsYCD4XfWSoLMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774593294; c=relaxed/simple;
	bh=yQ9Ov25dbGD1lRpDmd7cnf2b02OVWjqhCpQ+xZTm9bU=;
	h=To:Subject:From:Message-Id:Date; b=Yap+7Y/wx3Es2QIpywDzipzT8ib+6d3zf9+ZpyjtGM6/oe3Oo1+EXH3ioSSRV6V0wqVDqaaTTI3DT2IG97NWyrtNMZEpyJdsUAyQ8aNLPLVgecrEzHmUfL8PEN32uStBaKXHEhbReRuVk8U2EyoilU6YWX5xQ2NlWmpLs/1G8jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOWZ/PvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOWZ/PvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982DC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774593293;
	bh=yQ9Ov25dbGD1lRpDmd7cnf2b02OVWjqhCpQ+xZTm9bU=;
	h=To:Subject:From:Date:From;
	b=XOWZ/PvSyFVUFxiiu6JkY284JZm4Vb4g7wDtj9ryHZVfeGZp9b04CrxspnBZ26uM/
	 AAO2Ij7g0HtX3HgBEaolQjr71Lw5evcdOB7UwuxX92/653t/GnX9WbiLgDkIByFxdm
	 S8ywdkGZhdSboMZCwt14L9qQ+f3lxkZ40fACxT0ZIolv/575yKsYW2zD9d/ApigeLB
	 d2ZaCmQn4vO/WuI1hyPVKfegF0pg9fYHt4MTKeXJdukeQycCY62tdYYxxxvfAHVrAt
	 QCLs/W328vj/SDoXgGgIfCDPfS645nkWDwuxju3vlNx4HMbSBrsF3RWKX/jLljarBK
	 zm+aWtayNsbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EB10BA430
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459329359.12838.3255976724640753839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af240f2e13b96479a1a50c33580c3df3750234d60576820e197f00ece2d21687
Date: Fri, 27 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774593293
