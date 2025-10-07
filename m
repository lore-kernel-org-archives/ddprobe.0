Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EC8155389
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759817394; cv=none; b=j9G3MNDt6MdamZLO/KkrzCWXpbG8iVMxtL7HQqyF1+dgfFpzzZvvQ1F5zEUvzLrbCQ3XiXRLmCJab9nrcOmkMf54WRnXP8KLRjjFFw10XEhQ6NRKqrMB/LwpXJdztkcuYFiANyV44wrXPoylOiYff/7yCr1KV4W09XlHAFsq/10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759817394; c=relaxed/simple;
	bh=yRwExX8SDmmrK5Fx0722pRQG4TqN4KIvXR1YgCtq8/8=;
	h=To:Subject:From:Message-Id:Date; b=I3Kpjtb1zlikkIjL7AbFfR/Ape3c0B2AY2ikN0cPYZkjrGcVxA7E5Yq5w2gkcfVDkhSosTRIjxLx9hDuOhI8cA2APMD9WmrNig2JBtN89aJPkQKvlIwhUaK2lc52qDAJ3SiTH3LrPnO6ELqUol0NdB1C8QsezJYa+qkSt8u67OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAK5ZTg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAK5ZTg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98546C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759817393;
	bh=yRwExX8SDmmrK5Fx0722pRQG4TqN4KIvXR1YgCtq8/8=;
	h=To:Subject:From:Date:From;
	b=EAK5ZTg3w4PSM677kewKUsFI87lETneSZEOMKLiBanHXZgYK64EwW057qoh6lLQeh
	 9xj2R6tIBfA86AZ1DOW6FkE5ohLIy7dpZdYELmJPOK3TE/0ehBUQuj4kB9Fis/w76U
	 BpQxnLioOC3gadLdyayYXRAAFZqNP7XbpESkaqiZCzqyZJYlLw/54wkRMx3UnljWsu
	 fjYjkIeE3cUP0xixldgpAM7nFtjEtlQcPk9mqcWu7RFStzxER/ZeBXgFJ/W3zDCqxw
	 GjdtPu3F/EJ1oXCvi0ZaXUaMqrdOARyzHX34mbk+vyFsnNZsQdz9vMnn2VxpeKYyMV
	 eRWg+eywDKbwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F080CAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981739357.27170.2518399312899797058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4689a774c59bdc74ff105439bce5c7ea3d0acd890a3a53ec9fa80d339a4e6323
Date: Tue, 07 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759817393
