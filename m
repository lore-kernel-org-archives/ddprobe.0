Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CCF37881E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780385074; cv=none; b=rxxFaHlaFrQ1acEmkKPmitkhU1jjpcZMfB+gxvluPugbEqpefr0GwmnweBj2E++FWi2YXBAk9LHc+le7rjJEI4sLkx2H4ftxlfMMkKBE9sURSYAr9UcE64eddv/Bz1uOZy+Bq5g9JexxqfFj/J22M9rzLVIKH/3qtz1MI2oN3lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780385074; c=relaxed/simple;
	bh=1DkdSBunmrVN57BehiALII52moEn+TRYRbfpz1xTKOU=;
	h=To:Subject:From:Message-Id:Date; b=FMWoYfVn35pyc3dnskCx77lYFMCt2JAPqGFdKnxKdmjUCUEq9E2itYkKe5CrmOor0ffb5noT2g0BiGTd7YebJU6UTmc85DtxXWDaupXd0T5yvt5dD6jqRdTOdM5dmmfVZXDrWZflqcurYlhco8mzCDY8WVVqH2AX4UBSutXyBZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5Xs7bvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5Xs7bvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD869C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780385073;
	bh=1DkdSBunmrVN57BehiALII52moEn+TRYRbfpz1xTKOU=;
	h=To:Subject:From:Date:From;
	b=S5Xs7bvDe9l/A0OMb5xzNGB1Dju09BRUxt1rzzb/MKtZs4Hp5DoGpgQ+8tkkAX5yN
	 Ue9kEmU3UjCz41Vr/AZ11iFb6WegzeLoqG9Ga2kKGWFbTDLuFs5eb7Cnz1ahdWzQzb
	 z+egKOzvAx+pOibQVMIj3VW13u11a+wYwj001Lm7qbR78UQLdGgulmL22Wy/GdvEtN
	 oR/gCYhmAlvtzCVVNyLBzF5gM0ckvPRFZMcze9zNObJBfkrC+F0BzBkHIh4tkiKiZF
	 uQbPKVoig5Wuc4TqGREdqzOVpFd90Dq9A28hEt3ELkjPDAuRyXIjBBEbDRDDqFP4kj
	 dgHdpGgAE/Jig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D7C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038507371.10841.6891231050922541325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c6c88c2012486d91efb23f9d175c813e61ffa8e015c347d14ea7077894fc1e
Date: Tue, 02 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780385073
