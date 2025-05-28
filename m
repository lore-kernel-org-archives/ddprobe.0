Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92A1DC997
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748402394; cv=none; b=mFIQ3Qy+Q/DKNOxCyYt2grAKAm+FBGLCrwfUH9j2mTvG871VrBbGznnTka5OvRRjDeS31+V256lqWn/RDOKMkA/Xs2NOh4OIOeYDhhx8ihHWWBy1uopqKAILLIHLzGZpWOwuWeNPG2jQJBNGc7nR6Y7hGn5DufKnYVsKrerI1L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748402394; c=relaxed/simple;
	bh=6OtUzE4tfd/TG3p2Q+gE86vbFdm9orNOHh74Tl1kvfE=;
	h=To:Subject:From:Message-Id:Date; b=jep7OwfTVEzTB7pRiHh4qFycJtxfzDlhErXGfnV6Xo75u4dRyy5oiI9iLLd6lj0RaIPyMN/jbeug39UBkxWdmFRDax8x4HFr0nB5h29fe67zmRwzhDGXicUwH2kpVMP5YRu8Zwqv426mLdSoAY+7+JQPGMRatfARob/5g2w31TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euBZoarm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euBZoarm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA0BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748402393;
	bh=6OtUzE4tfd/TG3p2Q+gE86vbFdm9orNOHh74Tl1kvfE=;
	h=To:Subject:From:Date:From;
	b=euBZoarm7QUxtgWzE+U9hsjku3iVvnUmmqxA8Ztu6qb2NIOBmL8ZENZ0rv9KX1kdP
	 fnlGYBFSXey+6si+5J/6KjkmLE984wxDAxJCxBIeGOHavOwjTPQKvdW3fCI9HAUt9R
	 59kLlPcLwhK/r9ibjpU+YhIYfKZWk7PYJo98NqsdbbM6jo/M6Vz5gaJTjtfSIItO7X
	 azIyc6a1DOkAVCpZ4vp0YFRZ8z0L8Y8kZQEABz3GoAwzzq7vXqBbxOp1u+1PzX297W
	 enfbKUN0G6zTSHikG4147h35VJll9Ww2DXAcdUH32OYg5QYlTwE/KlAkH5VyLXm4CA
	 wR6Fm+ZxiiJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB80C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840239357.21262.10572167369479979650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889cdd883189f7b57081269c203cab5a98de1efb02fa4c77c52e6d798b3e96c3
Date: Wed, 28 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748402393
