Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593F9367B90
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785078634; cv=none; b=FI4/GX8kSybx7YRXYJLBRLphisd8EK2I7BG2qoNa4vl7R6JmSLkcggeM3tjJSmV3tTsonCYR+VdfOaJ0/WBwtTXvSJmooVCacqMwHN9RUV1YXWP2HM5Naa/4VEwLyhCAFeG3RQ2aVMi/rfPggvTUYnhvy8LDuNW9GckhbkQJU68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785078634; c=relaxed/simple;
	bh=kvankE1lNde9hqPYuq2YSamTGvqlnVXX5oRhTSEiCIA=;
	h=To:Subject:From:Message-Id:Date; b=ahxy6VTaE/x2PWLl45/UKadgBEqVMEJ55OUuTHW1niySfn1sFKbQDz+jYK9IuVStSN+eiJSgMA7fUkunQMdZRb0XZqriy2dVcNWh8ywnjsqecTutX7bSZTitza7SmRhdvSk3fe/rPmZRQI4xESLX0WFkpYU1+0mSVAo7qqHGH3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYQU9xOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYQU9xOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24C6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785078633;
	bh=kvankE1lNde9hqPYuq2YSamTGvqlnVXX5oRhTSEiCIA=;
	h=To:Subject:From:Date:From;
	b=EYQU9xOzF50807IaBvOBgLdlErocJbasrzmWyV9BVEtbdvMIb2VRmD5990N2fFUT7
	 v2MSZ/AUBIqTD6zKj92yn2i8ksa321oZ05S22GszKtTrLRaEsZrAkMDLRzCltcGLV+
	 IWDya7szwL3aDuahmJstDn0tZ96UcsNNE8H7c2EKJnnz1KYmA56fR3Mh1xJWddB3RV
	 2A9Gx1cW0YbPhSy+SA7CGdghT/Y3HgTCNdYAr5mk3d/ik56IrqeAckLamOqfBmlTdL
	 BGm/Kgr9mkvjzfZO5bfB8yMuqkPZNc3sNZU1m6goDwBur1R+cpj7ZN4m+SB1LdgIp9
	 2VbOjKYI4vgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05A9C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507863371.5502.1882858940465633863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7829d2e53e445687bca6a8851cfdb4f2a0e6dfc8f8917a761d0dfa575ec012cc
Date: Sun, 26 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785078633
