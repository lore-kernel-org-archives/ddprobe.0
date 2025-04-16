Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460A4183CCA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744810194; cv=none; b=Xaoi7i+8kViLmKLodNot/J1SR9uRQ9L1KLJ5WMYg6GbrbtumHe1BQlbLYVuGefm/iPabYLQ2XZrLFIbw9e3bk2ZALSxXEYO93pk4dFVIG3CCLuK5J07dET3KJ6+0OXJ8Il/mLIP97aMFgP9qI4YM5skPUAo0lb/agzcTL8MDEoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744810194; c=relaxed/simple;
	bh=mioVRfzPIhnyirD0K/n79PoynlivGZO5kqCAwKW7RYs=;
	h=To:Subject:From:Message-Id:Date; b=OMHolJnQ/rl+eDNN1f4YjupY/mTA0MNX3utWjUVgGzHgdM7JctEHBHQP5l9crv/6pLWBjbokhS/0LMp9BrHRbuou+32H0c6xF3idYOswRtVVOItmAqg9xX22EzNDuwF271lBBFiiCWUjFi1PgzY8XVUp5JjW3rcd6yN7Q9qzPU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJKkeA8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJKkeA8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD610C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744810193;
	bh=mioVRfzPIhnyirD0K/n79PoynlivGZO5kqCAwKW7RYs=;
	h=To:Subject:From:Date:From;
	b=eJKkeA8r/n3YVNC60BAm/x6Yi7+EyTC9vuOcGic2MHBE9cKv2W88M1Nl32zr5JdKq
	 Fn8C3+kz7A+JPS7upo8jiseJ8S4mqNnCPrgRmyiVD4PE6voXCX0dUCZcwTFkPRsIfB
	 /Ihe8Iq02VYfMlln+Ipiii75PyF1TbX8BEG7U75Fkh+4QccNN58XE4uC76I8xmLI9k
	 vfQ4Y+aWxCs0IpibEqichjRLyMvV4aHubayYiqFCXf3077yMxkiJeqd7MabqNOViIP
	 gdfaRpKl42Jp9uCpUCJNboRBJk1mXs9XcRxN8U53JdmPPyRYIWm8F6zYaQ62ankZiI
	 Zk0vgBxzjZXMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D759C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481019363.4724.8790819001995806425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a237308c9fd9af6ac664c212754123bc5d04edac765da9a5e2d36124e16a52
Date: Wed, 16 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744810193
