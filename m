Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1786A176231
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727434554; cv=none; b=e46Lkzdal1nMGm73YuQv2JEd+TcE+TRQ7z9aN7+OrkzjYqPA6/ane6rIkgfh0G+NbSZm92DPjY3hgkjxafZnenUvkdmeZernaW8SeL5+BHX5px60nqsyCPsSDxuM83IuU1ndETsCVL7KntKphIykg7KhDCtYVe25UVcDcddTVO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727434554; c=relaxed/simple;
	bh=SZulPS7AS4B6StvCMHTBQPu6j5mNmFzSmt9wkbOIAdw=;
	h=To:Subject:From:Message-Id:Date; b=eyG/oBh8fi0usW1J2PS6kFGnMyooZwQlx125C4uWq6nzhtScWQUWy8fx1J9kxO9IAqQhYnzpEr1xFrXxj2oJGVe4Opf2EHVQWeXSktLixTokAPr0cKv177nm3Si2TVEXuhFUNmT2JIyYistT+e83NmI4r8JvBY0H2W/XSWKH8Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUkR5SV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUkR5SV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F06C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727434553;
	bh=SZulPS7AS4B6StvCMHTBQPu6j5mNmFzSmt9wkbOIAdw=;
	h=To:Subject:From:Date:From;
	b=mUkR5SV8Fb+pNts0QcKXpXq/c+sKUztkwzX8DS2M2d3QMeWkZLimvpam+ITznpaqS
	 aUHwY/417e9/WbwyNYibfP53cWGAW8MisfSzrz29Ocg0o0/OBb5uY40KeG8pUPZTFn
	 RJRut7KgbJQpGNFXFv0BDWs1uCZoikUpvS4H3pCn5HiWKXeG6ZxC2gw9vZ557EZv5n
	 T+yRp+CB89+ta7Z5wjMvNDc5BT4NzZhDgjIqlqxphUioMRu/YgLRylaPbxwNhx1BXP
	 eQcyztXPIMXdvCjvOgS/5ow9NSO8UIo9JM5hHIUfowIYtiSpHP6NwTfosoHO78gWIm
	 +Z7wdes3VqThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C2CEBF94
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743455359.26717.4521090606242583173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da97962124499d8dc427bbf0abb57069c1ab9a398c856f7e47b393de3d70c716
Date: Fri, 27 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727434553
