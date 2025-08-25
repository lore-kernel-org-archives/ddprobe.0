Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2683770810
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756103394; cv=none; b=nphLp4YABF5yFtJ+9S9lP27tIz3Fze6zFagywOSyNHcA2KxCoGSBvKriqkkwzH7nm7qIHl8XbncxJ4n2AmZf74UUC0hHaRFxHkqxoNneucnT5tquOArtdjSduyprUI2+dizyW0WYt0nLkF2PWgIf8IgvLCxjlI+1KoOj86fDpp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756103394; c=relaxed/simple;
	bh=5g09SI6dU/1IxwF54FMlyNaeopBGcMMQc3X7H8BmoLo=;
	h=To:Subject:From:Message-Id:Date; b=JGFHGFpuq4IMnEVZ09D/JwL/sDF/wa0854BCU7mCuBT46I1j0N9UCd+CrNIpiRnzgeplKN0nTdTiMZ38/wOxBCM/8Ml3p2dZgzzepUNQTxOKIx3n72FaMlv9a6XFZaSpm5ao6xuo832vxFl4jPqlPGfXzk8Mf4oejvVgqi8hZXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDS1Kqn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDS1Kqn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A58C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756103393;
	bh=5g09SI6dU/1IxwF54FMlyNaeopBGcMMQc3X7H8BmoLo=;
	h=To:Subject:From:Date:From;
	b=pDS1Kqn5w/nvbkX3HHv8OjPkz8h6YDZ3ENsusFN0HFX+u4IRWuazXNxSEzDwp3RVL
	 mlaBruqNMk2bN/STmgPy4QYrhFoedD/PdMhWXz+rO9ymSWURspY1CUEJGsFh3pn1ss
	 mR7RiVNrRGJi7uCDp9aoRmqLYimBaG6pG2E16rFfGEE28KsM6XE1zNjkEA6Eenbpfv
	 lKG0P4oUdAUdtphMVt6ZgBybCIIEfHwC7m3FGQPMyXbuTlC5pHEZ0vR8UbJP+KQPmq
	 Exb8Ocq0QKvqNMKlTEPaDEmVycEFH0mYvVhF17fpEPEneOp3i65S99iSwoqQfz6eVd
	 pM2EeNqKvezmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E487CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610339357.17347.11904005640528810870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd655ee8b76d6a5510a785163a623746c55d6c664eb52b4ceb192d2f7e609cf
Date: Mon, 25 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756103393
