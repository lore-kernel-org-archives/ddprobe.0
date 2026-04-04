Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7F8145355
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775264134; cv=none; b=oI0X9qtEptpt3kaULJvr67yORABYuWlRBzQawQbaaY27KdPREocZfGv0Dec7pcNR4gJZZHP2sfDFsoRCW5ZHGJ/sOnaNrfKYGNGI8F1HJrOm69Y2ad4O3HUfeM2VGxhaO6tyoqFvWPIAjd4R/12NN0vl4gS3wvN/sPW7cuZXnZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775264134; c=relaxed/simple;
	bh=SDw8iRCxwzLraKkqztS68cH8A7hEo+NFq0o4RaZqlOU=;
	h=To:Subject:From:Message-Id:Date; b=gD65aCpgA3FKV+y2CiEhSJS7phxn9twiuNYRUVH4X9/vRA6EsSXoHwE1oLyQVvjMA84jqqF1uT7yBF0UxSttuvcdbNqgREWvbFb0r4M/Lxk4iAjLe4qustgY/u8pZEQhkshSrvkxEdt+rZXIcKZa+C8NX6xGKvivM2bKoebeLdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UODJKdm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UODJKdm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C8FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775264133;
	bh=SDw8iRCxwzLraKkqztS68cH8A7hEo+NFq0o4RaZqlOU=;
	h=To:Subject:From:Date:From;
	b=UODJKdm1nwcr8CW45RBVRH4RTj+UyL4wBLnEI9iacACzYnEqJlruZ78UGMl6CtoOI
	 tqXVtz2tV3v9w3uZ3A0wVXkLSBz3+OmpqZ53LP1Id7raM/jfRAFDN4G02ATihppMqz
	 iri6Cpb9pFebLvroox2LR5zG5eMsLQ4ZjTuX6iEH8HB9i9m3smA+KeZUulqCdaW2m4
	 nA7ypJC1C9KlGC+SXx1W+JWHGokAWmlCPAoieiZGwDdNNS71bcneeDSccB48kUP53s
	 /VHp4c7kXBvbyug6X53yJ0RTk4LON+2mUkqp+dJwqXYTktU/fQ9svewN+Cnmt6zOpP
	 MOkDvl7bEGnDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEE5E88D73
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526413368.25130.13428676856097671472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f406a5240baf7566b68c3bcf24bdc6268ec5c06c4c9edae9b520f920f5760d30
Date: Sat, 04 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775264133
