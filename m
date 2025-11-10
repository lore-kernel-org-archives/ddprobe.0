Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11410231827
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762788594; cv=none; b=i0JhbsKjdDg8BciKLo0S5GXz/16LLbWFducatw84C4tF6GnHZDvOl/zTbf8CjhhdX3JiZYMFt8DrL17K0LDi3RU8DOe0xLbO4seH74frLPGDwqGuOsgggREBjrhzJtr0f7yoR6mmxugJFyjEKOulNc2rJZhPHknfDkGYX5zM7cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762788594; c=relaxed/simple;
	bh=svEJPl9HSLFTIjWPOxK2mxT+qimSCyb64NuhM4+Div0=;
	h=To:Subject:From:Message-Id:Date; b=a/HZEk5pXdKFlL3XbdKt7VWZqhTwlKTLP3oYowBFqRBxMP0u7WGR573aVbcw1OizNZHE3MP+9dRlZtloypgTRQhYlOz2oIkbjp2xT2Ee4/+75Z9S1Wu1jgysypomN7hk9uKJUHR58mNtmZ6AQWGEuinWcw4DgBOZ5SoCMMUP0OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRijWW6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRijWW6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B23FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762788593;
	bh=svEJPl9HSLFTIjWPOxK2mxT+qimSCyb64NuhM4+Div0=;
	h=To:Subject:From:Date:From;
	b=fRijWW6ONAx/yJbglg6/ji5rVCOQ4/uLMgY8KP/r3aVJNjCcymOkZZiQ7FY0RL135
	 R+kQBLsV3Fs/IDK+iDfDpR5vaAozJ/05gZUc0y89CokL1o5RXo9fKzF4lC6Pk/8+g3
	 qcdSAxooTpKS3hNnZb+WHZl4/+TuE35oC3+OJZXrgiFEs31+CZDxSk8CF0yhCU64A/
	 AKaZmL2U4jxPXNosRhx+y1gPXkukzLh/Lxlt3XQsr0mkSEf339bfdc7qxjuYzEbWnK
	 8DHnefketZ5+Z58e8hfNnhFJwtztTIbNmw+sQoYMIhy4fdyxlGasynptvOOSuAtx3G
	 j1Quj3gFkB1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9CCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278859358.25871.2152937951485326115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f3178cc985ccd93b07e14b88fd7630506c008364ed4ad03b3a0b7759ed905d
Date: Mon, 10 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762788593
