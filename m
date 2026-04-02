Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1351C1E1A17
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775090134; cv=none; b=UacTZOc/95RoEgf2ujYBl8mT7NzA6B7UEMW5RQf3ouOFzhG7/jL14udUxL5ZP+9dTNT47QJoO85Nvj2lYIzNuoQT8p3ZsVLPbTcASjevHfRgqKjL6/f8zmaz73OrD4TZILjGjgLMk/iX6ULjq2LyGdf8nNNLx2H5Iw8vwc4nMPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775090134; c=relaxed/simple;
	bh=l99U/FLU3RjakaMH3eADotjA6zchnRz3bNlyPap2+vo=;
	h=To:Subject:From:Message-Id:Date; b=SljG2V/1NM0ts1C9vAWlcdm8gCtyZ1OJyyr7mcz8rCPa1qADVTeqkg5aJoEun+0NgMZvYxxa9ArlewnJ2mg652pZOucxk+OYYenIxjyfm5jkD8Q+uaccqsIO7kMM092SHpK8t4/TnJk6ySf1t4aTuM7F3YwBRzjJCsqcZhmDrGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgOvimTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgOvimTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC254C19421
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775090133;
	bh=l99U/FLU3RjakaMH3eADotjA6zchnRz3bNlyPap2+vo=;
	h=To:Subject:From:Date:From;
	b=GgOvimTYfn8l6Au06me4qyMMuk0J9hQH7btywOLrELuGuxTDmF6i1GtG9nOQRP2hQ
	 qlGwmQH/Um0x1yo5HAnQTY/Kr+IEyjpAewJGuggJJq1Am4HdKbcjWXL6X9RZ1CdHtI
	 7/kIkXhvHX7yUqDxDNTvzKXQc/Kwwu8m3ZOAm/kRgyFUA6qN4rgYfmrV8cIIvP2Vep
	 6UOpO7vH5v4yuBLEgEE5SkDAUvj4pHVdE96hVpoSa0to4hgF8suRGg5VvGWlIIN/aX
	 Xs/NnvMqWc7idkXeI4NiwJazMT2oWdTXwNYaYR2b8/JDKCPluu762uvmjRPy/CnU2K
	 KmVh5YjFIYxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF41112246
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509013368.1576.5639242284561097787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91129bd7767f033968d5309f83f4806cdfdb83e7e780d9ddda9e7aefd855ae17
Date: Thu, 02 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775090133
