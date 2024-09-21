Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2108523D7
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726961154; cv=none; b=Xz4Rp4VZUTG+dWHnB0LSSqbObmBiReCRkzPZvMv3csPpK/jOE4FmTAiREx75gAVddpPn/4MDV9hFU121X45zZzs35nd59jBD8yvlJ90WMKD3cOyzcBTwlIJ376ZuyXJYQsAwOkCLVwNm8wKbI3y8GAklI0N7zAmGyLTGF0RIWRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726961154; c=relaxed/simple;
	bh=TulYGJLOA60LbDEgVMaUIRfByhho9JO5LqwsPqVA/M4=;
	h=To:Subject:From:Message-Id:Date; b=UW1YeU3y8OnB411jlzlZZMjJhUWW257YC5t+fBzG9rKQtcXmdsKQGmByBa0JYeD1EwFnjskA5B+Ug/6a1VrASR9e6vcqkCJIPMm+Tncs7tmNt5/IGeq1HOQ+ecPLVCvfKflaj1W5T+HQ9P+CMe5gcqCSgZqmpMMZ+sjBDGqwEb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQtxHh0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQtxHh0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726961153;
	bh=TulYGJLOA60LbDEgVMaUIRfByhho9JO5LqwsPqVA/M4=;
	h=To:Subject:From:Date:From;
	b=DQtxHh0S0wP5/sHDghS/w7wkaf6m31N2soTcgjzNd6AEPnL1vCAsoH5dPL0MKFaJk
	 1OMaEYt9goH1cRnmTQVlEZPWe9Na8bxsBUPdMQj5anQoYyEsK2HcVDRgytVdzdgkW4
	 t9s6JV1mM/Nl9HyAaCcK9OOuvNPTXp4dEEkyeR2vAZEgGvnPoYU1cpUVYhkO7StXfU
	 loebvpXv+V3vMQaqG7XwS0SBlw29agVYlnqxYejg8IpLMLiTj/fXMd9yxy37OivVlY
	 qXMuqB3QaYbWEsCpKlOZ5YTp8bfzGRSUbRMIRbGOjPesRCoESiGTo4vaCJAvJNOY2V
	 clG4sG8QZkvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94988CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696115358.24261.15653036846295760466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995d57c8fa365203df810c8622b3639b07c342848c1ebb79a9fd64bb8acda497
Date: Sat, 21 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726961153
