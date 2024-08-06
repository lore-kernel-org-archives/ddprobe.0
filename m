Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0EA24211
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722967554; cv=none; b=Jy9FREa0PeM0pdDdZ6RBhWtu2f4miiRQ4aEpAP4jR5dDbEJvmEIgQV+HgGvKihNyulzOkZOC0LdorlU6Nl9hJpb5DBKGVYabAFKUB0dVLytFeEKXS5jOFLqktVtEYbC2ObkBvtxJaHr+grumDEN2hZclCko46ePD0RRPJ3hfEes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722967554; c=relaxed/simple;
	bh=P4KGn32fFq+pBQwLZGcCIfU+lfGQv1ECXuelhpHZ1T0=;
	h=To:Subject:From:Message-Id:Date; b=CKnU2SIttEGe1c/+oQurxDpL80Ce2Ox8yG7av22T0R8hCv+tLAdctVk51MOgHxEt2jpH2zRf5fyur2/AoNxaqng3RVTPcOkEKKSUeLoHDvUxpbM31i5c0YHQTSicYB8i6gEImpGPgdiBnBDlYKSGkStMJYY6NXNzggDFpjvDxfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwL8NFkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwL8NFkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91A5C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722967553;
	bh=P4KGn32fFq+pBQwLZGcCIfU+lfGQv1ECXuelhpHZ1T0=;
	h=To:Subject:From:Date:From;
	b=PwL8NFkpONEhzSPi9TkVwAjOhaqchYYLXRDs4J3xeFd+B4bY+xkcFLVu1yKkV0nJe
	 WSzKBrhpcDl+h9eV4v/zdYw0uZCwCJz/FJIbRNYV2pauqVV3dcn5aTdN/qNCR+JETH
	 brtE1FKgn0lxFghGZGlIezZGsVjkUfyQy2UUNLZXhwJ3Iie/RmwTfht8DGMlxpq1e1
	 CROuHH06jHASYWekwtyYsLuk2F4Fcoe/NiPQaiPUFdStmz8W55U+S80VOrY9JZT2hB
	 wFc+tsTTVBZFjDr5TRbdYmL2y1eca6gxGmhdoU/aaowSPsDsJehfS4FtMeMePs13cp
	 wEWzj9cEcngwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1388C52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296755364.19049.2071863351184380261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c21ca0b7cef57b40ace8e4e14deaa8f9d283fa27295d0a870b2a02c62757d32
Date: Tue, 06 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722967553
