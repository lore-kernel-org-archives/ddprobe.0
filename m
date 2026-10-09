Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686F94CE67E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791543634; cv=none; b=BoQnRczJyFLp5kKaT3wQb5LxWiDnSo/JUJ6AFCYAVvt1qV7x6VP/uRSoeZROy77K8yGx4XRT5LjPRRrxbLGyjeTvHd6volE3PgsqmGV5dgtFacWiE2LhXf/TvFrRqD/AQdbUvB7jNfNmsmx6NnsPOYcUCnX4fmFHFq8rfVVW9KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791543634; c=relaxed/simple;
	bh=sMAUNP6VoscbqKAp75LleSE+iwL1P0Y6IyOphNhdSnc=;
	h=To:Subject:From:Message-Id:Date; b=ug70Uw8vh1WMnLle4qedVXOGm8gQ0kra8P/KEgF1CSfrnBF7gMP++SKE4kzfIgVB7MFQAC2QxmmOISQ8ohoyIBfSapTjHMzIUD8l0TcRHe6l4Pa/NxaLD2Wm0eLx2JF5ERl1/A0oOPSeAFhnmbj2gKXVvupTxDhg9T1LF7+AzsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhf7kRf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhf7kRf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3EBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791543633;
	bh=sMAUNP6VoscbqKAp75LleSE+iwL1P0Y6IyOphNhdSnc=;
	h=To:Subject:From:Date:From;
	b=uhf7kRf/yJI3eQeO5QBSbqbEED8mqPRmEM7qT1vZxM9y3Bh+QSqNc2URJ0zYDbQi7
	 Rp50PzIZWhHXMqQc1XkyHr9qVM/qxZkolnOE6q0d16SVtWD9DBTPn77Lh6vmY+KN0Q
	 T716WX4VjW0H4VppDplBF++dVJaOv+4Vex6Ukl/9lPImo0j4mCCdsM8VVVPXSyEBWP
	 L9Vz5PH39bsqoAss7F+ukC01S4zwljxHeAZka+8w2CmzP27oKEWnJy+yGmlElPCsCx
	 mTh4GwJROiceuqUuEwgOxceIHBafPJuBXbcgw7uNneYd/DsQciFizKeTrXey6RoCLn
	 c/FkGAoHd4taQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B4CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154363369.28833.7267579136555698831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6114b98168ee0f58a1ba679267195c20f0bc661f7e7a0eceb18da637999c0cfe
Date: Fri, 09 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791543633
