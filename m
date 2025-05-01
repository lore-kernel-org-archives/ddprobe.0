Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432AF19F12D
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746139794; cv=none; b=swRxfA3ffeO7zD3lvaj0Qwcbe0/osRRQ4UqqBPBgPj1NbQaxr1guw0T5mTW/P+4td/vkM5lFoEsGUGbzgsKt905TsA4cO53Nq0gW8azOXVC3P63Xhqf/S3lR7vfl/5HXbpzpVaYTp3y8LA8OtzGd+8A++/SdL9A97iZRKEkRBkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746139794; c=relaxed/simple;
	bh=Vuk1QSrs3Ul7zQii1s47TmnXy4SziAgZGf1oIWNU9zQ=;
	h=To:Subject:From:Message-Id:Date; b=EI4AzbLQ9hGRSaBrntylL9ic4h3UdF0Dt541FgMX2eIcNO8ptR4tBKBmtnlJXE6Isb8M2cI5eXEpppZH2lN2U7E0yC2fnsD6cQG/dQ5wPOu5MRHd6rS09LmHeHzOE2fGkI9zQBbMX5AiDB1slqsUp+TnKljWXGom+X6QbJGh3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmH2xyQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmH2xyQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A532CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746139793;
	bh=Vuk1QSrs3Ul7zQii1s47TmnXy4SziAgZGf1oIWNU9zQ=;
	h=To:Subject:From:Date:From;
	b=BmH2xyQncC7a2ZQOVcTWofmtDPAfVJigGVK0MDSyVcSrMJVAilEEkSuvFxf0HAXzl
	 BCwy9aHBATo9WWfs7KzFpVc6YX7Ux7v2H0TEw/h7Z8NcwjqAG4/Xm59Un3z6eQ1c9J
	 0PqAUuSi4+mun0FMFykwe2XM5jchpkKwvRvkFb8tTqsPQvYjl5fG+4lJoNYB+911lJ
	 wrZ6f/V/zcWFwjg3ioX+V6izx6qJKFH8VdshlLbDnWjA8GQSYVT/gGJuu7cczAvnZv
	 u9R8bDzssTlhVAkZQda/TyCvAePmGcCnucjGN/8KTRmoazHAOEDVzQxxX/F8AooO/C
	 psf13S30VJs8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9FC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613979357.2212.9464437862889887163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff03895f80bc39eba4e828c4e7ae81d289208bbef6166b7c9d22c13f9e5bd37
Date: Thu, 01 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746139793
