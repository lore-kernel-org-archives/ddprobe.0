Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C2A14A60F
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752211794; cv=none; b=GigfsrKSCC8V+6YFZP/imFhNQ/tryzsft1sMgkw6aibT1r3imD3Ic64BXbE6dvW0Lh/+JF1jvQOWlqy+puwsvISZdCUAhT3prN89JuMlxywCVGIgiixcI2+ySHPDb1qt+5Cr7x63+7gmCqknkrJj4tinBgvWX3iHcBwB5Y4qSOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752211794; c=relaxed/simple;
	bh=BklaXkMB+0NPEl3BoV0dIGJytf2gK3umDkd3g6HlXSs=;
	h=To:Subject:From:Message-Id:Date; b=djTF6Hpo4HomCljtllxg4d/089+Vd5HTsFlAHFeeiDWreW1LJ+e6Th+gFM2rGcj7TdrHddTgdHc4k5pN9MJsusCZxHjNQf6HZTRjtwGdlh9Sig7D9ToKK1q48SI+hfT9VtVl0byhCiGSWptGAio7U0nXI9ieGbNmNsD515guA/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJxfy8Uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJxfy8Uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0030C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752211793;
	bh=BklaXkMB+0NPEl3BoV0dIGJytf2gK3umDkd3g6HlXSs=;
	h=To:Subject:From:Date:From;
	b=oJxfy8UycIQeE9S7XtwrE0n87uQ5hHiIanR7bId6Bd1+wcUBVwk/Al4ecSG/TgJbr
	 GX5dZJWbpPRm/7VU1fPskLF0bvSsmpw4ETUnAXDyvhdUOST1jNhxRstaahFoS/ATRg
	 p49tVIPfhVDBXLu+QU4M+DYj6pKZjuA2jvRmh5/NkhLQFI6H3k8YdEHPX5qnahDgdK
	 HBJado7PTy6QpL6n5rvtm/YDpJvmDT4NHv5Mxc8Hyxn0GPvBhirzdFi81r2znH/czk
	 4voQMgrjDFbL6WLaa61NzCp5HowhA4bBmZz2/Isve46waEuBEbpHO/2gviOtklgwMc
	 kKTU5CA4Pt4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B6C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221179358.26123.1415575032183238749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6acd884898f797058809b5515839d5cc741e259c1c855f72c03e17ff81dd2b
Date: Fri, 11 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752211793
