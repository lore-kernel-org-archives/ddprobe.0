Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5249D18E28
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720369583; cv=none; b=bAxr9JHQ/O92Nl+guotYZXzLbBZdn8JEUBEfpnSE5d4fLB3U611SullGTUqY5ZQRyQWv2ly4Rr3FDaCpEXvBgxhQLYAM+dKn+CPJhmbSLpO1pqkpTa/IOY4Q4aI5kKG8EzRNyAoQM8uCHNX4UevCRov2Rhcw6c90GOC8Ve+gHkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720369583; c=relaxed/simple;
	bh=O9kayWTuP43OKdIuP3DxVfrERm4AjX0NmgvmY8xAgk4=;
	h=To:Subject:From:Message-Id:Date; b=Pa23DOL8BbjLj+s1IGm1MKUYlx3mTQZmU+QqTmd4T4YixQro+TJQFkbNoOXczA1PF7qdrE6PW8/yxELAbP5Xh9bNmK2iIwA31SpvYgzbG7vRprb0fP7AOnSWCDmIDFbdLG/Ud99Y5eW2gQwJosmvzW0nesqttwPZ9csIV/Snhxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqvjQoRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqvjQoRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D295EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720369582;
	bh=O9kayWTuP43OKdIuP3DxVfrERm4AjX0NmgvmY8xAgk4=;
	h=To:Subject:From:Date:From;
	b=SqvjQoRN9ew0E7fOgXx2Gs3KJ9jrXZStFKg+Ec0oGq20EplibxejVjqQ8lsoKn4rd
	 rNnrl+5cf/hEdFLaBfQI65nxcptLZgXI1eZJXruGiPsChvcTN/Gfq3aDUeZpCm4JVo
	 Pa51kOPD3vA+BCE3fpati59bSFbHYxopu9rK3kBbCVgrUcyGeGN2b0z2JZuxZdugf/
	 Z87bdf5Y9WlvEWWXy/2uajPuRnA0FCwjMkQA/zKkVkKAHP5ORaiIZGMXNO3dtAQCXc
	 Jfx07b9l8vawL5PmvG39IsdkSvE7E6wZ76b6mRH11QA50kf6ujsddLL5n9xw1Qw5Yu
	 oUGTZ/F1s7VTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0752C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036958275.30294.6829681604134930483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950ee144bc009461e1b81668ff3912551fe4782fedf79843d2ea75bf47b56695
Date: Sun, 07 Jul 2024 16:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720369582
