Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FA5440A2F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791360634; cv=none; b=NYE9ONp8Zqlm6vYSlyYzWZMubZg/Mm5/3QkpmWzBwvAcI7ClyIaWpQZioouCCVxGzT1fCljVfITla/RdnGQFcN0KMSa2RJ71aRJIM+y/alEpVm3qsP9yJ9E8wCpTuZQsNw0MHV5WPxKPJ5F5eShPzG/oOByEv2wQY2zrvs2ORQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791360634; c=relaxed/simple;
	bh=KLo1/EDmi/YA0jxUjINvv3uq3gzVpwX4Nk623xo9RhY=;
	h=To:Subject:From:Message-Id:Date; b=fYn+Fxhei6zoZfHSpC4QFKGJu5uUnsb20lpBdv9I5DbZVBt5bic2FtkqaD6VJtYksBneS7KX85Ju9JoZDzwAT3EUSS4cfkbae/S4OA7UdlsyLeKQh8P8e04DULbnDBVyRkNYjKO5PF59kyyO+pGmGPY/r/pcF4TF7xSzuURp99I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJTsp73n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJTsp73n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDBFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791360633;
	bh=KLo1/EDmi/YA0jxUjINvv3uq3gzVpwX4Nk623xo9RhY=;
	h=To:Subject:From:Date:From;
	b=SJTsp73n3qwnwIVoAr1sVBrQzYc2fkBMSEkyou6i24HOswA8/UgOkRhPjqIlxvr3T
	 NL1ZZEpP34dvEhwwoaVnKOFHETN3gfg8DCMzDrxa3SPaBdEQ9pifJqE4MeH9H2idCX
	 O6nluAJXH8KjfVE2sh8exJ+84lRtpUOnpdMnVOYM+jGHpqBleNsxqNFyh1D+4ahs1C
	 yvo84XUzJcP40rtBIKTnfgex2N4XxkzYfRRNEV+RRDEE7gtmhaGvHKFmFbH9Sp9ETi
	 OkFT3yfMIiJsn82cHxZbg09As1TkRymihHoNzYeyAjBgMmuaezkZWkOEhhX5Jq9oD6
	 AMXpn4aoqIYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92CFCA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136063368.20690.112712352680602051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8324793efa359534e72e1292f0f66217ce92e04846f6941b19de24ed86874502
Date: Wed, 07 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791360633
