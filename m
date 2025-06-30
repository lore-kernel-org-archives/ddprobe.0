Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212AB382
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751242194; cv=none; b=JbyoIiC5btiO17KvNGOcpHjUt3t0gSoAcePTw5uQ5bIrKV0yVjHJW87jr4mdHTLgLrOX8vMvKXgAGv6XFVkeTiEYqMwT34GCIAjqaX7kcMi641QRAqwvT0Upg30O47nO22jLQ0YvW1XUVNw2VOqK0l7l/IkYgXct3jjIXrW8tLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751242194; c=relaxed/simple;
	bh=QJkBxSeD7i+ssUQKjQJ7kdmXDtDFSaSTONVS8HO5M5I=;
	h=To:Subject:From:Message-Id:Date; b=bIJrP0vXbbIImOV+TN8WVFUFAuRs/Pcd6oBdqHLmFLpRpFT4tc96+SGZRiXUeA75N7G3ziKdNnm+cTyd0J07OoqfgRvUYdLxBXvTHSusm5SpcxhxXwRDzAc+sZZL7FtOauaDiK76axq3kPbERVAIBGBssUh9qyh3nOvSGRYrf38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzvSmHjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzvSmHjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751242193;
	bh=QJkBxSeD7i+ssUQKjQJ7kdmXDtDFSaSTONVS8HO5M5I=;
	h=To:Subject:From:Date:From;
	b=AzvSmHjlBQp4OYtYJqX1Bg9lEc74IuzE3YHG0Tc4qSbpdNZA6/sDF4NMTrMk4MEft
	 FKA9Mi9gmWG2H5PFhBPNl9lTx5Ho1h7hwO1R8AFZxrJNG1XtNVTsoeGusBA7EVwzKF
	 3NsqLv9fyXe/V2qNpi+ZYn1W+e80QvpaJ0YoqibmY3GbnztIULfQVOnXEUPY23sic5
	 /GRDc0rBxi+h4wgEp8opLiFuNEIP1CGxOqcfQVJwy9/ql0fnp/9Er8Vli6aNvkOnw7
	 LtBN7LuUEedjxpmaYphq7Q+H7F0Zclhf/bzcP1Km9D+w/ugRe8NbzuRL8TBGr671Z/
	 09thUQknfn6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98DC7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124219357.31373.590053350868855042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac19903453a3b967397f1d96705bda31e4be1190cd148903cfb6cd2a4e89b6f
Date: Mon, 30 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751242193
