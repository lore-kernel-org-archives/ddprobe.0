Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5094204D
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729053954; cv=none; b=jQ4VZJrnZC/VdDAaA6oq11Iy8NhZ7D0UAoxPG1JKlKC2qvECCmXUEaOtjtvOcJcOUIaVKpFzPgjgUEqvezUVnoPUKeLiEAWTit18RT1Vupsnv7QpRZLakRb3YgdL6FzptrYUTcin6GEbnRt6JUAjqPiQ4BJm4kcdyRNLkbxFc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729053954; c=relaxed/simple;
	bh=AnkPvUKUR3unNhwzyZcHP6/n9Js57UETnvqmSlz8+FY=;
	h=To:Subject:From:Message-Id:Date; b=BxUx4VReSqpo3J4Wcx4WiBb/HZomhvNZaKpdiHfdeLT1GJnygrWPM20rWAjJnVrKKoXOjyHR1YEYDkd4+TbKAojErpUFjUjn2s4UHc5ynfmd++BYpW5vf5BRgPX2Y/go4P90K8WU9zNzoII+jbYnQV4Y/U4pojg3v6HwruJFyi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju37FmfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju37FmfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECE7C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729053953;
	bh=AnkPvUKUR3unNhwzyZcHP6/n9Js57UETnvqmSlz8+FY=;
	h=To:Subject:From:Date:From;
	b=Ju37FmfSKyOWZyiz2jUPkf/cavSRJDc3LB+dGajDacw7UDNhBi11lsBgzEnHC4Tyv
	 LKPdtajCUc1rPAWUqFwJq/qr7S5cCcwQJntsXzarSGkhAKYeZHhrrl7PAhvv0eQLYV
	 ocS+MC2l9sdoe2NB24B8v2uTws7angoFKd5Dz+ZtZ+MeBNhfGIWtPIOg4RSVrhN66b
	 3OZuk9W9GhFdsCXeT4kFa5L4l2WoFawlI1rX1Sryze4K1xQnKTFHpE24oCshXPgMgq
	 YvrpkcYuka5bsstP7uNVilKo1rmmUzgl1ko7YaF6ZE9T8mTo2wjkRJSCpZN1F91Ufm
	 APEVNtZKLe6oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC053D2069A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172905395365.26043.13864759086606389189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec1c07fe784180e48aba701872752479bde11f8a22e88d7e9d29c115e91c485
Date: Wed, 16 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729053953
