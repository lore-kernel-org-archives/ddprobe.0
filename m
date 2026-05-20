Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E473C9EEE
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779270034; cv=none; b=ekLdQiDTJpm0hgpac7jkjG5foT2jwcY34hn/r9QlwN/GaG1DusWlNmEJLGkECb8wkhUdyL92InbvxJfmYvmQXzLAEVdKym2is1Onm3edmky/MBXFU3AMwdKkV4ppu3vdpAVilWjt/2qPd+eeUtzm2KCB0M1wLKM93rQCY6FEWss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779270034; c=relaxed/simple;
	bh=tHNyE65yPl+RaZob9ABHX+X5HA2weUpWZ4tMGoKm6cg=;
	h=To:Subject:From:Message-Id:Date; b=HV/0JQhDzbnHOgCu/oiYkdYplOZ/xIoppiNqCMtgzYmE3YO/Oo7e8FXE8NVv2fxvDkxOg1HwJ3LlnssdWmwAGuegmCvY3giO74XTTfP/bQ5zugmbu/HmE12LBybOSTBRbw4LgcY9sjwi6BoLnvjjSvBntCZvXxCRyaqXahO9Pak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAf7hlHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAf7hlHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FC6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779270033;
	bh=tHNyE65yPl+RaZob9ABHX+X5HA2weUpWZ4tMGoKm6cg=;
	h=To:Subject:From:Date:From;
	b=tAf7hlHgSo3wlLTXqlaA4+pj9yMpI5YhCuTmtAveT4S80S3GyiZ53YwX70qNQJeMo
	 X6xGJsVnBngM0AfLAZb3yi++AatFC0vQ3qyDQBN/EbREtNWpNpYYr0bm86xLEarxUe
	 yL5evZFpPCVKNYwjU6eajWpml/qahPxpesPn3qXITZ2qMrxW+RHynLjOL6Nbp7hhhZ
	 A47qyfR7wZJyyQk5LpvbvZ//tE4yAxXEsFV3qdwGipdGXNZI/bleNncupBa05SB4xH
	 /3hx/jc3RbyzWeaYuVENqVX4wGA4XurS+2khcsB4+9nN9w0cGVLyF1k9M7CjTbzbMT
	 Joe0HCPsXw3BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD2CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927003369.19583.7998195741946093196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25be5dd3febfe19ca203f18809d7979d99781186aa7e33862084ed6d65339899
Date: Wed, 20 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779270033
