Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6585417BA5
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738406155; cv=none; b=MgjgwMcFhHzpBxBJCfuXJn9JXhPpLhcna9bYBAlk+nOHzdFRbQ7fQVxCQeZpsHx/qcYXLG0QUVTRf02lkFoxRiTa258hLb3+1siELggFzSv/oip7A0XDx41RXwu3zsN8/YwePmgC0ag71qlhVYBmu0+AY1MctSf7/l5B8KNOK3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738406155; c=relaxed/simple;
	bh=PClk4CL2zSdEpmC1zpiQtR2cCXbJSzmCyVVqONN9Uf0=;
	h=To:Subject:From:Message-Id:Date; b=V0UbHcKoBhOvCS5wTO6cFybjvb0y6nlctJ1plZCfUGQwxgiL9iELqZ0guYFXoiRzF4LV7zG+bHcqbIHDAJ8COYkpsUwolCGD1DARmSidzTOOBBVWJtk/1WiQiiH7emStC3LnAcS/G03ILC95D28UBtqlj+WcKbnxAkZARmAOK/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szI86Hc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szI86Hc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD11CC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738406153;
	bh=PClk4CL2zSdEpmC1zpiQtR2cCXbJSzmCyVVqONN9Uf0=;
	h=To:Subject:From:Date:From;
	b=szI86Hc0nUTzo0o64saRoHho9bHm6GWiMjUQZa+naUBdFjgxAyAqpJmjVKRt9NlTk
	 wGwjIPPABJW8L1je69eDc373NasQ8ezQ06dyFwPIFxR2i9yUvt6SIpEvnhs77lmhS0
	 liBV0Gl3J3V81ddnR6j7ITV4jAMrpI+XEgmwwNT/pIDUr3FKLTled/KbdjeE3HACUZ
	 rGs5MxANoR8FWGiuUOfTjX7v5a+zfvguXLfV0aqGH/fIcKq5KVHraux2Bvw9kUPInp
	 IVHKkZWoQf6t3QBmoPelCHQO5h2xGDnBVaICFSBzvX8im2rPKiNMIsY1LfRkUs7sDT
	 DTVj8KJkV0qfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C34C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840615364.20508.11232820350469339419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f6cce590d2754674ffa543ae65c7169f76501a737a67a595987e0d816af08f
Date: Sat, 01 Feb 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738406153
