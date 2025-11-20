Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA2B1C3C08
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763679114; cv=none; b=SgtIiOQ06iR41bRAcRvuHzHkboK1i7FJuwJNZ7nehg2QpvlxUbcFdeGHqYy4VM9W85ZQmiJyXeGRa4k9KFBVzuYfa/rQp3IiIQeSyE3xT2XtiiVePir4doe8xgoqJvppn81KRCsJn460eZ6ncgFGhSEOcWyDOrnfDXUscjnFqPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763679114; c=relaxed/simple;
	bh=16Ccqcxl3bWDNByctcMbeMiBPdQsb8UYJ0AkmWBNsLI=;
	h=To:Subject:From:Message-Id:Date; b=TXu2lJqB95U73fX+Bt5bJxS/Gtdmbod/V3WjWgBxGlA9hTsoJeUCcifrq46+G0KV2Bv9kP+87o801fa7YGGPbGUaswomXeOOqyH0amxrFMBIOG3g7oLFdbo1/6zzu5R0YCED2+M2iyN6zmp+6027JnWFAn1qNenVRtKhKZCdwbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUCdI9Qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUCdI9Qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF01BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763679113;
	bh=16Ccqcxl3bWDNByctcMbeMiBPdQsb8UYJ0AkmWBNsLI=;
	h=To:Subject:From:Date:From;
	b=OUCdI9Qt/eW0wcrPu/OO+L3ZXXFeFq439EQHIPVS5jBO7OB4x+9j6Mhdp+nXlvN40
	 oHRgMls76f238gSqDejejZYMMtjnhPMwqzAAjrX0O02QqnY5+hGaC/RP1E2KOVuZle
	 te/AqNAXbLmEC9joseIUSsaIzlXlW5uiXxEnt/iaP/eVMYW+4U7ghkOodBwiBj8XsJ
	 1qw6/9xyFe8qlXKQtcP5/xesf8oHJLO5BZj9Zf/1UB36VxC1tbRYd9adRmymcew+hi
	 edKjSKivSAZ79AqXRpZNPXmcZODQZP+iMNQktae6D67eXWXEGaXuICzVmM00xhQOnz
	 Dkd3MLe/I3OuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318CCFA44F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367911359.5414.11758566070388067235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab0be8c0dee666a90f9ad66fb1f11a5fa505ee0377b985f89a95ec622378f2a
Date: Thu, 20 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763679113
