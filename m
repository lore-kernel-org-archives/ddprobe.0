Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D6C2EF2A2
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753282800; cv=none; b=tpSi/9grVlCkUDhlA4tEbBzSlNuNYyyZhVUGSFJZXV4tKzUNP4qAiqrZeBLkF647CT720q2hzUTfjJpIKhXx26TAdCVrRH8H+7NmjA7OvxLmiwuf9iKKiYFDcTwgybph/FgPZCzxuFtVbNkE2IG/4swRMIiJC6Dn/lcYY2cVwIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753282800; c=relaxed/simple;
	bh=gx/iQtqUBUweN5s+oNU1ZtdyyFnrmux5huvOJ2DHqs8=;
	h=To:Subject:From:Message-Id:Date; b=jvb3yso8TJZ8iUuOlCfBXBN5TKEcyQ/18oLGGiLkTxsNUkMLDAJnkZP7eKSWfO7Z7uZwEkS4RVgitGZiFPU23mzU2sHRxeQB7TFNf2CIasUsIJC/eBncrYqfEQCQdPgFzxmCgBElWLvgxlw1AOM2IrcJUfXQBJ8QjGkAvbTZjWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itkjDMIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itkjDMIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC8C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753282793;
	bh=gx/iQtqUBUweN5s+oNU1ZtdyyFnrmux5huvOJ2DHqs8=;
	h=To:Subject:From:Date:From;
	b=itkjDMIcGMUTuHOKmbp6sT90nj39t16bc/80Q4xX8j4ayX3azqg2gw6xCPHW1l+gR
	 P1jsBZPRFB8fWYi0zywxwH4aWRY+nt3TdBMj6akgu2l4y/aRPzPMDRN/gI7HGKaKnx
	 7Oxh5bXQBA2t/fExpOp+XKVjerx2iuMihWa6wcr3pZLOtfIX67WkpBls/41eVTy/Iv
	 VKZIlLZ9xEjtGZlk9/HsogRjwTRXjZ8OVE/LNsd3sA057+0VsPo4tHYGNirheJVCMt
	 xxK/TqX8d5i7zJcdMHM/ovEK4Rx+J+kehGnQcxjrTqLCv20DXxI4V68DGO4H8QpFbj
	 NoKvOCCBb8gRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D1C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328279358.29622.592111003434245807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4310287b69ca53b7f374bf9b089b411c258a3e90c6a0f48d0f3b0ed497141c
Date: Wed, 23 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753282793
