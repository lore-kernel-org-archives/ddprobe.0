Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181AD10E5
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710125897; cv=none; b=u4Wq5qEiyPtlvOQ4cMCiGwQ4oBiztVw4w+hTecYCJj5sfes5tKWNeI7LnnHeJ9qquXx1CV4IFRt4e5YoiyS1A1cB1Q0UbVsIFrEYmCz3/6j/+00HRvwD7MvroPqbCDiTue9obuaLPzriIk5ENcyLcudn/e8h1wToCsB2paaM+98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710125897; c=relaxed/simple;
	bh=Gp2KN654tAfBzAJM0ejFFHlF7oKgRVLvmnNrmj6WjcA=;
	h=To:Subject:From:Message-Id:Date; b=pWbOZerivqUEK2UcljWBPS+0UUBsWDSVG+qwVXbQ7bD1aq5voPugYhun1lhJVcPVvCf75anqtM7tdhNXz8Lo7mg70A3MtjBLf/AyzuOyxAtSjqMMJlZAJXGb+EnhRMMa36Np3It3oTiYoRlXuuPk5iu2q2TYwF3UMfXFgGO8pkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIELL6V1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIELL6V1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A1EC43390
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710125896;
	bh=Gp2KN654tAfBzAJM0ejFFHlF7oKgRVLvmnNrmj6WjcA=;
	h=To:Subject:From:Date:From;
	b=tIELL6V1SUvDDSP9jF0EqJ8IvDiJYfcyGiFH4Xt7lMskeOpwJFkUwX6bZQG9ljM9E
	 THfHRAyYreFXvC2pyDu5uAS1QdXERHYCCy7RlWiGjqpSn/FA1VyczRRvqaIJGETagb
	 GIKEQnP5efNmvrdsGgB4MHztmRIHwsye2HEIJpkm5K621K47xJtRd8ghToGFqym3CN
	 TJr57Fh/7uJPyL/Jqvso2HReziyH2Nx3KgSODdl0l/avImbUiat3gZEBkbbkEMeE2N
	 1+OQN1E93bJ/IQiJdcUV5HxKXTo0sw9N2USr4OOvLfyEpJFJF86uYK82tPTVPoRrmX
	 VgzOvp17M7gbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631BCC54791
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171012589637.29141.6338420750637187387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d29dee0297e17f906afef347f3a38b1822170d51ad304f5cc266fe94ef19f7
Date: Mon, 11 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710125896
