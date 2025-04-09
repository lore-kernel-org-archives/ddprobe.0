Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C31101C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744160394; cv=none; b=l8UGEERO4a4MVSHvkIch2Ite85VdJHMnmoWkeUUW0kCAayDYLdWm48LygWsUFGL4gg6XjmMmXeffigd+5VeCCxeJFRUFpGFg08aENr/6oLQC2qgRWJO0tqQKDDB9WJGDdTanl52SHZJ1hk8JyZswyXxw3jvBoruI82uO7iD1IDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744160394; c=relaxed/simple;
	bh=YukEygLMisgQX53rFuPjcveNPPI19RrSHtIhYJrZ8J0=;
	h=To:Subject:From:Message-Id:Date; b=J95Bke3LHRKCBSr3bTpUcHUufLvlnXvN0FkOLsji//ERP4cwFUnSlIkgYtmLxBiyWAajAiz8c5HqQAUZGvoqSZ3hf6f9ajsaZCpYUlMOFHDwlKr4iuxnVZ6rVuh7KvYn3806dgGdIsc0fzR2oicOLzzrz9ZJKzeBTeCIK76ht+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhd83Mox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhd83Mox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8498C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744160393;
	bh=YukEygLMisgQX53rFuPjcveNPPI19RrSHtIhYJrZ8J0=;
	h=To:Subject:From:Date:From;
	b=bhd83Mox+y5LTWPKXyU4Qu1QtHKVl4hcJyDtdvT1avKNek5nVJBBxT+HQKLJLdSm4
	 8MQtl9NyBFq0LcyPHHjU1yhxB1UZI5QSjKhd2bLckaa3j4ylbRgh5Pme7/GRxRA2eA
	 G+LJfXVwc4GQUPkclJrSRp51a3Eu6qmK4JLhPE5FNQyL3B4ZjERv8ZqlcXEgSujS/n
	 r02/WeZesEgLGdbFy4jE/nrxnLEdvLFdhT6S6eund939c4DMr58eXrct1JUKtBsOe9
	 se7fV6CKNP27Lhb9D18NfDSgQo/P2pW6mGABUMIcvNDcGTZXbpS+BTblgv2QC4hxit
	 ZpLp/SZTQoPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9BEC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416039362.23541.10829328233185789808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e18f2725fc4c03c8c00532c6d1105878a42bec3f3a0a9c465d7949da068023b
Date: Wed, 09 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744160393
