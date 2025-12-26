Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085AD29ACFD
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766769834; cv=none; b=hhDNqqQ48hddG+izCNdV6fxL4yxJP6k5qM5veYgYrYttAlyfJPD5wXchyyab6b0BpTY22J+tqaG5T+2LoaGB57MjZK2T/8IdrUEX1QTNoml+uvW8lyGkbnj2JkXlcGf3IBy0dIgs4jbhsMQldFwU8zQqPLsc/yf3DYh+PeiKR9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766769834; c=relaxed/simple;
	bh=WS/opoRcYdRNucmni1i87LbroSOTEYAg4mzvZO1ZnfU=;
	h=To:Subject:From:Message-Id:Date; b=E6fVGyd4EQnNCbtHR/10sB+dteaLgufcrls2WSKb95nGk1tspcvd7HhbQtVKV2xxy9+e5bq7q68KTcUWHlQlT4XzKl+mukSDoUU/OB5NjTMUOkz9yq2pUU1HLtQq6w6Ygr4R7yqTSFaqxpls3OBM3FNSAsegaPFbiwEdngeVqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SM7TVp8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SM7TVp8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766769833;
	bh=WS/opoRcYdRNucmni1i87LbroSOTEYAg4mzvZO1ZnfU=;
	h=To:Subject:From:Date:From;
	b=SM7TVp8I/1wv3W+g3wSjubtRGhdqnoRdc2GN5d2cpj4fha5WSvKUQvxVbK/xlxAwy
	 Mh68cv4doAk3XBdzqq3nVyHzLSsNMSyQj2JPAvUrSR1azMTZO5jBqgfGRreiYYsy2m
	 EDt5qfDnuRtMplNicEtQhh8kq222RnKbCPYG3JWi4TTTc3VV6ldxh8yqI3uoryfqga
	 f8rFTVPnNv4Y3ZHKMD51npMQHN3kYw5DbtlQw9j2meZp1H7z0CdG1D4IwgnR945zt1
	 gmbOb5aLL7Zsva4p9MpxGQ7HCI08C8DfWJQN80cg6Ik0BDBaANwj/ztAssum0Qq9xO
	 RBNBcJeiLRKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9703FE7AD77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676983360.12128.15119779380086553958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48034a77948b4115139129436e3f649657f112b9bda2f5c4db73ec2196e5d23
Date: Fri, 26 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766769833
