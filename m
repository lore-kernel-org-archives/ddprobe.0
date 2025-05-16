Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E942AA3
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747409394; cv=none; b=FSN76x3FbsK5A+1W9xgVWjNqpxihhq9+9Rl8jJjR8iBjBsbyvxHlz7LqBI2t/nt7LkTXHjRBgXie/oQWIR3yPGp7T8uG1+iDtTg4a5HmVUWWmfubeAgiJzy1uhOI/jtelFsPYnt7y8QKAlfxx26KUEZaqpte1KLBtUwkhNsZiqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747409394; c=relaxed/simple;
	bh=RLYIuu+OPS9N8aBRp27SunMcqph44h7yJO/HKUSfrvo=;
	h=To:Subject:From:Message-Id:Date; b=oEsFUbZD0FH919eFNU2kuarWNN51bUzIL/EElQEp8E+iYPoqNALrEEa5yzuLCKrdssd1W0rUvVrE62I5yk41IWx2Gq+RhPDVStrTnADaALUoFNhwMN62YJ/qfg5nKhIRtqpXvVCco51TTqWZXWwikJdRNJc8UuR9EPv7O6TyBe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VigBtyJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VigBtyJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2BDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747409393;
	bh=RLYIuu+OPS9N8aBRp27SunMcqph44h7yJO/HKUSfrvo=;
	h=To:Subject:From:Date:From;
	b=VigBtyJfy4YyfuiKO0F2gv1BuO6xN8ZmD183RybOoiAgniUAUBLHwaAGK5GufEiW+
	 i8PIGsrBKJFL9zGOGHK7JV2dEkmyJJItqrjXM/XZVv9MxImT5RFxiTmMZBrqN9Ivbs
	 62cDge7u0BFuFe6mEAn1AIqcxwruT7bDzrv1xzl5/pxyhymodS6A93Nl7wwDWklPz4
	 QjIvE86qr0t4MLe/oKNkx57hrZpkp7k2CxL5gFdeQkBmGKUhyZkTqRpXi4x4tH4nCb
	 LeZ2/s1sG30aK/tFBdgdNdU8CYhQcqz+SxHFEE/UMkbLlMHKWIjFOz5qcKHaftlOT1
	 gVbPsxyXNHbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E754C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740939357.15283.585531379149885006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa89bc7cd1d445d483d4d7039b02f109a800060d8cc530f48b21fe5eaf653f67
Date: Fri, 16 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747409393
