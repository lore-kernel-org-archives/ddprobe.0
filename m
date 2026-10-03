Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555D2411691
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791022234; cv=none; b=QBjA7puh6P3cZL2T1cWytYogBjntnIheIaxDlt3wRM4K8ehbjno3blUW446EGK8nBbIz+AYQyUELYunPBaKewNzy5TwXESEikEgRFs3MH0PrqSQYDMoxgtjMnfYKRIXOV/cIOog1oRtgTa0SDMTOsb0c0Hpi1kIGm+1nuQ71rFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791022234; c=relaxed/simple;
	bh=AEbVndZBWSjDVx35CK9NYs+LcV+9+Tj1JvLN3BMH0Sw=;
	h=To:Subject:From:Message-Id:Date; b=FCpbvHcFRuTsqv0nBun0xyD3glwOvmfT3hJsVR9xer5M1tfLgCGNjlLEyWtTxmzNTosUnKjKEaf9VSKdxCIVhz+/eRE6dviwdi4oIY/nJreCiHaEATkhNgABGoQuNCObtzfrtvqe0+WtBVmmKwDvm2orNAPp4b9JIKUvMaLB5Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXAvbhxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXAvbhxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBC3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791022233;
	bh=AEbVndZBWSjDVx35CK9NYs+LcV+9+Tj1JvLN3BMH0Sw=;
	h=To:Subject:From:Date:From;
	b=UXAvbhxruCG8TT7iDMMMnCu8wR1QkZvyTKyojb/8m9gdWzh/it4UE+mSC3Osj3R7r
	 XC6JQAjEcrscNBt4aZWgf02dxxpQX3xgHvUgo71MnkzMZf/BTlMkdIsI+DnIfgP1oM
	 ENFObu2FeVtOW1u4mR2f700bfwxqTcHgoW3jdbh7s6L8Rv6rjd5CcVC2/Q6swcOw1v
	 WIlAJ/tLe7fPVT8ldaUf2ntwuHgp2OU6/8PEOvcbagvpbD3MlZz7hwunuZuokJ2N3j
	 evggqfodYZ3HlKZ/Q06WjbjW1yxKzkW8ay15a9NIG02zegEANECqgKNh4gYsJreREg
	 8Q2hCWCX7GkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F2CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102223369.16489.17228093316612592636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c010f5800baf688acc9348bcc61a8d16eab205e02127f522e8efb49b63f4d61c
Date: Sat, 03 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791022233
