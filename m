Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EFD2517A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464395; cv=none; b=TrwK1u2zg+/TQfjZ6GsA2JDIbZdfNQlUHe70ojJCg870VyadSw9KfG6quMmLlktit5GSY1JDQqof6x0KhgcbIXPd4ocaEGtUw1EjJJM6N4lkpMLDsiJWoMCPmSPhU8fT80ImaJONJZlfBYdTS1kVTsstnbEchR7hTGDzC6npu58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464395; c=relaxed/simple;
	bh=rsSdojBnZRhlW4LBYcHhM08jfcwZHTUUPsSJdkf+V2k=;
	h=To:Subject:From:Message-Id:Date; b=BBnVdCUEYPNQrJpXhVZGwLuixmmFHl6n6iO6m60Tr/fABkhSWD6SF82LZkEA76V292Za39P4uTKt7HgBI/IeUtrJWymJ5mNabSHFcVjgesEM7j0J77jmRGYwF0OYtQGF7kZvJknnGirOkRSIoRWcP+GtRW/k5ixOH6QndAEC7/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBvPx9bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBvPx9bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A29C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749464393;
	bh=rsSdojBnZRhlW4LBYcHhM08jfcwZHTUUPsSJdkf+V2k=;
	h=To:Subject:From:Date:From;
	b=iBvPx9biAKZDFd1AIT1PTZesKGEV1zHWBgvuW5fwPivhQrpMV5fuyFKmYeCBTJNg+
	 V1jkL98jnLn8PdA4TFe0IjcLs+lsBfDaAuZtRqWkK98RnwgIhMMWctc7ISLCXZ4kuz
	 gU6KVxsyR9HJ464jMNomW92zyMmxtR+SgjyV1Lub7+96W/6X4hCoqhw/GxBLmqg1c6
	 1Pj7z5QJRuSSRqienAaOSW9ExEP3HH596TI/bxSv4N1heiMSILt4ftYsl/kZH7ZnfP
	 6CsP7tEUyVmGsxA2HAUR+v7cRTft9h7OnhXoNJK/3Yq7cSbkBpcVml1zn+0c58skXm
	 2UIFgKix1Fylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2B1C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946439357.30196.15027288139364819032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630b677a2d9baadb6382ee612c19f556f8c5d7d55986a58a011c649fd811046d
Date: Mon, 09 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749464393
