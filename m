Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263DA3E0248
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778682634; cv=none; b=SThBQwfwz5cpZ+kcX2KNLpN9Lza5SwImcDSUewPVAe90l7CpygP8Q1E9gcnMjQ25ncDI2q7+Kw97ouqE+jRFk43hpbnjJui7qwAoskCUlWF2fqZ0VQWJXi/3jFiXaXG5igAhzaQ+4JigLcmu5u1DcwL3MsPN3HWJtHgf0Gie0Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778682634; c=relaxed/simple;
	bh=cajAUIe/mihXLCBGtyv+bYmcScXCRVgkWEB2P+7KADU=;
	h=To:Subject:From:Message-Id:Date; b=dVeqrshmXYIPPZDlFUfT59ByDbSoVoDuZIgGo7AeKVJh9pWc2fJkJ2eot+CAzF9ufLBnOVava/5+H8GpCONx7xgfJ17EP1DKXxR92hCmjeCPgpf55tfbAczJoYMfy1B71HZ1QdDdQrXFzKp5IjpBv/BDj9vVk5G0i8czWrlb/Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXk2Ua7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXk2Ua7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC85C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778682633;
	bh=cajAUIe/mihXLCBGtyv+bYmcScXCRVgkWEB2P+7KADU=;
	h=To:Subject:From:Date:From;
	b=sXk2Ua7cdrFA3lPmPUc1QEYlfrEa1NHoYp3JSHaJUEA0CR8I2BdZTZ/UuDl95IgL1
	 DYcGhV45cSAD4U4aybk2mEXcodRjfzTETxd1//AFDlIikH8306Cfmj7ubqCG4kg3ht
	 thW+RGQCM0yQ8xuuX1mcAupkT8Vdf7FkCVW6HrZX5B/7iyPpGP9BmfFxikPKmCYWgn
	 Qb+qrnSw7k8KDOPjlEv6cDwtTKLZWwisqIq/INdNf4JWKyuHc9H71riBaeHFctbMnu
	 8SNzxZP0FwEt9DpOqrFbL7egbcIH4fee2IkjD2uJ9YqTFnzTlbMSgaTimstnRicE0t
	 ry9Fw/8VOGiJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA8BCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868263370.21369.16296630714182515619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fee91dc60d54edbcbee072aee7206f763eead93f855d0f1b8dabced219ac08b
Date: Wed, 13 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778682633
