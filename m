Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7C2367
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756358994; cv=none; b=Rb9G/FpeGCRzF5cxnBnO/UXFENAiFVlw4HQ3Hltel870BpnnD78JbKZWnXFtnyobG8f2l8j3sAr0wE/0o4KntJp5q76OqRVQWwfe7T6cAdia4kfb3hCXib4bllaQkcvT1AifdedwoFlg1JoS8mxiYXSIJRZrNDICiWTnBQay3c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756358994; c=relaxed/simple;
	bh=EYa3FTaH1CG/SVNQQqszr/w+Ub/jDmyGq9AdBhsrQTA=;
	h=To:Subject:From:Message-Id:Date; b=O2XVThdKbVp/VNsPe95yvSJDqIBoIFnTXIt7KHfkd+yWqVHoGzQuo1Ci4RINe7kzSWUBxu9LT0Epfof5OV3nj1FzSaLB25z3eHJc043X5HkNDxk2zBS/gDc0BKqGOSufBlkbmWReWXVfwY6BvsrrJcusXIkO0ijxHobBGqwvZrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0DGFlpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0DGFlpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC413C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756358993;
	bh=EYa3FTaH1CG/SVNQQqszr/w+Ub/jDmyGq9AdBhsrQTA=;
	h=To:Subject:From:Date:From;
	b=B0DGFlpYQ8K/w3UrESLf4Z7is/2UP4M/DRXfyBUygc5amzkNGgQYUU4OTpSblfEHm
	 9ksQcacZ8iR80jKeKKVdPtp9GFIp0sypxM+qy/eDgS6ovgRx96CI7H7fysHsMoCZ29
	 7eM2rQc5xIs8uMFvFYXGe5Lyu7qT8Uhvhx5N9JF3CcDcFHlbje/4a3s5vsM4B5GZB4
	 WjHTvOJyPHqhykdjHX5Wl5L1la66/Pr1DpDJV2ANs1Tu+GbyumnRFeXsHU79o6FRC2
	 cqiM81VRciI21tWXRxBFqJNF+SXFjz0vdPhAofWbXWMlqqyF/PGd9/bdXHhcVtOWJp
	 OTiewz+drrP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647BCA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635899360.24701.14237084751306557974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa451b3b8ad325f00e0cdc8126244710f531fba2b8b7e5994db8ebd03360091
Date: Thu, 28 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756358993
