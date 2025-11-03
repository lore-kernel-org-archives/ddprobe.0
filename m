Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED92DF151
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762183194; cv=none; b=PqjMXLNwu4TrIvdsaaR5fSqaCfd0IdVBmyS0kiGq6MHpbJXzt4JBQLL0XJs9+EpchYSJkJqPzvNkAd+BCqT7pSNux1Rc12pvNct+dl5BEdOceJlFjizwyt8oaIIEJFIgs6/VYoXNgEjlCGgavXG4jb2GZy0W62bjBc1iyQnBtUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762183194; c=relaxed/simple;
	bh=G7HEzio3T+o4LWyEHbktQLHJwq4YwkaJ8jJ83HAGdlc=;
	h=To:Subject:From:Message-Id:Date; b=HkXydf5Tteb5UKrWIapPY6jAh3pZrtDrSheKhVV8gEFkOZn/6gX2kBlWxcqLdgPAb0m0trBGDbZTW7tbrZ7Sn9G/EmQejf061JCe9u1RS1J58qXLtH0wGrQX8SnFXO5cf3Bj+iJl5w8UVkikSu9FSmsq4uXSQN0yYsPCO15a3u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH9Vsoa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH9Vsoa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E461C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762183193;
	bh=G7HEzio3T+o4LWyEHbktQLHJwq4YwkaJ8jJ83HAGdlc=;
	h=To:Subject:From:Date:From;
	b=nH9Vsoa96AjkQpaZ7f6NYDN9oEQUFhWMmoztbtuc3ldraYY+JVx/phUf6OB3WB/5+
	 wDoipZC4ZaIJPa2Dnwyu5y9c57kbDHnWqhF6V2sLZvE4ZBpcMewEHRAeKyTqiwey0g
	 Qq8KyQvnEJNmCHdDa/UrBB3V+nZUG8yoSC9H/KMUhzUHZjNQx+sE49BU3+8jfk7EnW
	 XCx6QZANEsLPpFjW1NXEMuwSuf90X2KBKBc7uD5uTn/wHA9gGaNrllN2JnRnExD2Ds
	 iO4EmpUTacz4mtP4XYzncajePyJSIoCbkbwpw4GU5KBj6dAXl2m2XeK5VkbbcXD9nk
	 3Nzx1HoxjLdLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FBCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218319358.30928.15757090363062256979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9336d9a586daa0caf63ef61c07aaa6284b408b6134275c2e7c5bd7d453b466
Date: Mon, 03 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762183193
