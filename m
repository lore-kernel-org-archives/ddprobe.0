Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B31D1B86CC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720544783; cv=none; b=NcNmoPgubx9kOaxgDMbUg4ZXiu4q32KLHxEBDAguej3icMgCXkvJwa4E8fBB39+9O4HcpWZPCc7cGCeqR4tPjoPjAl9nJidhgqLujoS72MtREFlTVWGYNHHhuXCCYR067kEWtJCWZ2NjPSR3r8KR0XIHaCNMdQ54XveAU6lOcKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720544783; c=relaxed/simple;
	bh=YqDGNUx9pJQjB/UTXnkc+wKK1lmIq5msv3aGGZj9kHY=;
	h=To:Subject:From:Message-Id:Date; b=A570zZyP0fZhEtbF/vM8JhQlMizNNpWv1vnEoka+EtJcFWpLAj5ns5MuMWhqsNDNqP5pWIs90n6gwv1jvcAjV2H64vwWgZhKXfc1NghjO5X43mDNqGPte898mTJVJ/H/zYvmMAAnZx0RxgmP5papt737vSMkHQJf+e/VKlCBMro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWefuKCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWefuKCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9745C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720544782;
	bh=YqDGNUx9pJQjB/UTXnkc+wKK1lmIq5msv3aGGZj9kHY=;
	h=To:Subject:From:Date:From;
	b=EWefuKCZHOvVbrKxJuS7d5ndCUcPBxItfgILW/FwJ26gRV/ob43HS7SMO9iLA9SIZ
	 QNZkcWc1cM1uvYtqZWGqNLB0pqnoK7nZcV0PBFbO2XtwuTzoWhKtZWDniJ2MEtlFK/
	 8rD33POnDbIRg9RDzVtspaywrnuLatj88qgDit7sAEDTFJRKpeISQHYQ9ZUZIIXaW6
	 L1nltGDLrDP1AAu4L11M450WGHOB59L/WPKw2NEfge3bPwONESsu4roYm8kxwOPjmp
	 rI73ytneVhiiERAAEOfCnLNykuBbzaVdMrfjRp39iRoGLnCFWRAbOU82lf7nThR5oP
	 P2M80IVmI1MTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D458EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054478282.16630.11076645544827271609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d26e9d51e7e2f9bfb117ea9f913ac1a8e21c05bd3282885bd83d66fe3743bd8
Date: Tue, 09 Jul 2024 17:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720544782
