Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1B51CDFAC
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759576796; cv=none; b=LqaEqfodnYJ0U+v7KH3XaiLFBi86/EXo/0AefKr34QhOlU8UTtelVqf0fs3/uyfC+y7gkdxVggWU3RgV/nbouahKjSvZfPLGRtt37cRuQxePBO5cilPLivOqRGHDmRBgvcgSqBDBmK/xlP8/YNu586ekqgcziqEcQFase/eQCDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759576796; c=relaxed/simple;
	bh=KDTR128IAFRzgHWsTBXObDu/2rjRKRpQyGWeg2IR3uI=;
	h=To:Subject:From:Message-Id:Date; b=ZO48ipYJCNtjAeIoKMagzgkd2p/qhQ9AN9i6/d5NHqfiK773oZCyz7t6/REbpgRzO2xYZVgAkfz7K4Z7ie4AOXYyg/xa7HWvXOEy1fgt2LW8QMc7AA/hurer6W8ChVUYCO7t469iZraBroLlWiqmQKgkAXZWB33wsjWAe5NEzcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zxe/fMUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zxe/fMUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F03C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759576793;
	bh=KDTR128IAFRzgHWsTBXObDu/2rjRKRpQyGWeg2IR3uI=;
	h=To:Subject:From:Date:From;
	b=Zxe/fMULiSwZ5P5k0U1JnnJcRzsjhBQddU/kgGEoBwTIKW7czkTOWBaaTeKzByMXv
	 Jl/ZFOWKtU0Dr+N9tKtBfR5s/a+R1AkcjV1Ij37/6M3u/Jn0UyO0lOmcpFUpo0gfdG
	 EBbQcnTtYVIsrytQOhLdK6XPmP7thfUR7mNaHGF1bGVhNg9okwchyN5JxvloBzbKj2
	 JPSuOUYviJLVLXqf4JYZyL306J0CCgk+MI/xoOT9nEkS7uaHcqalbEiIbOTnfj7pKq
	 QI80eW3NyVk4kSaevUcxeI766UG7Nl9vQBH4jHLlxkTs0RVBJ6qTjKxYzd9CeEb0YS
	 4bbz6eCu9HvBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4BCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957679357.379.17116178843535360459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f54e7b759b7b46fbcd51dae9304ce9300bf2893aa55c9d818ac0e976b073a3b
Date: Sat, 04 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759576793
