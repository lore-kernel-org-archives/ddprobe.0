Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB69212D7C
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779973354; cv=none; b=rS1rf4Q5Rgo/1UZRk2y+g4pzoJeZvkTgXZXq0ZpQDrN4ZxrpG3SPvCZY8R+X5TNwAekTUrBYt4AD9yI6sYNaw2MW1/blfPfLbsMButuLdwGM3vHwySjpLxr+nOb0XWmCPlFZ73IPfEepoVgZhKfFWlqKGGaWt6zG8nxmXGXbtuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779973354; c=relaxed/simple;
	bh=m450Ayr/9BZdCvCbsNymD/EETD0k8oPjT7MTy8XXilU=;
	h=To:Subject:From:Message-Id:Date; b=dfGK4TlMswufUZyK9ox4ERECQe8908bj/y7KefD0rWxmkfOGVgsXJ38o4WCBlVJhM9YlnWksqmqjtAFUgcVRpxWj5KdESWhSqmNffVxgECLXSGwSOOwLWj5WYXs6pi0TpTkEa0rLy3dPeFYBXK5Xscw1Gr7wNA6obiycjtSIUlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKSMs4iS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKSMs4iS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF88C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779973353;
	bh=m450Ayr/9BZdCvCbsNymD/EETD0k8oPjT7MTy8XXilU=;
	h=To:Subject:From:Date:From;
	b=LKSMs4iSnYnaRQwWMEl+FforgGQ0dIF5OgWGLht3goOzFYDhxJw4jA+VTRVkvh+LV
	 c0aSrVKo3mb9jp+rdQOZ56etcd8nwS1GsPPLbw6J+38ANvpR7mpfxmViTNA8qBPnwR
	 EjoUU8ye56e8P0D2xzhpoximHtcqX1kJ6TLVNw4xnql0joFG5zVtDxzdp2JUsmrtsT
	 JrtT0HlN+Rp0uhhil3KlhXTfJ5GY1Df3mmfcMAGY+ToBCdJYBqNq29+o8BLSJrOSZk
	 VO6hdtCc4OlMuyKl5pWgl7+HILqOhbaKWwdZfaQWwdERJz0f23YBAWZD1vnxuZ63ZL
	 kHzma1oVPB89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A844ECD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997335368.2023.13326228039100059415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b38f935a019a5d02122808da99b1ea0530566ccea71dd60a7764b1f453643a0
Date: Thu, 28 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779973353
