Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F3539021A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777546054; cv=none; b=s7lOrCi+0JJQCRRb4LsyTODp2iKLUv8amkwtxFjtvknAXFxK+75l5fuxkQdVxJnR9Z+OaRAYm4FTsAzSRiLazq7jRJy0mC1o9Gj+CU8DOrwIVn5EPdL6asVfFwjRzBKcnc3unmyoGsK6l4+0A8XdxVe0wLhffdkg1Hjd0vcPA5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777546054; c=relaxed/simple;
	bh=A76X0EIPAUVKdmHmmOMNnPYX9hUFaNQ3oV2W+w09UEI=;
	h=To:Subject:From:Message-Id:Date; b=f/ARkhaSbCR4pqdZwTYmhPhCBHz3j93Pv+eHrGL5gYO6ExtG3zNhZ7x3OmbVyI9oRJURv/uPwj2E3elNqNPcys8Z98EWH1xjl84hk8tfD0iF+VJgFtanUPY9DgEWFUJ8YTpblAqdmp9aj0ZD/ZoorzxN1dJfreswpPmdAY9W4bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoPLUNva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoPLUNva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4A2C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777546053;
	bh=A76X0EIPAUVKdmHmmOMNnPYX9hUFaNQ3oV2W+w09UEI=;
	h=To:Subject:From:Date:From;
	b=FoPLUNvaC6I4/Df2CFK7g5oyITKY8dGW5TJkdhmAl0YpRjHZLvkKKKZ36LZLhjj7u
	 /032R6g46+QZOhLeaQnqYAuw3PaEgJi4hC+miQ3MMCOCJfxJacObMCRJgCnoMBpat6
	 CMXBWhVTg+9CilYIDXG7dyjF4e9eRKqPqp3mryj0Hs7a8AXVfHcRwLyMWYxlJiEyCI
	 nCI0qsS2JQMZRojJGrUimLKw/IAmWwW6wy67n0ufG59NvLjI97BSsPNIwQTgkzcxco
	 dXQpAmkECTHY1dc9AL/irCgz9HQgjGFapMbJ9lijwi0BbWoMZrmilv7Zt0+dVWJ/gf
	 YlLoYbWDj9tdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA462CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754605368.28030.13672585909679291717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4caa81adf015ab971741c7a96338713ac4053306c525c6ef924ccf3ca6b985
Date: Thu, 30 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777546053
