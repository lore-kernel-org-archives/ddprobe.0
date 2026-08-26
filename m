Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D71F233943
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787704834; cv=none; b=HHPygsoA5hPUxtoYVVy0IuFzcd80Yvksxx7tMoAlgOgLNxvVOzT+WwpKyZvuv33xC3O26BAeiltbYzJtSJ+F+Xvcp1be1yuGbhC/nci1FaO28tzoPMv/ceoiCZ6+nZrRPApjx0e7sETHBoXzhJhwV46IQuhFLJXZ/88QdT7gegM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787704834; c=relaxed/simple;
	bh=YWpgBaJeqzeQ8lnfc8/GGK61bo+g+BcOA3ynavJpNqU=;
	h=To:Subject:From:Message-Id:Date; b=dyVqOlSPkF4mxtGwlehHLdHq+1n8NwjjY1p17rI4sJbgcvTch3l2qOp2MQx7YnFwD35dSMCVfbFI1kieWphmtbNV8ZcnWxonSK0gIyBoOcK9XcUNm+i6irv7RVXofO/iQxpW+L/kSx9uFNMUm/+bSb/eSZ6fQSjP0ode/x3OEpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvdJzJ5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvdJzJ5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B3EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787704833;
	bh=YWpgBaJeqzeQ8lnfc8/GGK61bo+g+BcOA3ynavJpNqU=;
	h=To:Subject:From:Date:From;
	b=nvdJzJ5cSLM9ChGt3VmquDKe/p8cltY9VpZ63xQ5QjC3emwu0nSc6Qm+ecpYq5K6H
	 4zdxeTCNA2MlzgeEAqEHDSYj+iycNpyjPah+BfaA2MIOpdv68hlhy7x45S3sn5v39P
	 mrbZBEulAaxs00/P6QldI/C9iu9WNirBZhtPRrNr7pbEJyzWJxwmoyBS55m4ILcc/s
	 /eXvzatD7JL382rGsBxjelWq1Fw5TiS1CjNo1QFVHWqteQn/LMxX/yNco8zgsYyVRk
	 jne5CKUFIFwkK+ELDjXgZkOM28PyNbe0zmsntvGD8+eSXD4wo8vUgetqdKzoFu3tGS
	 /hagx+fy/giJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A04C61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770483369.7017.5971656861188530133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a6b7c0d8ff8f117602f5d430225362097271a25a1ad06e346266cf0172c4d3
Date: Wed, 26 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787704833
