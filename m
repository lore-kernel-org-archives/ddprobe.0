Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB831DEFDD
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756665594; cv=none; b=glFEm/BLijznBi4DOIkDhbOKFpuWL/ynunZRuk48aP7kx5FnIxEf0byYFZV7LOzjqS6spHT/Y81Bve3V/EknIbEsqYUVsO56x4aDepcgYLEXiI7KbLXdgcVhBp/weFkwqLnwXTCfNBiDfpTkfOFD2WOiNy93J8mkUMjoVvY06u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756665594; c=relaxed/simple;
	bh=nrLrvbNXTD6gadxAfunSlyWeTNb1T1wICu1Ek/Rg1rI=;
	h=To:Subject:From:Message-Id:Date; b=honqFw/2JAFTOJub/E01KQVDPB/JbPszqVCflnpRUoJ6RW3yu38Hm19BfCM+uGzUjXd5DdGB1x/SR4dXM/PYd0ji6VOKwT4MZCvm04ITTO8SIbl84PaEfuN0pKItJCjPqd1+0iIxCmWkGUnZrJ+qypVMLBBBeycEynBk85MeMQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIfhgRrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIfhgRrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5491C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756665593;
	bh=nrLrvbNXTD6gadxAfunSlyWeTNb1T1wICu1Ek/Rg1rI=;
	h=To:Subject:From:Date:From;
	b=qIfhgRrdaIDmrF3G5pRPIu5R5IrjC3OWKQLYOQXcBScKY93GKEr5DEdTjynHeybPD
	 ekvfabTIkqik4H1ePlYarUlJmwXnRze/0+sI3HK+q1+1cRakASTcS0no8QuWUFsQQu
	 Av9FvHBMSgaFLkZ2GH346bTrJ3AwiCleBxFM0a86EdfjiM07I/+8JyvChcKt1fDEi2
	 X67TUpoi98itb/JlpuepbKJdjBhDHRmxbXIinypWxSeE+rC243Nu1YVetMn3a57nJh
	 MAa5oYxTfEAtJVzjcH92bjcf8IOG8BYOq6KV+cEe0z106fPiOMYHEj7UzO8w8cU6xb
	 tFCo3xMf6K7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91432CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666559357.19868.1966185317767137119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46aed0471f65285ecc8406f93feb0cdd2f2e0a01993ef0dfa8dfcae91d91a9bd
Date: Sun, 31 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756665593
