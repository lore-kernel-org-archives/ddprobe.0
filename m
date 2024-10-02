Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450C312B63
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727907354; cv=none; b=WsOP6fC8boorXXSwH7A8h8O+YVR4AKQufxnv8WUVvMREsxt901QullNtIFwCdVVeLrzJUWDG0humKjHND3fOilZImvlJYMZDKN5lrEAjblXnI8H+wqDBdEzydYzVxsQEiTgXldUYg3Ihjhpu3NHMZDvyKQMIfJQVkv/Fwq2jmj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727907354; c=relaxed/simple;
	bh=GwKIi4iGI/+ZkIRj/wQNmQ2TFLvkr9Aszf8fT/1t5BI=;
	h=To:Subject:From:Message-Id:Date; b=fIsWAQ4iTD6B+GQq7E3Nq1dQdCzEkiUDkkCzaJa0qYxdBLLYZuS+gy6pxQlVnGxeUhrZpgfn5Ffk31SFUHaK2CUsmAz7UEl/i9iboqcuUGvSGcGZ3MznvMgwgm42k0GOcMZTfWSCbd/HgY/0vSq4LEAgXLRi2H56ktLOXLy/sRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfx04NXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfx04NXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF435C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727907353;
	bh=GwKIi4iGI/+ZkIRj/wQNmQ2TFLvkr9Aszf8fT/1t5BI=;
	h=To:Subject:From:Date:From;
	b=Cfx04NXRMz2qM5gSZ96GT55Af599SXAz5HzI2exm3YNV6z+vghUnStqjazmq81vIl
	 heIAGEK96i5K5JP40xqQPOgE3JtvOp3Bq2I9xQgCpEp7oJk1iHeu5ManNVyalh2pcu
	 NrQKhnnJOm9jC8Hk0c0BIjnx3LxAKqhYbYve/SrOgRrBFIHS8x9DLiI/QWNbKvn1eF
	 CEcNaL6qBBBhaFWugvCe8UZLfauR9tFbDpNYtvYaWKO1InDm7N6Go6AH0X1zojKC94
	 NQ6P1PIHA2HfKc1JEOa6ydeYClp7tu2wBmwusiczBNWrrp1Hg/Sn+dGgzTrh8x365E
	 wqPZCQEP1Y5/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81DACF8543
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790735366.999.12068284701288589079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a851502805a31d1884bc66af377bc8b37fda0dda4660e3d30b214e4a99e2ab
Date: Wed, 02 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727907353
