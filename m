Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9872F52
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720153523; cv=none; b=V54IgJCDTMqKmmddv47/1AM0fPTas2CtV4ttQ6FtbhpfT5VBb/2OG93bm1Na6kMx1HMN4TiWD7O2pC/1LzmjSzwDWwCEQPpfBRKiM/E8WlbZA2+t+eUS9lFG2HV3qm2152TnPwi/Q4v5yu0Ygr1b95li8avrrJdiG6yDZQfjqzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720153523; c=relaxed/simple;
	bh=oLC8kRU50Y364QA+cdkOfEH6IMiyusp6RZvZcI8KkjM=;
	h=To:Subject:From:Message-Id:Date; b=g7RvE/pMypJVByQMwi/YUj3fkg4Qh9Lwzt1kqvUAoAyEZ83+I1YXg4/xa20yXzJVmpIcCr5RaDAKfZCqsM9O67Id7tjfu/AGAtuXKNw3DGXm7zM5PZSyrjMIWbqtjz7fr3yyLikizTfQHyARiH8whSLDdMMMYLPdmn2pAUi86jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlGl+7BZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlGl+7BZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AB2C32786
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720153522;
	bh=oLC8kRU50Y364QA+cdkOfEH6IMiyusp6RZvZcI8KkjM=;
	h=To:Subject:From:Date:From;
	b=SlGl+7BZLKUwAfb4nFD8YNBZdzm2tS49TDURpGsazAOTm6BfrqaCs81m997XVzB5R
	 UxyLE9jxagEQIQLB6dPiqsyBK9aoOQlkx4ZJiRDv7weetpRQQMbL3zLWzwqNP4SbQs
	 a3hOnNoLv3Q2LxHJHG3YH7ZHVXchWfyHkGRYEf24amH6DVO322f0sAEMJ7IBoXIKiE
	 8wcOvbcHf83guTcpVeE0/u5eSAo3o0gf838uvMfuqSTUVOrljPSaELfMdLBBB3dB+L
	 owUGUty/7QSWDc2wFZQac+2HFhfHhqRY7Yaw/uQcK29HfHhFaFP3tET6p7ojstWlHR
	 qkuljYRudF3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB117C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015352279.26820.6749486247166156708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23d23ba063c2c231dd3614e8a6e8f6059b88a0fbe215adbda01c0838a4d6f8e
Date: Fri, 05 Jul 2024 04:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720153522
