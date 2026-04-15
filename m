Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156753264EA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776254254; cv=none; b=Dl3EwO1La/mRspd7uinc9vcPoMsD92RNwO6c6xfJpgWuPM7Qzy2MBXZ3M/SnCVsKs0BRKaoohgqGYFk8WtcdpoWa/xbOAyzxj3lwC9JYkiNgTMFf64v9ilV2GCDeehD0MlI4/ZQwfrjcO0mR93fDzDDDhB1RB2H+LX3nbtcGnV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776254254; c=relaxed/simple;
	bh=+GuQW7IhYXi8pr83/xvxwCh+kJYN3F2Ka05S9BXtDcs=;
	h=To:Subject:From:Message-Id:Date; b=mPb1ukYo/vCUBgmm8RTU1bedRNXRQsYyeQVew934A4Upt5/wAjGFk2T7mbim00SnofaTnCCi7iDZFYrJICnzjBbNqqoSDkubtA5aZsLwbtW+WJYnr1CJScGelZj5wBiAEADJ0InbLNrI/Nrghb9J1NvuJ8fvReaeklocgDR+oLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYqg8f8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYqg8f8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2300C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776254253;
	bh=+GuQW7IhYXi8pr83/xvxwCh+kJYN3F2Ka05S9BXtDcs=;
	h=To:Subject:From:Date:From;
	b=GYqg8f8K4+zNYWlKdGysSHFPbUa/nqmLJaZAqPSlJj52J9Xru7gsPKissrYXnWHem
	 Dsn0lqkf+UvzNijKvj4Gu5adSlKPsEoE/4IfA+BE6cFE6dWVvBhoyOkHX6opxwfYm4
	 Z/zXq1N3jkFbBav2dyT6Cff25OJV6RxbfpZkLFF6/tAoMHPruk0cRMlypqV/Gkp3CS
	 vHnEHQZuYwKUfopeQEQf4Dmt5kbJezOqqnz4G4JHX3mZ21UkIc/K33Nfh//VKkRmsz
	 c288lyRi+TLEqwQ2QHIgXXTVyHTsHKse9vFv3LlXendTxjEe/I0s8Q6xnOc0Q4YOnc
	 WYQiHA7WALf7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9534F4198F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625425368.22006.17850427721301943354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942097cbb4828665ebe529c56ea4cdbdc6e26dfaf5c6fe76beea5cdb79b34b5e
Date: Wed, 15 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776254253
