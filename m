Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2078928C2BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787233834; cv=none; b=kcAuxB4VVgX+Sg4CAPVEZInIedo3l4mg9NZBvSeyE96Nlb35C3PQh0rdObbOvc78yc8PUCYr6ov7cGf+VknjNJ61XdnlhUzpGUUCG1EOq4vme1s8aOw8oz8YJYePx3zIe2tl11Q29GZNCGkX0EtLwVCuXYpjj9ZVMS5xBEmkgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787233834; c=relaxed/simple;
	bh=nUumwsSla5aKFx5MxVn2r4e9B65z7PBZ8xwwVjhiPL8=;
	h=To:Subject:From:Message-Id:Date; b=iHVTPgrEWXhHiODFIW7xP5th8mRF7cj9wQIALFyq0+InAkMSD0BrFVm0FH9UjR6yo7DbVumdnc7YrUZWsPegVpeIdKnvRSo/lBjMnmef71WCyo94dm294jsxJvY8gzx0PaiahSZNDm8AvlopGBowfKzw/aGQ/NLW0B885blG4qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbS0+vZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbS0+vZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAA0C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787233833;
	bh=nUumwsSla5aKFx5MxVn2r4e9B65z7PBZ8xwwVjhiPL8=;
	h=To:Subject:From:Date:From;
	b=rbS0+vZ7rnau8v1rC8DpZveG/+R0sx6re34PsPwEZZs/JCON+iSoFgJxh7kP516av
	 pkGP3/3XUKyQz6oNpYw8wRjeolifBcK/ZGrRKBKqaTaPMoa6uYPNdfyFynS7owKE1w
	 /NXsoNoQVTpcYX4uc+WUI2rZvLHPzrjvgLjeo8UBwX8ta/qhFIBF3O9WPh8qkZHb5c
	 9dDAO3W4y3imzYzWDzgp22P4in8dxLkjL0yYqGlOkzXPgscLZXXlm8DCNknsFBxmgS
	 hZ9Bmt1LKrJxRC7vkzdgs8iDM3jjf661t+peUJCVjJc5g2KJDxJNEu5zL1Q5ZbPwEe
	 QtaC5xRAPrOSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E1C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723383368.26081.2596100241437973070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a731f7fe5f1119f21ff0ec440409d1c5c602429ba08e89db4e95cee469da16fe
Date: Thu, 20 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787233833
