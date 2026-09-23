Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57250476CE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790199634; cv=none; b=R7yWgS7r4dMbXPVjdb+nrbWaNq/X9+rruccAufX1lMWtxQ3unic+67F5wj98fLX33w3GMbv2OXvIXsVoi9FBQnAkv1mbQq7BfiAAOYIW4Jc9So2EdJFYdVuF8yO6mdqKvBdaNkl+XVenApMaepfWPLf3OHVmOd90wq8cQVJc31U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790199634; c=relaxed/simple;
	bh=NdsJNTXODARUL0Nqw5Q2JBqvPidg1waD37n3YaF7oIk=;
	h=To:Subject:From:Message-Id:Date; b=kx57cSpN4ixE5lTOzITQhiDmZQmgDvyCPifgBBrxpMcjNIKt75LDTbFcgWoS7vuZeW7Y47SdMehpAWTjjZZhNY4tHt63cWOdL3eldZ5zbh3vZD2MABxqnyQqptSsiy8TUL88VmN2CU3LQT/tPQ2Cyi526tLbPzNkQZK0K0YY3vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNOnO7UQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNOnO7UQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCC8C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790199633;
	bh=NdsJNTXODARUL0Nqw5Q2JBqvPidg1waD37n3YaF7oIk=;
	h=To:Subject:From:Date:From;
	b=GNOnO7UQIX39U3AsSG80u0zSLHOaW4Nk/44wLxGQ6zlv1k7YRutUcUvQefMyc8kyp
	 SpSqdgUqYPg03ACacafCxrQNhZOGKBuuRehuGHJ8NCAuLvsKdUrkkuczoqm9vS7BR+
	 zO/HlDUDc+4E7bFa/k1HS/edoTt9n6eeoWhbO7cMkW6yLU/vE0iCjoNbBuak+LVFs0
	 eQXs3+dtC8lDpfFma/moF2fU1x1RMPKj/tuK28oe2SwOStqm6ZT0eU1lfGkv4t6th4
	 4zJSTLsZXCeFWz3C+F8JuBloXnluea9tjMkjH/htWkNYEshsTMBwpx7SixsCKzV/64
	 natzRkRwJ0diA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6453C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019963373.31729.11135925494119237436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe57581f57ee76971bd5ef201497f47ba77918b55a073be4a3558ec0388530a
Date: Wed, 23 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790199633
