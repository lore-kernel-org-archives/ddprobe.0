Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B3B1272C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706632097; cv=none; b=FoUEg8cmZ9AFb13Fv5iqI6FJlXKzchTWuQRKYFmZB4m+laUFsNrRfgmO3OKsG6RlhiuB2Z+mS+12+hMgegcTdFF2zZtD97HlpGs6KLzhEGnX98xR7maNQIuOWXP15QTVlNStaJP1J8acTfJPBDrOiaTNflh4e1iw+Wp0NDCAeSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706632097; c=relaxed/simple;
	bh=FmnRz6faKh5ybqlHvf27NzaJRuj22PWcKN3ShNjUHWI=;
	h=To:Subject:From:Message-Id:Date; b=bQoefi3Jq7W6gv4LwyhNlbFE7G9C/D3uWAhrfvhvmsqTsO7SDAD+uNTtnHV20raTxWhN6G/PGLI06V/H8yt2YcDBjhHEe7Wlt5FAEbGzX8D7R2xwldliqR7PqP2h7qAC37TXMEdnE4I6UuogfHGan6Sx5Ykdmx+G66+we/do39g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYDX5i0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYDX5i0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C839C433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706632096;
	bh=FmnRz6faKh5ybqlHvf27NzaJRuj22PWcKN3ShNjUHWI=;
	h=To:Subject:From:Date:From;
	b=dYDX5i0acB1bBaciJixlsSZu36JRSZOFuWJ7DolwgC+H1Fp9jYVbsv7YtDd1RWpr6
	 cdev6W0MlqFHNaVSSPsTGwvye39v1x3ISDy1ZNlKIeOV66MdmTq2HUS0ouNZnh8o5B
	 qNft27rYhaaOXOgLi4Knat+loJYvXDe8CkXwINfy/NYlBEyiF1yET4KvvJadGQG0kB
	 lCoOOUtIkbP344WKRXPfVIsJpuE2FuPv8RiD49X3pXI1OvXc+kepS3eYGz7AUQP+Ty
	 1kTxNyNCj2CdFtk5y4IPIcMnu/QuDdK5PT1S7laxc2zgcxPXnof7nbeBqYmKSLjthV
	 aka9xQx2gia3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6275EC47DA9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663209639.25671.2300721107579093969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ce315c9967809a5412562ae1ccd55e76ff9cdd9f08e7892c83da33de8c4eea
Date: Tue, 30 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706632096
