Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB764D110
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713549023; cv=none; b=ZwgcZ27ROUrz+jSn6qEr89AiWcQmc7sXFYzTA+1mlq+ai3P+VqL85MELFybPAGQwfdtYX0UoZKQNYeNXh/Dr5LBrRDb2b8Gqik2aSjdte5mcHHKTbwI6QUskpMT/5rEv/E2lHc55rppnlCQUNbgbIWqDqz2o4LJdoRBTvsL91ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713549023; c=relaxed/simple;
	bh=3F3LOOvMIABtULV7dKpWORV7ZUP50/kzxGeIHf71BDE=;
	h=To:Subject:From:Message-Id:Date; b=HHQJ/uLKXJaM0Lkhzf79LjTvOK18SW4nyMJPIcR4VBQ11gs2Veyurq0I3dCQAk6Eeve/LjRngyH7Mkj1HZ/expYp2CFtCTcxUkf51lSS0/XOEsUBb9YU8y/ghL6vmhVwkS5Bm2w5BNe/L977BTRHRu5okvEnKhIwj6/ZULCVqhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmMqvGOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmMqvGOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AD7AC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713549023;
	bh=3F3LOOvMIABtULV7dKpWORV7ZUP50/kzxGeIHf71BDE=;
	h=To:Subject:From:Date:From;
	b=MmMqvGOR7SIzZ24xDHXcFWBm4ws/nstvzMMSbzf44i29uQKUCNFHBuVs9KgJyVOoS
	 3DPhHnVqrTmtU9dygzx+QbxMvoe5jRagqZwCHxq+xar94QnXbDBh4/xl1a9bej9WDi
	 wy8XDTNlVanwy44jzlQKWBXtiTKAwIusOobp7HCje2pGqntKkBi6pV48tTjOb6zeli
	 22ReOASqkYREgG5BLz8W9vFHsRsEQLmWcbj7iijQ8nkuDOImt6Gpt9d/+Hdm5TYVE5
	 m3jUElrPcvKqsZQWnuhuyvNh2O/6R8Fl83PcKvoEiOHNs1wBY65bNVw+Ajr3TRQoqG
	 ol8JvXJzkAD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F290FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354902294.1144.4114232736449581905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb497cfd75b82270abadf290a11441fd5dd79761816031437fa0923e2ddae5b1
Date: Fri, 19 Apr 2024 17:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713549022
