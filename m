Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB5881724
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754461794; cv=none; b=iGmEP2iR5JdryD3rzVwgrln1d89yojlaPt1TFoKsf/3CC8OtalEZxCoq08IgP8Z5YMXX0bbDCZ45v4he/UQEekkWBG7No8RPOqQuwuISiyQHPDfC8c7Cqpaod61OR75kEDCoXqAXNdeByYf/NFlHsDhhzez02JuvawUfrDUpnpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754461794; c=relaxed/simple;
	bh=HJd8fogH9zggrlK2S47muqUJTrE4WuABalQDwCA8sk4=;
	h=To:Subject:From:Message-Id:Date; b=mC/jDKZFBg7RDvFbLEtQ0A5dtOHAO2FaNpbRZm5lGfMNLehmvu0C/JHNEhvdGRSchhZ8JCmrkB/UWy8+dx2iXrfxNwjHNjnQOxBsyjvmRZ5q2F+KL3Y+YG45t6e4oAkWD2JiM11WmKaqE0c5cnL2yU1qDeGNqY98o0FZmTjEyJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iozKfShf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iozKfShf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8477C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754461793;
	bh=HJd8fogH9zggrlK2S47muqUJTrE4WuABalQDwCA8sk4=;
	h=To:Subject:From:Date:From;
	b=iozKfShf2VDVDTJIeuxuDXjXvomWRIrjJUCf78dV2RrtuzuFJ22ip3O48w3apxjI+
	 X1/yi+9rWvtneUnpwSZDoKvvyJmK2RK9CFg8cJEAbyrb0TPXU1MPBcJV7SCsScKVRy
	 SzgB1QsqYDSIieuW7i1ZR/qDEp4mH7nXgZ6Gw2bdO9+3kK+Z2xHj6t4blTbkNycsXR
	 gMHX2SK/AcFb+R+lUUz776drIMpdaQkbUWQ19g1ZFnSVEjoAvUwzbO80HHG1eHo92g
	 PrqcyxFQHqhEgQuNh1xVTcpi1+pfcP+ZlrS2nTqIA+BjgLTqhequw45ORLpN9+4Cbq
	 o0rck9pNpIxdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA45C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446179357.32476.14404898232487982659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc9eda714d2d78e354b25ab9c86ce77510b1b9d5ad8e5af63da2aab74869afe
Date: Wed, 06 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754461793
