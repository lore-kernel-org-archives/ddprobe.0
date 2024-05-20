Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C49ED27A
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716237143; cv=none; b=nDnYWFSQx32xMG7yJRH90SexbdMkrCmurkcBfUITuPbX+4r6YvqC6NoiPbwawYvhp5sqztI4bVR4J+3NJKBkJP0fbuJocK+Bqqc1p+qBd4PZXhA356vm9Mjsg5kVyLa8sMXtSM6ONLxHJaXUWc/dQB/i+cK/QGj41vo3MVEXwlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716237143; c=relaxed/simple;
	bh=7bSFvVAni81R5oWHrkddiL6amwVYFrNjgvMQ6biLGRA=;
	h=To:Subject:From:Message-Id:Date; b=lN05Oz6Wufqua7qzA8THIAShIMJrQfojNx36C+4HyreTwbZwwt0L0y5utPGyp0ki4yN1uriFojYjNHP/4KyE9g5wAKfhDWU03CNShbgeTrCnt3LcijxRQwc1zgWFPgD5sogh2dKC7bISiFUVhnbmVRvzT0YOodml72gw9DpmaKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2uImoSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2uImoSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF02CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716237143;
	bh=7bSFvVAni81R5oWHrkddiL6amwVYFrNjgvMQ6biLGRA=;
	h=To:Subject:From:Date:From;
	b=b2uImoSkIkheU/QJlTxOWbwT8YazK1hXHutgdiZc6e4Ka8Q1nSG3D2cI1Gyhdvidz
	 Devn1X84rD4/8+doXvVP9/vl6L8kUS6uZPcp6rKP3G1gxynXlb0indE7zH8tryfR92
	 B11inachkDtBkVF3OXW3Ujnyi1nvdIsOynOynIkURi2+YaVayKoLWsDl7z1cdkbvAA
	 KONQwP5gzOvy4yLrjrr/t6l4cEukEp3G2VmQagOtsejI1wmHNxuL9IQqYoEZ2X/UtX
	 ZuzkhOnzxKMGMHLot+f+EXdcRyzX7NpCR4XxY8xIoAaVO3tgnHr4JdErJf63O60Vkx
	 GqoNvzLl/jpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97E4C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171623714284.1058.4688248401480487731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f32836303116238c6296f5156de564ae504c085cf0f50874d61c261199f3d9
Date: Mon, 20 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716237142
