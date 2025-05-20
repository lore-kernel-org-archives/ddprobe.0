Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE4421E0A2
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747700394; cv=none; b=TUsUnUVfS7O6FRMijwddscMQMM8pvLcO6Q2CNUR65SPTZOG66O/7aitQme1Rmz5AJN6tJmdKa5SOPoQO5aAzdHqdOxEDNPmg0LphbH8LFSNlCQK1u7z4RWQ9URzptSc0BYT4KWYqSvcG2TRPaDOyOHLxrVm1zfeOUBIip0FEjQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747700394; c=relaxed/simple;
	bh=BnKHHprpZurX4+vL8MpL/vaRlW4iqChOcHqk1sY3rCU=;
	h=To:Subject:From:Message-Id:Date; b=XKgdGSDFFeRLABOhh21iidjgLQiBVVaGTxeKpYYh4tQSc2HoPgqt7rk10spuAesI/OxvPqvNUWh25DOxPEdkbSRsi+7D2cIdaTb57/pmoJPTY2gTB41C8C6pgZ9exCEuzMV0wOgCLeY7Yb50LcpBVhhRFrxpDUCkQo/mRaeo+sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD4e1lEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD4e1lEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E972C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747700393;
	bh=BnKHHprpZurX4+vL8MpL/vaRlW4iqChOcHqk1sY3rCU=;
	h=To:Subject:From:Date:From;
	b=qD4e1lEXM5A46swdPFSWaRTF1OBxptCOZUmRk1GmjMpiPKZ4j/egxDVcb71TOTzGj
	 ZzYhgjcTm2srv/clk220G0YF5LFMTr3Os6AeH8T6++T6ydC969iCx9ux/w9zgVph3Y
	 O5/u7Jfui9Mnq4c6/6469ElqDPAYjbiN1TrTundrH3VZw37bqPYyH3WNZCJmKR6eZP
	 uzpulGUK+xWeQe0SL4c4gkR+aBsYwjmOQ1SlP4qqUt/bGDkMI/Kdp6dsuDPdHt8raz
	 gyEzfCX6fbwLsbbU0HeetPXIgDfDBCfoV/fcYEr+ZfP/kfZFWb+1w86ejLIBbv80Jb
	 8D82ZKut1AYUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2FC2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770039357.30466.10550093095249088843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5510bb1ce590eb85a2b7ebb4b7ca107dde89689ff59eff5e518ba04b4dd8a9a
Date: Tue, 20 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747700393
