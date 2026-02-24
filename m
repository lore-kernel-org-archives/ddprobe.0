Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1094639A7ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771937694; cv=none; b=onGKH3htuHuwEciQzQQvVC1SP9pRACsEn3r6VCD3Q28XfbtVJ/cRSNZ70qQTcpu/+bLViKJGHCtVFFEnViK2X1w1pFhfjWq9mqovQL14urAmkFLRLpCf0tgvef1bzm6SKxkcbNliUd73fmifKnjFaF2wz3HC6TqBFSRDozXTeWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771937694; c=relaxed/simple;
	bh=KPLfom0QjcvPL1K/WGJrVo/v5FbmrG9dkamGZgbpbhY=;
	h=To:Subject:From:Message-Id:Date; b=f/RhDAvi9VcynpTBVMJTYeP4+6f/Dbio2CpX8skc5F/1z4q0SrveS2wnLGHjdMeDn1KVcxV7WNzgQWMkYKoashrk07G76EzGFaRUy08hdWQQkfO19Uiu8lH9MLDLfXILBXT144oMaVY44CMoiA2UTo0yj2IErC9LoysMj9em7gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU1j0vb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU1j0vb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837AC19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771937693;
	bh=KPLfom0QjcvPL1K/WGJrVo/v5FbmrG9dkamGZgbpbhY=;
	h=To:Subject:From:Date:From;
	b=eU1j0vb9IWb8mfAYaKPBTQmVvYe8C8PozLV1Ml+oFRf37CfQSmzTblOWooBlnjO0u
	 z7lWoLtpldfjumpH6cG5v7u6ROPfr001nzr5z7rvtg2itLiK8HQ0ng2JYQxZneG4A2
	 sQMdQjW8rQbR9wGB5OMPNmmYmCYo7/ztY9dMsYHt9NWtqyR/8/rYPPIuOXngv25NhS
	 RSCV0fknC5j6nK5qSA4gXPRVDb12G1F2hj042q538ssJECg4xpOwAOdNlA6rI6tmWs
	 C0ziy2SIse6NG+tLPE80Hy15Cpf7uVLXNFUn0eze69yfIBXQn7Z/gFza4kA1AC5O1p
	 LAH/UikfjFDkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93107E9B261
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193769359.17400.10669301058983553187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847fbc71ed6f3d6ae7979ee5cb72fcf86173a7a4565ae8fff0866b912360d696
Date: Tue, 24 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771937693
