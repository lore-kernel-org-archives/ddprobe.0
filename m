Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0812E88A8
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751545194; cv=none; b=blWpfglmDsyLI0QVe0ZJYRMGsUlNdcCB8Pp8OC9rmKfYMscyjMgU4u+FTwHFnbn9a5Bqa//SxWPNDqcggvFVzv6X75khLzy6PMLCCh8e2Am5GNpKy02+Co/mdBpmXJXP2PZaJ5qKQrNSvWHwkMvvaInVwPGv+KaF1YTyxnpAgII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751545194; c=relaxed/simple;
	bh=fMvmvYTORuRS+Hu+1oUbF8ydOR4oyj6ukk60aPFw8hA=;
	h=To:Subject:From:Message-Id:Date; b=D+tqCbi8fNTqcx4x4bcICPRSZaw2/F/rEoxdfp/af1vLUBwoS/gboptR5EB75PttJ0bHLnac9cOg2dbIjMBzJXLVOMqCTbOPj0wTlsFMNbgIdBrtyLLTZusyELiQhSe8KcEPYEuXxwpb2SyFXW6rRbnUPgQeDWEdSw5G7UpI2wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/1urLmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/1urLmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1DFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751545193;
	bh=fMvmvYTORuRS+Hu+1oUbF8ydOR4oyj6ukk60aPFw8hA=;
	h=To:Subject:From:Date:From;
	b=m/1urLmMsZxeJ43hknqx+2qyc4BBr4zaPhTPzRQqXe2mL3VGpdqEwgCqFW9UVrjM6
	 oF4hUfecR8YiabEfI3EiOiPR3ExioR94jWHUYbe7+CUiMnA8N/LXTW18O062jyjSTF
	 VEYmEodXjMel/ml+5BSMl2tPFVc+knEmhJZxzanjP2ag+lHwnVtBfaCYdxBr6YiaKm
	 XlYx6FD56CVQUwzz3KH5yQdXSKHolpRBTa0t6vQ8MC/nkXnEZ+yDYz0hCA+MjmJWKp
	 BNcdwx44P4lY1faNin226ihYSLVskIsYNYxb0IXxhU6btEtunvTfd+fxbZAaEuVOfQ
	 6deDyjpYEFEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC1C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154519358.6777.4989302341611282219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385d04dc1bd6f080cceda009b734653f38c7e6311dad7e7560c67e417a74da3a
Date: Thu, 03 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751545193
