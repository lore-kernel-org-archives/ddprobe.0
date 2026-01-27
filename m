Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FC02C0270
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769504634; cv=none; b=U1fwtnyOU0dmCdWCZ6CwD74odYkXHDPuUw8JTlcG3MYBB6E8WpbeiZbQkMSPpnsVPhtc5TgPaw+XCbzX3ln6Sl9lQtdDXrfcXUucc9pbzORu5mSLJeB+CSAW3SkT/atxAbVjvKhjfP2//zU0F+zT7dV66Mvppz71Lo24bAA1pBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769504634; c=relaxed/simple;
	bh=s91KpBvApeYUT6jNQcVJHvcCEbdfJdORmmKF0vH8bTM=;
	h=To:Subject:From:Message-Id:Date; b=ePYRZ7sKz0D/eU7oS/9ETIFv2l5y4473J7P6cejzzIm3r47E+1PrWdVHfEf1Sc1hEVKXqCKBjtptsksHWhBkeNi8sDnb3sU/ryP6FqrB2dgqqpy4+j3G4mkakUanophN7ALgGgkor+jM9PjDU6lR02WMPODdyK++28ttjIg0ztk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngdIPCwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngdIPCwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14EBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769504633;
	bh=s91KpBvApeYUT6jNQcVJHvcCEbdfJdORmmKF0vH8bTM=;
	h=To:Subject:From:Date:From;
	b=ngdIPCwP8qbrybp39VEh9cZrRRVtCz9yDDQKsvUXUNdww99YdmbwCvLvz9+WYkaBL
	 TJv4IQJici6qptP7XJXZRySgN1mehnEs8IWo/4Gh8XDAVKWylsI1FTteO+C5GpTlL7
	 IKZr1WGxmPLs7hgIGaGL7OUbqWSJ5yxq8M1TWTEkr6zUd3/ijURv1zl52wkaoyMlm8
	 HCP8NYIcRwSmV/YU9LkhyzVa4YKVUjZNbp8M434GXRfRWabWgGARF6vvJumSfhthPP
	 38V6hR7t6u8hqWCjX5cW1JQkE8JdbmgOUaMtrUneGDqVBw2hjL0lm6nV7a4jEnmtzi
	 GaGCp1mt1q/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92352CA6CAA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950463358.7674.11181122655203245141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f4240a45131908fcc74796e56683906fa47c40bb3859c9f38b951a2825ea6b
Date: Tue, 27 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769504633
