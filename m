Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6675D29415
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737267354; cv=none; b=Ao7vvP8/4KYk03/dCeRCe/+DJRt68LkfWpdnKpMWaqROohmbylBsKK9aNqJKEe48jtUXhwW1DKMd+Csx/NRdhC0uP6CO1PzOgYNb5YbuVY9fhXE0Rv09OcrRQKhCQlXczLb5pn9O3YnawtD8+Kr3K0l9ldaDchwToNTX62uee0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737267354; c=relaxed/simple;
	bh=07GwmO0h9j1LIiiIK87b0zP4ApwBzK3N9n9ZmGgoCJw=;
	h=To:Subject:From:Message-Id:Date; b=WwwnQDbLfeNG3OVVH7AtychkeHB5DaZi0lATE5S0QkatCUc2gtorlZmCKSlX4maiuYGVyECL8uMUJyinxUfEVn9PmCLASmNwzAVG8xIa75OfqXr1CoEm8GPNxz76UdsThU5ZuuIHUYojIKI4mcmubGUY96oHyhsCLg8Kt3MsdT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZkqq6ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZkqq6ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D759BC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737267353;
	bh=07GwmO0h9j1LIiiIK87b0zP4ApwBzK3N9n9ZmGgoCJw=;
	h=To:Subject:From:Date:From;
	b=JZkqq6ezYDM215Geb/un19cux253JJwkf1YS/U8aKZrNxb6o99Hsz50UNYL3DiMlQ
	 U4uBbP4xJKx4+ywmopMBqYuzYCY5HlAfTYQhojwHdpHZNsL2M6yjm6CNe6fDTzuY+i
	 6jt5K3xJIHSonkGbDZX3ilUMg/zOSHCOUI0/WpSD2ocrZIpyjyyf/uP+xOHzP20Sy8
	 /vMOE1H3nC+TYd79vxrKOGVai/u4eyol6AtAzf26/P2JYoDEs9a6r+v8kcj52D7SN4
	 ZyDHYCIamQEJbaSk+FnCsPfyd5834Mkw0T3y5BfabRNeUyiAZuE3brNe4eNEXN9wer
	 0/9dK56BVt2XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3628C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726735363.618.221785329804112945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43324ad976c00eee28ff31aeab66f170513ea7a7669ae140ad2b9884be2073b3
Date: Sun, 19 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737267353
