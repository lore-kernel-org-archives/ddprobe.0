Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8218AFD
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768494234; cv=none; b=hiekAK6YTvUVhU5tq9VKUOknWGwxSsY5gp8Kt2VNF+86HP1Aqpks3ekqeSBxH47CAbhZRsFER7n0ZGCrFbK8BJdlYWTp2KaqjNgH22aSjEfuucW/rWBrG+/8HzEOD9T60RaHnH+FXsj1MTEnkIGaMxEjeBKjQ+uZKQ6USa72B9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768494234; c=relaxed/simple;
	bh=kb77Gwgq4i7Jz1WeiNWSBUtlMXneDhPBA3mhnAu8kno=;
	h=To:Subject:From:Message-Id:Date; b=bd8W8j654EN4TsTAShMr3QMZPulYJNnG01mb7B6g5mNdYBWF4UcJ19GFQ5l+nGNGlPx515pTUpfMm6E8JQfo6KBYAT5n/s5KPeMeiiXGE7PLdLcnAMh2LNGS2xlDaaLfIicieryipaWMueHkxGsa1Rz0cqX1MDe0LXqcJifVfhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t99EoZxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t99EoZxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95AAC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768494233;
	bh=kb77Gwgq4i7Jz1WeiNWSBUtlMXneDhPBA3mhnAu8kno=;
	h=To:Subject:From:Date:From;
	b=t99EoZxCjaw0MORRIGsCI/7qvuB2hOFZqH2Gld57zga4lhWswxr8WaotFlz6ZlUa/
	 brf9BCXR1MxFlhOJeTn1VdKrj2MIuZz2VhxdiGLq7V96kZSJFM8sgSwFX5IdqbOfFD
	 IlJJZndOtL05PpxAVLHluFzLKbEub113dzUZwVzi8IuCGxrk5LrAi/cTd7C4zLVAih
	 xTgUWz2WchzGUXAa4oI3PSeEiVIacMo78qnY2jT/6ZgZIWRcrpjhuXuNEwkeOQe6rL
	 wFuQTKshRnpslAYw+Xz1tW4OjKyaxwB82ZnmsEcmskhBsPr4Tc3ylRG3vjbOff8kyb
	 R7AmklY1HQPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFAD44C7A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849423359.24630.11853313507167506440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f1a1289a9bd7b35df2af7bf2c2c6fed8f318f327788a95a19c2794a041659e
Date: Thu, 15 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768494233
