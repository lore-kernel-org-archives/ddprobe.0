Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9EA35E4EF
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757442594; cv=none; b=JKRugSC20pF3rYa2aMr67U7JRr3jKIk6gjw88EbJWYmawQVMKIwvH/CcBUH343i/nSo+lBJwyCFsvijJfz0W7eH3A4QrsDc/HOoxDclBD6peqNGcWOldGRFr/5lcB1mogaRmC8GA7rlYAtpTf59DC1+zRD0iwp7GDvX5wV+EmHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757442594; c=relaxed/simple;
	bh=cccOUOccddctBEtst+wydw7YkOcYWEhLfqb/i6cNdxk=;
	h=To:Subject:From:Message-Id:Date; b=o3DoCcd4RhJCsjJQmsEK/Ev9SvYbC6olRr6KAoK2eW1JJffp0tHBwcFC7fW/U0ReOPRY1555fOsi8nyh9LQwwKUxoiJfrxoe0CA+Dd4NLCF8iHP5laaIyIoFqn1MlBZcKQD65HFWtMwYcRT8TG2RDrquekG5wIqix7NK9LZbs/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8e90eVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8e90eVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12D5EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757442594;
	bh=cccOUOccddctBEtst+wydw7YkOcYWEhLfqb/i6cNdxk=;
	h=To:Subject:From:Date:From;
	b=r8e90eVCtIBJhIBWI8SdiHM9/d823k+6tlO3RerBc1NC4E0wJ/wAVXFlW98Q9BFpq
	 Vkotb1DU70Gz93uNK25vmLi56TvokLGEeEi5Isxzidd2Sg06n7Kdyr/Z4o+3y75vFj
	 tSeDoyQa7O28J6AVVQG9/BAxtNyenUtyf7wNInm+0XHqBLmiF6XoY9m8NqsMcS/+ie
	 0OvZoUKXDsPFHovLDb0J2WUUzslFe/GVPLpQofgX9ykFbiP0ARArmuz+AwWzJIhpN5
	 eizHUYEcUO2w3Wa8o11DsVyj8e3qoVVwjvExLHvPujWxYYlwcplkwRoV8KhNCqmkvk
	 lgyNQODvZSmpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB41CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744259382.31200.925437333635046866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8064544e586cee42d4eee18c63250efd8ba60cc17467985b8ca71dcb37d2ac
Date: Tue, 09 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757442593
