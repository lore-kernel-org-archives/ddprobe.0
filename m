Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1B363C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712216896; cv=none; b=OmeDE6Sem3OXIJjISaoRLgGRZUamUwptF5tZWOFQeoVm2Sl60DXMe69B1ncv0mITtBQbo3Ld1aWEftYGZRxu3e9hOauZrMvmMrBaiDYgZP6TV4mqsKKVh7whEsu4QAzNRoLx7Bzcf6uVuysGsLTduHYvufr3NEdKDvDGGrkPnlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712216896; c=relaxed/simple;
	bh=EeV0f8tJKQPZa2qBUCUsCScyvhujp+kMU5gdq5ilLSE=;
	h=To:Subject:From:Message-Id:Date; b=oZiZv2yQeQ8LxWbpUVZ9yzoUAE6S120ufIrkoDf8bQC3MjXbgEfiN43LtbohTW6CgtHg+pRbyJeeEmjY22OR6fr0WZ/X2bjEOxjIvsLP+5aHHUve+RlESSFnu1uuWuUVzPEa7G9YvhBYmM0briemCV3Ity5z9aoJqeYVMl9uMKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsfLBH4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsfLBH4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C37AC43390
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712216896;
	bh=EeV0f8tJKQPZa2qBUCUsCScyvhujp+kMU5gdq5ilLSE=;
	h=To:Subject:From:Date:From;
	b=fsfLBH4bifLbMByRZaIqB3lsljBP3kJ2MhCIdK8aDPxxJV6VTpZMwDrRVdrNI0USH
	 AKaq58Wo4U8SWmwvxLx3xOxwV0XGkCewl1mqpsnst7ZHaGnEf/JFWtIZw8VmOWwkuq
	 5zW9sKIOYYzA0PiR2nGYqpBFZVYA1mOhe7QK/VoNFFAkH2rQrBUnK/BLUHRSv91eFu
	 fzXawi6IV1xdRH3vRl7dXlGvEAaPTNXJSna/0tazbn24psxPtYa6k+GOOEXiPQJFql
	 yxlZWwQ2oF/Nkwxac0rSHstMz07MQMDF7Aw3DqcgHMthy1QZx48RFySaDKay+GYu7P
	 TR99ujS2WZayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1E9CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221689642.16051.4599235962574768930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36fb7b0b9c24465616db682073e1238c0dc70be4593bbcad8d494caa611d01c
Date: Thu, 04 Apr 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712216896
