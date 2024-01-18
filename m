Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5EC9442
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705550897; cv=none; b=dePxNJ2qerY+groJeumP+IyuQQ8KMXRT2oXcDL5+KKKNqPgVFon44DYC/+Ls7FUpYS+wfiEehx0soW6X1J8LnpjSLQJZFzD6Rsw4I1y4Av+aWDSdD4PoaQLbzAQIX/pONMY4S4d674E67V7Nuj2gwkg2uohcxd4GMJCMnpZzSAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705550897; c=relaxed/simple;
	bh=XJiYcrBkpTgzXhWg2FYmZ7fXkFgUGb1VhGRAJug8hv8=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=C3+4zw5QmCyxyII9GXfxyESC08mBjNlnGV12y/cak9DTNe7510KS6ItxCBeiuhWFb2Fy4Ku9jba8iJkMIVBX5d8Up1h+BpIYMW1WqaFjmm4eHLQTkvpmQIzWwbyJwJE7sTPKmmoC0b7LnEYFLp67qK9Lz5WeNVvLOPlEKvWmSlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2FsNBZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2FsNBZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78524C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705550896;
	bh=XJiYcrBkpTgzXhWg2FYmZ7fXkFgUGb1VhGRAJug8hv8=;
	h=To:Subject:From:Date:From;
	b=l2FsNBZtmjXxZ9WChNFtsDZWvKM5UucnTts7U9gvFpB428ckEoX3J6f3VdNdVhW1y
	 4XmEj58Xr8t8MF/jxfrbvT0eqXqJu4VE3i/HLevz4gzy8jxdFiGmE+8vVjvYs0jCS2
	 OiROtGxsCzbL6vMx3J39mtB2/7CkqMiqqlUk9tK27Lj68gFP75kCoi/3NQKicKH6K3
	 cxRSP2nFPx3WxbduU6G4IOdNrqJbLSnZfg8AXuqCZ9EkqiQVe1hWdYlMWnjV4485tf
	 c9BLc/mLNSwULlf3v/V/+oRiDi4S3CHw1PGFTpewWGavj2NDBFud97cRRPavhpSmac
	 2KJjqUglr9BOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D872C47077
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555089637.16523.529585057211472898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fc069fc58ca0698d255f78b887cac45d9e8f75276b588d535242c3fec80ce2
Date: Thu, 18 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705550896
