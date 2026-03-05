Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136B33D994
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772671494; cv=none; b=s39LI317tu8dxy0RyR+Qp2xav1+/mGfIds85EXSO9uoFbaNWz+vhPq9ETYxJOJBlHSEqE0xcBnq+AbAongmFk9xFfj3v30smFMz5yD5PLDQIg6GFAxIgu4T8XkBqqvFBN9F34w8A+BFqmXUEbd/DrpeIg7hU8pwhGfAd2KLVTIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772671494; c=relaxed/simple;
	bh=V433x7zpVy3yAhj/DFquq4YvPb4yl370jxt5FO/+054=;
	h=To:Subject:From:Message-Id:Date; b=DOFlCsVFnaOgSJkzpl4ot+GXJQbrVxDIa34uU6yD5UPkwi1CELszmd89ojelbwC9Tn1X5XT/y0EGc1wjOKfL1SMSUKi/me8VHQ6yjFwbtSDEN7s1Jc2r0H+7pVroMwJ7bgqKhndt7s/JafSP81PIt7nEqVPuRPPG5QBO+ULtutY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nafQ/rg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nafQ/rg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772671493;
	bh=V433x7zpVy3yAhj/DFquq4YvPb4yl370jxt5FO/+054=;
	h=To:Subject:From:Date:From;
	b=nafQ/rg0aL5xL/Rlk+bOCnt6ZR5qx5/TnuWsQCgyxveusq8x/Pd8yG8glFdHnvdWP
	 bNufPi6B9A7RenVWYcgTt85YrAh1aS41VYrUuJ5yxtzUOyMJFNHW8BQG9ipi/Bojxl
	 h8cXdYo0EB6j6iIkZIDxZmgiUafhP/jeL3b1VgPSGYZ/2Vqiuhe8hLHwp+7jY+atV5
	 YwTcIu/JyO7NHqXyAG5Wtax9PE0hyqW4a36/1eVdOy07FkQZ9q3XdQh1wMhWKOwFFK
	 +TuEHMQ37feK0G5vjVlJv37MgMq0h4iPrDaBTaYG7s83jKff6I7lt2jacSv2hqvFxq
	 U18l35MAczZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FFEFCE4D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267149357.20767.12421132168929192516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048845e918898d0143d103fb6928e3bc5f83122719460eaec5cc49481a86860d
Date: Thu, 05 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772671493
