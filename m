Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D6D3AE6FB
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787863834; cv=none; b=UQDo676cPeOKMVgQIzTqYqtXjpfnHgVpLK/cC+i2q2h3r+dLP8r6lFkbzbiLkuh1gEM4exkrTGhRByBQ4/llQhmLUPrdBPt2WCnR+KBIaYkRvlM0J00gKtvsYJSCoJ9qDDby3VYPcccOgBKJ/58xa3T2/3x3NT8sROLPbZ6CBWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787863834; c=relaxed/simple;
	bh=1y42/80cuGrEsDdf4HcCyDTOc05ffGVgnjHqs+Vnm9U=;
	h=To:Subject:From:Message-Id:Date; b=m2eifa1ieu7WajI2sv8rPJ828qTJO6tmPxSyqly/eEJf4YLoQZ7mch8f2lGJn/d8nhpiGnmIj5QPMj4DvzjBrIBGtKEzTXJDfDYBIqiriMTN5XqARZUjm9x6f1X3/ICM2RLL/QUsSJZcvfUnMTmR5WN7rKCZGTy2Tke9OBm3e1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2EG79ED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2EG79ED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE4FC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787863833;
	bh=1y42/80cuGrEsDdf4HcCyDTOc05ffGVgnjHqs+Vnm9U=;
	h=To:Subject:From:Date:From;
	b=o2EG79EDzeFGSEIEsaQquyvOiasy76G8+Nu3/Xhag8OirqcV1TjXl5JZNE6twyGws
	 bSKEcF1oC1jOL/6EUkdPbauO2ZxXzRotqCHTilJdM6w64MvpIAn8lMveH73FzX0cUq
	 Q0SE9ROatXMTjRcagLCLYRrvn9JeAufCJ+QcxhROiV3SDK0AJR8ZNq2A8Btj/0lC2t
	 ExUxiqDpXoaSA01AuzCMnSHVhcu6Dstr3pix+6DxgH5gt2eS3ONgqKT4jvi0QN6+Ok
	 LwA4zr87Fsz2sbIFFHQJ0jEqxxfyKDQJ75Vxl4ks1Xp/P7FtxRzDxhfG/XQ+5G9l0O
	 ioftPv67KKzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F9C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786383368.8971.2467018450370908655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7baf33cf3d4dce12080dc14562a01fc9fae858ded25c32b89d56ca05c9c487d
Date: Thu, 27 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787863833
