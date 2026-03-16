Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0547E21FF38
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773656694; cv=none; b=EcypF2I+gdn5+w3LGnjLQrC4yQEm+AVirm/EWb8ypeQACJSvqQtzCMNUU6C/+2vonfa1jF8G7oDWfv7YOfwJWTBU5/kNkuGQbAyRtcyso7DO1f6zYECL5C/PqCLGpc+VFNTT5K0O/+oxdSSsJhUdqN2RBpBlovlWpIymfW2lawQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773656694; c=relaxed/simple;
	bh=mHnsDgMcQWO9Krd9aOFzNi+piOXoBOxIT5raMIddTAM=;
	h=To:Subject:From:Message-Id:Date; b=ry3WWC8YYgzOb9aKbs1QA5YGWBIpEiUCIgJWb1iWuUYmxGx0jDeSoKKYFj/Yei7XTHKB9i9toICqGy/QLoC77f3W0QgNz5WTG8knF2CAol7+XKFGfxIo8i7D6lcMakZZVYqhdcoRhhUmjrP1I852fb8abX+k32eLVOXI/mZp+HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOTOK5Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOTOK5Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A220FC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773656693;
	bh=mHnsDgMcQWO9Krd9aOFzNi+piOXoBOxIT5raMIddTAM=;
	h=To:Subject:From:Date:From;
	b=GOTOK5WdhrYlGflVMc6i8NpC0/uhpbO033Ysm1c3l03wJmFLThEQ9xcUFUEiYbw/4
	 rYYdQHQFgyZs6Y8CMpPU+Sbs2AxDNHjoGA8Zh8Hzu/FFeEhP+0SGx7eGaoDyY2HaQe
	 s2Tw6fdhjeDxaKcZjChoS8IL9DrJ5bAHPDirb2UP34vjGcVueGF5td94FrBLjR3j64
	 qT/bdSG8YHa95rtugnLy90Dbqkc3AOJ/ufdUkzVAd1rmdFzz5OOZgnp/PLOTYA6S57
	 iQNWSnNU8Yus3TQpPRRd+xroR5UA9TQpz+4XrLykDNto896G+kC6LU0kdezK3HIfBc
	 jAs0qZYPxatAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B2F4644B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365669359.13292.2706703161094714827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26cd2f21f94ea36790b67740e5ed883e2b8e5df26e317c5942cd94661a29fe3
Date: Mon, 16 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773656693
