Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BAF5684
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738628754; cv=none; b=uMEXVBo6JKd5736KfciHJcjvp+bVg+J2XthSsK5hNrfAZd8W4mnibHi5V9kMQtL6xQJ6Ew6uusyF5ABzftQmFFVN3IotMsD2ibFHPGSC2LTLzbFKORtB047juOniuC5JsMruM28ZJ5I2ZGNu9U4gLf2VCcSgvizgHms5kg3U4To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738628754; c=relaxed/simple;
	bh=e2dMfnVWuUTjBzxyLBwdDdFPiXbHbQgmMi7Zno/SMzE=;
	h=To:Subject:From:Message-Id:Date; b=fq+XOIvytVm2HK0+aOEbyCSt8MY894LlOOmaKKIcA/UP1WCPLvmzvCEc/VBQ442TkfkWa+0eoUUawJV74EY46ySYS3iPDAKsNclBzKPGGRaN//om5kfeTO35mwjojQjYL/Z5aOfRgmuUMti8hbpLv7/o6o7YKFNsZIh5uON8tbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hd/RrZuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hd/RrZuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9687C4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738628753;
	bh=e2dMfnVWuUTjBzxyLBwdDdFPiXbHbQgmMi7Zno/SMzE=;
	h=To:Subject:From:Date:From;
	b=hd/RrZuBSsKPajIHNjhVwtL55wx7+FMU4Nn7+wDSP4adNk42DrFFC2le9CHK1DDPp
	 MAEvnkw/8dA0w+xonGVo+fWg8r8iwMvUims0P3JI4NhJHi5NGoT7T+YVWKp6KEkiIb
	 biueLOKS2nnvNxEhoqbkNI5lMP/kBnnuq0AukEVZiqrnbdzH7SRav8V4on8FkRSg7U
	 ggB/m0wJp3p1rGm7goBdUkTYzhpHlCxRufwFxbxk0UTMKYdOgnGHQ8Ods/TJPSupSO
	 OgXoFVHTldBumascwuRAYiNUbbiny2IG8JbEoxmMrWHleJlr9U7L4SaEu+nruq6nsR
	 gKlJiMKQJXU9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6CC02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862875358.16330.15477586813740573242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c858b5bd2849f9a3d526f49eab4f4f7035ed9f43507f48513a1a5b0951ec934
Date: Tue, 04 Feb 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738628753
