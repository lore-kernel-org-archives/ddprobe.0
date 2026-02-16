Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB62459E7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771205094; cv=none; b=jlvVGg45YOVExzGJu0iQyWYCit/CXa5dXQ4YFAZzvhGPPMrQ2KIdaAPfGmiJSY2V5IIhehrhWVRYZ9cwZcAG85U3ri99VhIXsk5NjwX1SvMeKNrQzag/3rBLtztKTny/vya/MeQ/gSjJKW35YBVW8rye6BYSrCRc6zCZ+6h9qAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771205094; c=relaxed/simple;
	bh=FBEpsYFj6kc+IE3t5ZLifkqC/ja6xKyS8oZtXkFnQLo=;
	h=To:Subject:From:Message-Id:Date; b=uR1Ui5VOYtIQ7w/BSgtOanJkocvW0geEVEu/2qXESZ6zOuztzMjJCuKGMIewxCgkGwvCb/+8iSOHIbMkgIYKvKvMowDyGiw9hwngWqJu+K2YlcgvDJSEprPHopUIAa77Kk2Lc0h2NjF8QzSAPYKU63ivOeQxtLQv710QGgxuGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RK8kr3yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RK8kr3yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F96C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771205093;
	bh=FBEpsYFj6kc+IE3t5ZLifkqC/ja6xKyS8oZtXkFnQLo=;
	h=To:Subject:From:Date:From;
	b=RK8kr3ytJLjVt5yz7SgKgXyqztki6AH/QxG3bhH2LtofRtaryOL4hoVp/NuWjSaOt
	 O3i1dR4svZsAj5dlnpVG7HZpoSP/y0BXtIWIOsuQVHsb2boNmy9lsKldcfmvmaNL0A
	 Ym6d9sk1bN1YbEncpZ8nKDHTlsokcBHnqIqfNoKkTZ032pfeLSWie9X3GSLl7MZWxF
	 ISoSFI6+jkvGbh6j5QSHWtqg6BOBvy9eNWq3x+XmWz4ee7aaUWNDuqR5EoTdK9ykxM
	 Y5vTBVgwUVBJLOSh3w8uwTs31+TwnUqRBIydDsG9te+eKOHS65TR7tIKtKfLGvlcdi
	 LyVbMsnUdi11w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A417FE63F1F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120509363.19832.16451992706818362404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5b482ac271d47010198b0657d34ff7084dd824c4f5aabdf16d2e066bd70ac0
Date: Mon, 16 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771205093
