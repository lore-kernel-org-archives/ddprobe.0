Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D961DA60F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728321354; cv=none; b=U8mCmkj3P32O/bL3IpMa4G3YwY5Y2/Tz4fNnzNcQm5kY3kLT+3zcqvQjkOEe00dq8rxkA90piyjza7y663t4dhWA/YSjYGW/VbYASnqz1kmFtHvHwUs6ejQWb0ZlAunWqJVD7HRZ4URDfLgj2erngpsL2ydK2QUhiqGLkPBDcAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728321354; c=relaxed/simple;
	bh=95f0k1lrxcxpg5344xrLEftJpEyZfiThCl47VfHBioM=;
	h=To:Subject:From:Message-Id:Date; b=BW9VMyI5v4jd2HWoA21CerjDYof9g4bciuSE7f2Jwvr2JbbBqNdX+ho4Ji/EaNnePziDNzmu+g/HWtdPndiHy1FHRWseK4jspvD0edmv0iU45zWC4J/ijS48BLjdWOZOsdwIDQSq8Gyyw3FhGxuvTIY9TrIOCn1CgKzZqETTPrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP7MT0zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP7MT0zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7148C4CECC
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728321353;
	bh=95f0k1lrxcxpg5344xrLEftJpEyZfiThCl47VfHBioM=;
	h=To:Subject:From:Date:From;
	b=IP7MT0zlaX5RVnnIpi3vS3AhWiCqniMklcsyE+SHo6FWZw2VW8H6q85YGM38+cYX6
	 wAi5/9IXvH6pdUrny2KE4Nzs6Tf1PgfMPo0DID+GeVfJBD+wf98XJY046aJwcBccF0
	 exxNjZMzy66yo6RcNwDrweefLeW7Ph3fCrHfyNL2MXf7jAkEHSbEM8olUSOKscjyhE
	 YOXbGM+snRngMEQnufcKIvTg0iAT0I45Kx1YRc0R1+ZWRag1/Ock/D2Fg/ERsonJoV
	 rsoWYCNy91Xty9aza6uoO8LRj4wllaWMG/6KHty0wAKJaxKZPiQ2djpUutTPSmv+DO
	 ao6FkYLZoDeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958BCCFB450
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832135360.28050.17683457688127675962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1885eb8c3a266322ac613670f40463e876fb530b2aa90681dad7a3a14c9457eb
Date: Mon, 07 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728321353
