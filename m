Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7804D8A3
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725084954; cv=none; b=VNxVMBe1zLzXfD8mg39M9tkfXc8H8b1YXCYW8q09KlFHKi2o2NKEx68MzsItzuK1jxp4xeD7Wu6775Fk/2G6LmfhY924jYHq2eT/kmw38oyxUe/QJV4O3SZosvEiykfDVCVI+r1SESPbElIcrappMSz04arT86hn66U9Uz2Z9ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725084954; c=relaxed/simple;
	bh=FSj28Aarh9n/4xr6wpyk0iB4y1e6yq/r1QTCOaBOypM=;
	h=To:Subject:From:Message-Id:Date; b=SOW0nfhH5ljs9LOQ3s/aGYbV9NrkpNTujSlP66C+F3ha5kaLqhDfsbDr/ePUROA8qj9ve7PtKBRCTyjmKEI2Msg2eL4Kb1lguiUXz21eosjJIXB3l6HqEVsgqs0qRWUXKXmsssHc1IFRYVy+G95PJftERk/h0VFHuvFfvCVo2jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJ3ILVKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJ3ILVKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30D9C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725084953;
	bh=FSj28Aarh9n/4xr6wpyk0iB4y1e6yq/r1QTCOaBOypM=;
	h=To:Subject:From:Date:From;
	b=vJ3ILVKDgrGiBCCyb4rHDMO94tcb4edtHKIYVNtsSkghVsEd1TW/IJGKq+MQRW1ov
	 CGktCYmjVHxWpBjW6ODOfVfItGAY8OHL9k4U6qQpNA9z1aWyNn6yeto5yTuKtS1lsv
	 dL27SSkeHYPJWocK0vHEwOT6mR9nnwPPEubMAMc2vw0iGSWrJzR79J7oAR5lIPJACg
	 zwlKq7aSfJTZ3VqXAnj8iskF13bQXBgtOZQ6SZ3s0ALDxQY0wpGrPCd+uzjiC28zoR
	 M2eeZIw9dL2IqeQIeYZLlSGXA5FJgoVsXnb50uqoRTpSKgZscB0Byixcybzf07hAyr
	 5zIzDeTlwWbww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB5FCA100B
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172508495364.26889.10349026772568877050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b707537e97cddcf8ceca07807337d8a575c4f026627727e6a64c7565784f0af0
Date: Sat, 31 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725084953
