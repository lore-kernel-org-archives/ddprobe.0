Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09923D268
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730944554; cv=none; b=DmuquAAh6XJYlt4n6hjGXhVouj8dOxnWvTKRSx/AWP3EVWhQ3ddoITCztvLY1LJRmoJ3i3EDsG+qU93tUdSW4m04SBWw+YYsHGTkg8m/TzeCN/BoS+34Ec9y4DMXfMslR7Nskpb4jw1sqfhMEQbbYAt/g8gI1w/IcGOEmmaadh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730944554; c=relaxed/simple;
	bh=l+lKuR3DMOxlXhwndltMHQOhMoExBSGZ1O6391TIUJY=;
	h=To:Subject:From:Message-Id:Date; b=S1RcQKI9EkeLyDLyyWZMiWumax2YE73ivkZw5zmKGK46ktELt3Dnj9Lw2mRvCe9MRMnHkYZn6GMZB34p82wxw/j49nyV68NYFcaQ3aQZwJlBXTEWW5GmLGOAReTAfdHgjUZiN4vzJZMQLv0HFzqfbx17+3sQSBLCDphdeu0NtR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTkNNiBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTkNNiBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219BC4CEC6
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730944553;
	bh=l+lKuR3DMOxlXhwndltMHQOhMoExBSGZ1O6391TIUJY=;
	h=To:Subject:From:Date:From;
	b=hTkNNiBWTLWu0CMN6TSmNluNK6dn7d2ttJ9okJV3Q8f9gO4GPu33rwtoOa+BTbR+9
	 StQQH8gfErkaTkJBQnxnYLFOt5JyDHwhW8hfMIZO2YDFWujs/NpuJ+hfFd9csU6EF5
	 VpQgg1evhNH/IdwD4EM+FbYKvsMcsxw9G4J7g9rDmfRsSDUpS4AI1Kxj2Gmg0UjvQq
	 4EPKAXyMxLtgo3kJfcED1JR3HwgbwwZnO38YTOCYBs/lcVpaXEkhkFZwP3mLqG1ydE
	 iHyPZvv2a9tgrPJ83x/cunzcc5ugT1hZfkSijFvQ5xqGQcj5aonpikaBNd3zaZpx+h
	 fU8HfkoQq9s3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EDD29FA5
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173094455359.25528.16210615961711838449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b155a8e54a22a4c9bbe99d71e8d5ca36157d1c4fa590143ae01e0a88fa815a1
Date: Thu, 07 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730944553
