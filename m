Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26852470426
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790248234; cv=none; b=DjiHzR/YGSEmrWJt8KyuNMsmCTPO1PSY4/9l+XUCvvDAeOPWZjAc/tE+JuhhOB75y1Y2GdzTmw4KYjNDpM1nSrtPXFcbgPD+IjboHd58GFEy/PXPP6Czta3by6mShOSGp7NuoUyZRiUauWmMb0A1/O5vlxDfo4EFpBQRJOdkTSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790248234; c=relaxed/simple;
	bh=RsbFDLa579wlGGpuQKrVLdvxWOAwHl7c0mG0x/TizWI=;
	h=To:Subject:From:Message-Id:Date; b=XOn/ZJv6cRKidTu7jlsH6WiaKTMJOnxktZm7VX2DJNGorJDeIeiSibXQfFSu7hisDO19ZAlrUVLYLQdYcy2Ebv3UqbAoTkZ6V4eJAaI4tleg2hbrUcMBR/Oza287ztmdZ+gd/8yrQzmD1mpUq+7dMuwEEQngyRJslGdtEMWRztA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um3XI2S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um3XI2S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1405C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790248233;
	bh=RsbFDLa579wlGGpuQKrVLdvxWOAwHl7c0mG0x/TizWI=;
	h=To:Subject:From:Date:From;
	b=Um3XI2S87oMDjqEiXMktZaPdoGg995/fNLsnaW4n9PbbqIy6A1xfkQ1wai/df5WRG
	 Bkpi4d7e8oA6axMjhj+804gNtmrF1FBASKEWnoA7e9RzguuDjwiIF2ZnZJ9AaFDPoA
	 E9n/9CzVhHBly4EBHb/XnRbIZ2+HG18mDbzvCgyf8dPQX84CPzIEJG3AehMQ43tmKl
	 wxgG/UyQNQK4a03e4xUMdT9inM6pcWqFanQq6it7+E6J2UZ72zC/aOiMqypcr0SECf
	 Pzi3B2P6Eq+t85wjzf/h2EtZY53+PEuPS8NwE8dbzwmWmxbu3b1w8r3rQE+OGfB7fd
	 1QgJy6B4XOwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB8C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024823369.17018.11474032810661626663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1508fa0a834a9af36912dcd8b251d60cfc09f0723e16c04f1cf310bee946edce
Date: Thu, 24 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790248233
