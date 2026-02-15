Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A5923BD1F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771199694; cv=none; b=scZLvjVOLG1W8wYEdhRQV+r2/SB9FfQSFkHce9tLVJhc5/xNKlsYhEqgLsWx/QfkGnmcp8aW058LC5QKc8pTR6e0BCx4SBMOKA3Kh3C4cDui7wR2NmVKJvef/rHpuU1g14u/DqYIJNbvkeoxB2UBfNW4ApgpgbrcLghDhIPuDek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771199694; c=relaxed/simple;
	bh=rM1SafXV6H7UW3tExSPJ17cPv1/ieZ8AWgSXIDKgeYI=;
	h=To:Subject:From:Message-Id:Date; b=auMR4fksRxFe7A1VdyfwLXWcEX85IXL8b2+W9N74V1/RI3XnMS/SvtqyzJ9vyrkmbkfM63YUic12EC1AbeVddaTVn3sSt0sEHVu7SGgJtDbxK9vQIRiN611QLoSmT+RSpsLMiKi82uRddEOSqbyvkm6SoMYSwDqTxkESpxAsiWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qveuuFGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qveuuFGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F73C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771199693;
	bh=rM1SafXV6H7UW3tExSPJ17cPv1/ieZ8AWgSXIDKgeYI=;
	h=To:Subject:From:Date:From;
	b=qveuuFGCoeOylVY+QH7qO5T5/o4o3y3GVJHphaBf2pk7jEsZPtMR838lvGKhmEoZV
	 bN7mmum5KzyAg1lfYYI9gxQNK27bxWeJTKxIiSCy5/UPTNQndIh/D1RSQmSufMBtcS
	 /r/Mjaf/I4BK7zFiJwpry7lDDs/ixEjiIjA/aDQ3q2lywVLGo+G0XtDKSR3LoCSwjW
	 7juAzVctE3CtTuYka0zSCvQjoaJhzAwXeRVwnpVMK4RFYGlyq6mr5AN6Lj9D1BayIQ
	 PIb59HYTpgUy/5zL9Nc4QAv28aizu+KM26cxMEFkf6ZoHz+CSWy0cgJxU/srHViSYB
	 ruTn0g6q00ufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0DCE63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119969359.13619.8618469646998473412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8202502a21b18cb3a689052a0bf589b13130c94e6bf2fd87806d6450811955af
Date: Sun, 15 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771199693
