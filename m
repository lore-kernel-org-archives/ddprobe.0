Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF4B31E89A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758296994; cv=none; b=sXImcHb7/y1RGNWcpb6fSshi/xeJXEWOI92Diz+gRXzM19MIyPID5M6vc1DZNxTnZ+tbCUEGmLDJB8DSix9CiDaQ3XdgOW69Ew2ElnJddSHisbyfy/YAhFnAw3SucIbFgtym/UhlEZIZIWXcw6oqGgCl3FKahovj3rF3nCndp6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758296994; c=relaxed/simple;
	bh=3P03IjC7N1SXu64f3aHf8lkyzZkEZsasJOqYlRjYU9w=;
	h=To:Subject:From:Message-Id:Date; b=iFz1IZGFayPpk92/quzJLPLSsjTqZ2Cgzp8hWEinCV92q8kytK4PVy766EGvNLVxqsjsvNfKsxF0RJiYJAJOFZMyAkB8CJgnmrHcIFT7VS/1503tADf00IkiwXA8ZTSMghgKFSpplX6X3SOYWwxom4HeqQ33rhXLP306eCASyHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WayNrJX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WayNrJX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6469C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758296993;
	bh=3P03IjC7N1SXu64f3aHf8lkyzZkEZsasJOqYlRjYU9w=;
	h=To:Subject:From:Date:From;
	b=WayNrJX7CMoK2Fy26EQVTwldiR4ag/ruANexnii7RyutogVPJS8u53SxbDMt8jcx/
	 ZeDILrMltqf+qqEqXrrGd2KhR7iFrNAGYca6DRgpv7JZWItXxYet5nKLfY9vh0Iq7e
	 1/rxBHRyVGrAoHBxqvCOad5+gvVGXKI5IPxE9Jy5+eEDX4ZLEEnRdzrlZ10Yw1ANUo
	 INRu4dbQ+BxG9Y8YotuLcmLWmhgJ3XbypAs1FfRTTM6+C1u25Uzaad1zERJCKFPypI
	 jDQQvWwnsLoZPqVMSV18r1CwvsTWsREfU+ONzPKzUudyRgxfsO6RDoF9M5R5RomQiV
	 UaAuIkFXdxKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93947CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829699359.4583.8793643963824963939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e279934964acbabcd58ffc9e9089a8f4cfd987e930eed218ff3eb813f0d6c18a
Date: Fri, 19 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758296993
