Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6471D1E47CC
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784249314; cv=none; b=J+5lLODwgoq41vmLq++yvfV2c+MKnkaFaA/ebyi8RQYFqrHJ0SERVHOhVW8iIyjGKn9WwZGaGRjzT171ib8EBSu6ov/ZESNUirHJFozNC/8Heg/KhiEtpkXiWE20M+68I7XtY8b3EKRSzzhpaEQjktU1aE5m+shQdmUzChj4NPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784249314; c=relaxed/simple;
	bh=gTOax1Jn2LzGsMsl9R1UzemUdNvxLVw95F5OR3h+dpg=;
	h=To:Subject:From:Message-Id:Date; b=QV/7eYpHoCX6RDZIgfs9z7tLT9rku7yE+YiHRHUtxFZ04rY8VMLEQWymgaYssD8iMDTfiwuKXpAzI3urR7fOmGXBGYen2AmOVpx11Pl8d5qODPzayrneRgLweE/nI0gZXQoI74c4o6p0bzY5iWybASwunwvn9WkJNN1C0cHybwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MT/nykWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MT/nykWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D717EC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784249313;
	bh=gTOax1Jn2LzGsMsl9R1UzemUdNvxLVw95F5OR3h+dpg=;
	h=To:Subject:From:Date:From;
	b=MT/nykWRlf59z+/ylU6xUAr623nOAWsuU80oaz2MES7sqqs43XmLJ1zcR685y+6jq
	 4VRucc9QIApsxE8LHTUqstTPTlPgs45yVI2LZk5b/Kbave8w6h8WIoR6phmyy77hqV
	 /QtGJV/tOAUXUzUKN89VEvfGqZ3rwgl9tBIxr9SDGrRVb8WWF2oWhiSGoek/P/5z+n
	 +QRy0CwuvGzXmql+dzgvmvntTx/V7jna0wBk2VpIvbfckLW/V7fn4QyiKgOLqr2QXE
	 dJTRHcQdoXa5YMYt7k09f4qiL/3eRTr4gepDZPjBMwUVSrLZQIrXJPcJ0tU3ybk+XW
	 6nHGfvCDlwm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D5DC4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424931371.29614.14599151498232442153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58b42e8bd26b0f60c0b42d1ba19d59a2fa6f7f4c7bfeb6153c8e8bf2707324a
Date: Fri, 17 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784249313
