Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A332139A8
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739540334; cv=none; b=dAmUvtAN+EWoFwKt+34GNNkqoahjSLOR5+TJGybwEladzqRrg3TVZZxKVkdOLsGib/usYsQztSNPkMaSedxUAhYEVLnmjuC3wuPq1gR6n5PS2ZIuuFH9wsa0KjjO9zg+TZcDqe9E879jYglh16qbrpBJgBsr/nNZVVsEc77hvIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739540334; c=relaxed/simple;
	bh=7W2lU/KMOVC2/iP/ZnnlzDbnxQnJfoEUv/nTfOngvx8=;
	h=To:Subject:From:Message-Id:Date; b=WleMrDXRECW12HaboBavURFd/60AlZId+q1U3sxkcgrwwVKfj/Xywp1/x6Un8jhVd7EcaELHhF2VGurYLY9EC1S474oE0lfusamnUbDnJj3GlU7zOv1qMx2rDMMJTHx8AkeKhQYqXDSaIgwMx+YXZnQSLvxNUca6ONR5chUpDEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfOf+iEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfOf+iEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838AC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739540333;
	bh=7W2lU/KMOVC2/iP/ZnnlzDbnxQnJfoEUv/nTfOngvx8=;
	h=To:Subject:From:Date:From;
	b=HfOf+iEUlwTj8wTm+HZxrkuB2eO1wQNklAz420qf8cW6O6ydP+tP9ngSHXNAoUQ+Q
	 tbrVd6/ZyuEmuTqktLvYZ8T+1zTiwwqLMVyH5K6hTSp1gWls4H0QfuLuj+n8VyyOcc
	 b6fOIP3Ckr8mHtv8uYBOTTY3CoIOw1ZHUspxcOL4Bbazui5nfX+twJHwG8fVGr/UIl
	 1Ju0ACnz6spMZg7AbEM39mtRs9HFXiBqT5ZhXi2K2w8YBUxVpgfmibjrKvWWUYBUbC
	 VaGpy/M/dwcUTkDX5mutk7BQyVdlzfLV3HptB2qEuwFCmVT/zEUfEj5UGXE8oDJRlr
	 vU9YlSm/E5Y3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CBEC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954033360.8621.1470352264996474383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f3c96f1302167afc63421d301b5422e4c01ecfd630d298e60c0200fcc1a40a
Date: Fri, 14 Feb 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739540333
