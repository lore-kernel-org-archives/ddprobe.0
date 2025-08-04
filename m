Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360FB227E9B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754339994; cv=none; b=uiWp0AwEVP6lO7szX809KJOrqCsAsorknylqzLJMyViLd6ynFWhR+TVey+eJxbL5+wlJcZChFqHjX1UWZ5ODiN7TEJAGNiztIWX+HTvXKn1+Sgb7UHCENzqBAj9Of2nLlHcfGP4mxDKwUKhxhRLPO8GNy/2M4ER87jYXrrsz8GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754339994; c=relaxed/simple;
	bh=iuz2CmDSLK/vuG7jnM5/WFJ2OOV4cYKEZolQxSFu7MY=;
	h=To:Subject:From:Message-Id:Date; b=SUp9cA3pXSQiGJuU3jALbPp9j9Tbm3F/jSPqUhD4eYvBPLIvBQx1Y4EbYWWmZaJaJg6oNB+5ymcktv2ozVIfb4VvirYt6e83n0dSxaqM9o9yRm5S5dDCXwibXuZbC0r88FWLHltrNt06UulknBKmAtVQipGctqENAADzVe4u/64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6jhl8Yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6jhl8Yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754339993;
	bh=iuz2CmDSLK/vuG7jnM5/WFJ2OOV4cYKEZolQxSFu7MY=;
	h=To:Subject:From:Date:From;
	b=R6jhl8YvDKP/1Q2iTViZiPlfV9r9jnNIaXRK+z7eLkEK68/lim7IJ3Ni+Z8GhDcu2
	 PDuuwA0/+WoxV4owhrUXqmnHaX16odJeip1t3SVFDD/s+D/OjTD/BVyCTRirzA3SSH
	 h1pXouMK7+ue9bGAZhhblywrSt59JaF72Clx/ectCHcM4SxwsMCV4kW2ORbnzdT8d/
	 qw4uvkp9sNlU5856vaosN1vrJADsh02dWVHMbu5RKSno6uRU+xfSQHvTXWMUcYRQuY
	 GJQOOOSyZbHxlDYjc5lj1vkFpIk+ZquxnMd2zdywUvu47KaPj99ZpjG72GbnZCry6t
	 znHMebRuYNS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D75C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433999357.26599.9355081317629077879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f343b5e57a2f718735d28d044a31a6db0f28915c374e3c26c1a45ecf003cd8de
Date: Mon, 04 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754339993
