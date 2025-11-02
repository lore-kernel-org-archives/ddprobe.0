Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF93634D380
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762126193; cv=none; b=mpcrjqbkfOYZsGmTAAFG3ActuOXVTqjmKAMrAYh3npNnWFx9jV78qolGso9mnB53g2gISEH9CPCr/LxtLYH/vU2bDG64XYo5/5/s3qGsed8Cb3rYb4FQpzZWPrxZ8aU2PHDcybOh9V4WK1k8qEnMDg5c/wiJOaIT0PXfcvv10hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762126193; c=relaxed/simple;
	bh=Uidtr/ga45A9u9kFE7zvWO50Gm+mSeBjj7ZJO2ezyGI=;
	h=To:Subject:From:Message-Id:Date; b=OEfjw7NbPF0ooubB7g7qMujV+wV2Tfy5ElVx2wMLi3ODzmoCIxm2oJbQiC5niCaGW2JZiDKJoxR8hjjScraOQUANH8uO23l6K0dIeaB+wieNkVJEC+gx9Psw6/LVAh+fEO7qLjylFchRGrxwDkI6rHkZ1BzfN1WzwiIMjYrJL80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfVkfo/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfVkfo/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7789C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762126193;
	bh=Uidtr/ga45A9u9kFE7zvWO50Gm+mSeBjj7ZJO2ezyGI=;
	h=To:Subject:From:Date:From;
	b=WfVkfo/1GWiYikYc1tvUPJz34kbMx0UuCm2eW1YkpBNKhZQ6Az1L0X2S6JwiFJtZY
	 +mOId3Gj1SU8lAr4+PVSR7uyCMlOR86yljZw+uaB8b0XBP/4bFti8MQYAg1CWISQjr
	 tXI0jpwOj9Oy4rnkV3HX0vkDXkuOqJjfhPQJX03NNK6PHPh0BNNVwzji+cLDak1IDh
	 Cbp9ys+ghjVOCcfbxlhLx6TVquns7tN+rTKzD7V/9X74RwTYAU9TVFrxVH7VKA70oI
	 1+oOtVT5NUA21nLAFYOJXBhstjzBwopq4AEjlCKwkpSJtJgg48vY1KD1eSO0GLY9OF
	 2wTxiQRB78mKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98313CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212619358.18941.1335455352527936373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c26d87761bb52e898cb1539fdddc11223563e928b9607ad7bcfdfcbaa8411a8
Date: Sun, 02 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762126193
