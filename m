Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C0380FEC
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780451074; cv=none; b=es2N1GJ7iFxApvFTXKFTUgf0ISa0nrBP+SgSpsP/tbWOR3Iiusy6/aQ+ZxNwJPuqyiM4OGM7k+7MqRYO6XndnYKz/uQmoYCTdNjK1c7S23mCLOVmgibA3htI+nwd/HZmCPwc8fCGQEskRe9UZp4fKpVkNJbZLW6Nh6vwSi0/Peo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780451074; c=relaxed/simple;
	bh=TSUGU25+nwtd289B1qjEkIkxl5RvkRDyO/tDIMTKNxA=;
	h=To:Subject:From:Message-Id:Date; b=jjVHUcU1omxwQt/9sd8YDDIZoP+at0WfWMHKIgYqFc7Cp2qLNhdj/3bnbJ1KbCKnaZAqm6dWojQj3xsmju3CVCJOwrF4K1pgb9nOsd4f2V9Y8dO0IgesnnTGoUJQf1alelHKJRBaQIrBiYlZKuGt3OldOwk3x06QCSEniQ73oN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaaLx+jG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaaLx+jG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87A9C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780451073;
	bh=TSUGU25+nwtd289B1qjEkIkxl5RvkRDyO/tDIMTKNxA=;
	h=To:Subject:From:Date:From;
	b=UaaLx+jGRLt1HGtjRxeeBDqJVQZxFg0uX2oV1LWb6Z5ALHfSr1ZxWKwAayPoM1NcZ
	 rj6vOcRNXOZ49M3MhyFSB/H84S/YI67M0SuKsnDFDo3+EDxkvOg3vkk5ONmZIrzGwm
	 G/qKeSfiD8FiSITi5Cg/Qc3h0FCOYc+14PM2icigORpoP2ZNkSFYNqDnaGfgRvQ1c5
	 b3RZFJQq7JmufsfXToZOhipxQT9zljv4SMqKaVYsrVSuDWw1dRye8KYru4ZW405ahp
	 27N43k0HVZviqR9aId0iRjjXv38qUkmGHE91EuJDMq1XsxtX4gyqUb8urA5ERCIGeZ
	 SGt3j7DFtQ0VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05FCCD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045107371.2374.9526607533322871550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036c0b2b3c3079f0db188e1de5ef2d24311bce64d842cb9692c9187719364aa6
Date: Wed, 03 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780451073
