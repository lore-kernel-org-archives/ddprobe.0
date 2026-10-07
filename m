Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525363290D1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791414034; cv=none; b=rCPgS/+qbuVTmxc3foTuW8UJR3yBLPGvFmllGMtTQSrD34V8HKv65uacQdAH2jHEbB2KEniBUjhWJKYxAp19gBKzGX5tLpCRt21Pdg5W4+D6rcem6GX6TPAyKXj1t3prwxb2XTRAPRbZjpFowwTw2nIAsKYo9coiVwyEgKdrauE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791414034; c=relaxed/simple;
	bh=DyrN43GN2GkwF2kvvAPOAQS7v05plusNLll2xIsZvTg=;
	h=To:Subject:From:Message-Id:Date; b=fFf8mD4uGK0zcNIaqRK6uRlLt7IZmT+L503FnAIZxaSE/uB25epDQKKrbHpXP6HS7Op/I3NaYjOEal8LgkqbK9AEU/kjHmHam088qO2M3mivsI4EtXq6LanXawBJHqPmx7z30VYW60YTOAaVNbQAHOH+vx5O+3Wzy/UbjfNyweI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOommlRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOommlRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09CEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791414033;
	bh=DyrN43GN2GkwF2kvvAPOAQS7v05plusNLll2xIsZvTg=;
	h=To:Subject:From:Date:From;
	b=lOommlRErSHqSmC2P6UxQpwzrWEyDVeEiTvuFZ9i4uuF/O5CkiUUAOKUPNicV7Agr
	 blq5R3FFJWm6pwu3VDoqCd2c0v65vILbryjQplkHhWjQGKBlxKva9PbGBflUYRfLSU
	 DpU+m+7qGqcCug+7aT4aGIncKFzZ2BApatNlMMxF89vyqEhthL8x2YfFlkB5ibK+1G
	 WYtEkdT1MXr60mcLAKb7m8hB41LfxhxOy0iZKvfkOgH6kg2VzPyqXHz13Pnb3eDke0
	 b2H5Cnc6HntTS2JBolgfwmtu/GIO1gpMbGnTA5yK4bN890M7sFji70/Gpq8uJAk0r2
	 JPGyvS39OlDkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA395CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141403368.31433.1040661875548917984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d4e98b72546f3f777b68e499c754bf66322e5784647a5b7acf2229fd13677a
Date: Wed, 07 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791414033
