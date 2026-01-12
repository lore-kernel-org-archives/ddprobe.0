Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A1A1BDCF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768188834; cv=none; b=DtINRVLljU0uV62e3lnZUSmcEptgPDyCfddGW/E32OOU5RfNMJZJ/gvoLZrqVwZWsewX6qKe/QznYm0ZgrGhlP3pr3kbEn3s8igJtXtnenIlPq9wMz6qdm9c6ZggyupdMIJwWhFFJXGcTW5mRCuf0BMDeOqukTJKBceaVoaHbBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768188834; c=relaxed/simple;
	bh=6qD2E1+StKxzKe7kfsewrMqFCFPI9XblHc7S9Gq8oAg=;
	h=To:Subject:From:Message-Id:Date; b=Qee9RPX5jSymqzks0e2sIoGmyXT/w0FqiuJhsNm5Aj3cKcTyJHm2zzX+0OC6lDxwLmLTgYG3gmtA3uKBqctixN2GXvTbiMlgeZ0SrVOrp0OV9gm0yyw3uFRvoCS8QWG/DE99aSXcSZyCcaXEguCftgH1vPWwhWX3zN4XnNqSwd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NT3oLzeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NT3oLzeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768188833;
	bh=6qD2E1+StKxzKe7kfsewrMqFCFPI9XblHc7S9Gq8oAg=;
	h=To:Subject:From:Date:From;
	b=NT3oLzeOwSllXPX7ZKWNJpRaMK/SyNzx0fuYFRh5601Y8yKZHaOUnsJ/4keBgr+Wr
	 BtEe0jPVEg3N7lyLsEYQ8ICQMnrBa9Bd2ccKqDOiyCOFudEh1C5yIrPNY2wIT1z8/2
	 zar9kqlBylMwvDYyUPSgaHVE/NRRj+g/Z5qDjm1CL1yC9SuHn4vyvMYBguJWjfbOkC
	 2r3ID+YaaLdct0lWU+N2TetDdDwI/2STGqpWl+QfcfzLkCmrXriUvsaatliHVs5Tqc
	 MOSgfA8n0pnI7Y6Ya3MpHUHwkzEH2SzzNPMArJO4KY0S3TvxAZE1DxZ4ZWgxbxocLq
	 rC5dLmlgI7k6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171BD2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818883357.4568.9460812815093786229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b44c20b94abc99b2f6f0c36d355fb0a968c96b2a6b9da7b9325a9be294b0bd3
Date: Mon, 12 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768188833
