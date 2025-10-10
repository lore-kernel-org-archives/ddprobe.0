Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DF924634F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760094594; cv=none; b=XcX/CxP0EgZEa0S4ynJ6iKaLDzQzqiyBEa4B5uJ9n132GRIXs7RQBhsN8UdDxL675oVTVSjoCLDpr+/RGJ6Zuf92XY8Pc6ujzS8SrPf+ZNMV0M4xXI9UO64nw5PAfxFlwM5Qv51iAgrniNYPD6kfpbbDmLhAP4eLBrGjpEQPGGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760094594; c=relaxed/simple;
	bh=06HDimTKsxe0eMVS06CldztibJLtLV3GXEVTV/Ti13c=;
	h=To:Subject:From:Message-Id:Date; b=Dps2Th21E285X7myiJzifoz6Sav+VA29h+ITsvEDEghGoyAN+vd4R7UtEyhLAW67+0UMlZ6GdkcifUfQeZspcbWeoXpzFfUjOmbIUvoJPCe/obLHVps0LJNi5Ibkd/qk99JB1K9bOSv5sNwZBQoHm36xdkG7CEALgZw8NZgDh9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmZHDGMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmZHDGMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E070C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760094593;
	bh=06HDimTKsxe0eMVS06CldztibJLtLV3GXEVTV/Ti13c=;
	h=To:Subject:From:Date:From;
	b=hmZHDGMzIz6/g1skJXAgZ62Qk9X1pLtWPD7iw5jERdSQ3lQICHySgZZPi87GB+M5H
	 1GuIZVwjb7UC0bbKL3QQAUYjcswpQozSEyj5QmPZggCc0rSx5hgBj4nK23kP54nX5i
	 vR6Jt3A91E5od4mgmOLN3zKlY777Lf9xV1yj9vBc1/3f9e1De9ZkcZ7kQRXezG15zb
	 B/lczxwqEM0B1LmaZqSRF4sU7puJ31S3+ZDlutYbmGzw4ZEsQm4qDV3jz90fD3GiiY
	 HxYwe5/9uJFCcfuLNy8szel34S7Nl9tVi8mnW3P+7/sbaSux2qMRD7fnudmdiQAOAi
	 xjJ3jEJToPEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE4CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009459357.3434.5565844302894342781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472bedbf8ef851887d4ab1106f26fd52f333b160d5cefca974c60f830071db9c
Date: Fri, 10 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760094593
