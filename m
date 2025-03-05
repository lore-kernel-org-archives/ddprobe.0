Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615AE1FDA89
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741168134; cv=none; b=lnzkVrOl1lsRVpzyzmnopBNXVmwxAGRUEXIwsPO1UzTs6Hu0G4Y/m687b/8YroZdVY7WGciy6kSKwk3hZtvHcw6XkKNrg6WP8igUaaw0wcVxwMIIGBYlkAa2jEIcHXpP7zWrXMrK+WMdcOf6M5buS2tO21w6rJJaHe+ziS7SNxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741168134; c=relaxed/simple;
	bh=PFedR6SfXbIy4VTqI78gBy+qty96r5b5OQe522PDAKk=;
	h=To:Subject:From:Message-Id:Date; b=bbZoCuRcLuYhy1ohetmaYn6eYXVIuQ+1FMw6RG+JvlxKJUldoAJu2ANzrt/4tOIiEFh5/hcN1lCKOkXwMiGsc5/V4xzZTQp/6PYyhTfOIC/GvhhY6pAWAe4Jn+zcnOcrGs47k0MzRPupt+zlWAKh51j5HdkQSv9Q7WHeUynL494=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHHkTiXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHHkTiXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4101C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741168133;
	bh=PFedR6SfXbIy4VTqI78gBy+qty96r5b5OQe522PDAKk=;
	h=To:Subject:From:Date:From;
	b=lHHkTiXcix05mRYeh3ROOyKhZcgyaN38VemV1kU7fpN4E/8v1BtOsIrIufQvVK6at
	 E91AlHL5/P/hQ+hDZhI8SYcX43mmbQBRgSspY3A3pawmBJe9eXe3KeO0VQ6Pkg/a5z
	 0cMSv6auOp0LTIQ77d2Q3g3Y66rEp4g74VsdFuYrvgNkyGEcOxAtpE9algz6EBqZuL
	 RolGaSLfdVwvYhDmcNKwtnHyTIgpJ+bsPF4kkxW3lg6BB54j88NVBRTw1j1oizedVd
	 roNvfnFEZyzHxkOaaYRPAQPsURTVH916GYvfwCyfB9Y2gTRuClnkyVHkZbugtKAJCa
	 TB11GkwiKdNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B8FC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174116813362.18813.458790179081476544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9337feb6af95b9865d57b5f32ea3124c02b19ba5936a4c49a20101dae040cdab
Date: Wed, 05 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741168133
