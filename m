Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F5A30B508
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764159174; cv=none; b=TIKQCmFCsFznx98wgxoGvJeqRZDordU+rMYRp2U0TB8EbOsotMltJHvRtNjjvbwHaDohB8n0jKxxPo3eJEpAc4Pn1BfRyKEp1y9qtz0UzyYhME0LUTXRAyHHbvt4XCSQA/3RL34gzjcyzC8Fk8VlesayMetImlrxvWdgl3ifTy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764159174; c=relaxed/simple;
	bh=I6D1eXVZUnO3CsjgkLiL1r4sDS+9nQe4zAlVm/zWGjk=;
	h=To:Subject:From:Message-Id:Date; b=Pxx+JplmGN27pQXz5dfe/0mgfMWDqtSwqym+9FJRN0dtdYrDz7Bxn7YNMGfA/HnaJbm3pGQ7a6jq9rba6NiNnniK2XhDta0DQ+f5KDFImO6HYqlno/s7RM1xj92KU3S5Oz72gpiTd6NaxPvAwrAEBHU3PGxoprax5hUPBwOwRpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOS3cRiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOS3cRiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A0FC116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764159173;
	bh=I6D1eXVZUnO3CsjgkLiL1r4sDS+9nQe4zAlVm/zWGjk=;
	h=To:Subject:From:Date:From;
	b=aOS3cRiyXJiNtf6wpNwJ+iBwoQYsojjWB6OCcdvIcWkENGXN7aB9hpFYg3rUdq080
	 SCOHHM0/WORUYSCsUbeAgghY1Hv56Ab3MeLKB0vfSQEM2x5Xtn52Sqw9Gt5nFxYjry
	 Q+n8iiWSD8srXKDQRyInWc2X7EYbgCnBj5sWNf/Xf1lJVNcASTzz7gEnqpU9/nAkRB
	 rM3OmscCqERZLBnmibepBS7s7qGtynIul0GH38u8ap5FUKhtC+xiaIYMRCsFmQR+zg
	 nBQTXI80kbpZueEi4zzclDkaKy6fR6etsya1Mi5n/yKgOBriWEsMb3VD99tCru7dYR
	 TL72JDcjWHcIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166DD1039D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415917358.30591.6212348223142606984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44290f7d00968e92051aeb1eda746b983943f892e99110f9055207e60903eeee
Date: Wed, 26 Nov 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764159173
