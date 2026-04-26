Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396AA40DFB9
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777202854; cv=none; b=byJbwLJY6ubyTtfQ58Iypw7Gdk1UcTBKWmqQnZNRKtDDEd7d6ND14bCU2xJWPmk5Afsp9YofAvyyQg8wspL3w+UGwGerWSUlIBVY01KB+k+xnAv7Ca7IiZoV0jTUlNV6Em5ISEgT8SyXwavjQePxRA3moXZH3QBNM208sd7Q4Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777202854; c=relaxed/simple;
	bh=oR7hi13ufEAdQudtFzXxe+dcYOZxlZeBEP9hXfGnhd0=;
	h=To:Subject:From:Message-Id:Date; b=iXEe/EDHFdybDdWUI7+bFKEoR/PMpgOP9JQ5Wlx3CHgl23DxwerOJfSn/1OKLd19RHQXITZFiSejVeTrCrCm7+9Ays+xL9TY8XcyPau4QrEYybpxQCZEwneySVDLpVD9TugNdM6jmxMPmri995UYrwdwZLTyvn0DvqD1tPKzbCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFSin6Jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFSin6Jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF728C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777202853;
	bh=oR7hi13ufEAdQudtFzXxe+dcYOZxlZeBEP9hXfGnhd0=;
	h=To:Subject:From:Date:From;
	b=qFSin6JzE5uFpNJEEUHwwwV0UvIyNvVNc6zERlOaKldPENsmesXyyXlEzzWyFK7ql
	 FMlavXeFbboL1CaydRNVpkQOvinhaKNJMd/IQmIOqUY4JHjCvJVeBEOEWFymCPP1Hh
	 CpxSl3pbEumiS8/LXZOopZrJVOZ0IIx5CVKo2UqVzet9aXZjFAqIOaX1+FQKvrKWTM
	 3VXFVnacw74daQzs2kFip3c60t64up1K3ftIpgACwpY4yFrteZz7eOkWNYYRtCnz8n
	 +krsMMjhez8r8+CURLQYslqqvIehb0hHPBomd0AJATaljcePwckwAFtdP7jt3r9Eos
	 Zop7BqBG37kXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED77FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720285368.24403.18279210841037716792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81290b291a7c45b4523c04110fe1dfd76b5432d4c01ac83e5e1d950f1e68e38
Date: Sun, 26 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777202853
