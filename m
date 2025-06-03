Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1ED19C554
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748973595; cv=none; b=WxzBJJ4kWTpMLHYKqD9Vaqyh/4SplirFaehjDAJsM7U7ZZFJPhTlCjn2b0r3vhdn0yidXUVeVa2i1428IW44jfFvAWkDQu0gKm54N97U3pds2frcR1QlQNB12qqgCfmzrpi49sBx36jfPZWn05iojXK+2gB2vrffEYxqIyHZLQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748973595; c=relaxed/simple;
	bh=mhI2MaZXJhPktc/di/GOXuEL6+bP8fyfIpOHjqkdf2o=;
	h=To:Subject:From:Message-Id:Date; b=RlmUZpQGYzopqzhqZ4Kt/MyoDGl624za55ONTtEtg+LxPX1+VWbXmVoJsObFtbjBnUlhwyUG1NpvA/snHndiaSZCT6jebVB3Vj/ZMNPwPwAuGPPgKeK8sFo6i1o+nerVLjqpu4vBILqBAX320ysy06OQE804hux8LKaK3SsOTWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLoxchPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLoxchPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC489C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748973593;
	bh=mhI2MaZXJhPktc/di/GOXuEL6+bP8fyfIpOHjqkdf2o=;
	h=To:Subject:From:Date:From;
	b=bLoxchPuHPJPr9X+1lPAUPi3f/5aPpVgVfJC4vBFw142+zx9JrN9u+zHH5hp4tPWE
	 QQ19Ui0xANQ0yU+kkiZp7OehiVYnfhxyDrH+4gT1GupXV2Rr3i79tHw2Aj3vGw0QUf
	 qynW4YwHxPsQyYwjgB0E7jrbXu/SXXhsLR4h8gMnha51GnxgwUZCEzhJZLVPndqpzC
	 abyJbYUuHB1+i07W4TsrOG8ag6/Ic8uB3aKcsVXU9Mbxc3xQ+Vs4srNwvywH+o7bsp
	 mYl+euYzNJkz1HZvjOO4p0nSmRq7jDQtZf7W/v7LYtLAT+VtaBfL5zW0VOa3FnHesr
	 ME0BLDNDaX9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B55CC5B552
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897359362.19350.2004381131781256013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f899904eb10d0fd0c4cdeca93d02857e20608e4dc5118a7c000c5bfc4daf6ae9
Date: Tue, 03 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748973593
