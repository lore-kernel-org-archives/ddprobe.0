Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1512A1AA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746218994; cv=none; b=CKUelrPpfttn0oFfxv90VrKpuBTM/Sa4ZBYhpZgMIDq9cgqQuz22v5vgTJ6wE3iTxrQWOB/1ZbKx0yEoyVIFpxZb1M5p/mCPaSrEEGbeer3C7bKPUJZcWrg4Oqed4B/DCqQaNqIdrFHuAHAB21Udpek6mab9zgDLDD4Skrlt9wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746218994; c=relaxed/simple;
	bh=8fULDsk8be4/Szxvhr2jE6u6r890Qu2q7jBKxtxBHPk=;
	h=To:Subject:From:Message-Id:Date; b=ifZ9XIGv035LTt0qfagcK7fnRFe0WToW6iXy67wJlGo3DC5yeH1IegHk3JP6Z11G4AUthRyFvj5czMxfxGjJfzj+eIuQCYrwggKdnmPqOZV1cC8c1aONHMQFoL+/03+d7Lso5uzIMr6/5/SJTO/nPbbng561UoumdQMlqCa6I3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1nKQ4hY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1nKQ4hY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A473DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746218993;
	bh=8fULDsk8be4/Szxvhr2jE6u6r890Qu2q7jBKxtxBHPk=;
	h=To:Subject:From:Date:From;
	b=X1nKQ4hY8zhqV//EE0tKOwroBmQon8OoEbccVWnB7RPMV74du0BmwiKZQ/nQV8IcB
	 izEzgSku6nIGRyRbiO+NEC5UVoT4lmBPjkDcLXLAjIk5kD4l6fwbYpClYFjfmqLlfZ
	 DDDt6vYihurrsyI2EzEAwMScb157GqRj9qyx34l2EpYAFt3o3XDdeQVtX8IHikaPcg
	 ePidcufKsUEpGTM1lr2kC0yFY8wz5Q9lnCdpCbafI4Q0mnfPRx7cas/XeUf7m15aBb
	 fJYhYKgFA0w0IVX9ot+ZGxmaVfuyjX5zW5sYz3MbsFTbkdr0eyp8xatXKjlDiShrVA
	 ksYtGR/XE8IuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90653C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621899357.4747.3913663103289262361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30562872571027cb7e7ccad6fe626a967030bc088a878541b878062f99fe62ce
Date: Fri, 02 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746218993
