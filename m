Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257FE13B58D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750133394; cv=none; b=YvCKShFw6Su/oZTey+3A6vQbA+BdvmZdjR+Khg3lgFJlKx+KaJCkH2lhpb55g/zzO9AlaMHA+NZ5Zyc+8wb31avV3fG8MxbxtKIPURm8IBon+rdwqw8uBLR8P228FbBRwVX1bSA/zXIOpKwd/i2L+AXDgDwCu9qTEQqvk6TSpQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750133394; c=relaxed/simple;
	bh=ZiNvK3Uya8ehhQGVi2Z3dIC5rfpplrDAnHPsf69/Ad0=;
	h=To:Subject:From:Message-Id:Date; b=t3eOfWPmVqVWClNuo1utA9x+dK5zJR1kfYlh71DH1btCU46Y6vjLZs/0mrlPya2NYgOsA0Dvg1RqA2wXsGjzK+u6vC1NE8OJ/iI0XdChUfW//lCIsz1egaJgNANeQLerjZuWg7gYJdUNyK4k3t5iBYfuvrNm9D3Bl9FUtXw8QUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YytOmgAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YytOmgAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1084C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750133393;
	bh=ZiNvK3Uya8ehhQGVi2Z3dIC5rfpplrDAnHPsf69/Ad0=;
	h=To:Subject:From:Date:From;
	b=YytOmgALN7pGzZ445hlfJ+zx5i8Ev/JJFY6qeJl2VoC37yJ+4Po/COIVh4LhEHWM2
	 G//EbrNLNx07xSRZFqyjLpu2tUUyNuIBMVKUi92RGJKv+xHG0RRgc6eQ6lAsdZIkU6
	 orOjy1Y9IALbHD9oRICt4uZkqy7JS7n/XBNmVnUZ1y2FVV6a9biT8BpZrwnxGe23j5
	 zBExVczSSb4jgz13J8T7z2WDJh+nvTjtGOlvoHX/4kk7NIPvy4gjyGFVL6o/vMeLHG
	 ynlunQ8n5gpm0BdYyvC5vAgupXN2m7/jVLpvDiNxvFm5AKQ6QBN5K57rBAM/OQwyT1
	 2e6tAhcbn4z6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F330C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013339358.17697.3103323194234261562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c420b38cfcebb1185e5f0fcbde2f67032b4228d2e063416d60b448c751cd54
Date: Tue, 17 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750133393
