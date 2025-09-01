Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28041263C8C
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756715394; cv=none; b=ZH1F6iS+RQhuhnOoueOvhBkWwDQGATzNvxe3u+jor5+RQT2dT0sS/mE61LVLRlbYNTDSnnXIxrhiXSYgJXgiWOVlzjKX0Q4rc2wsBF//4cYjEKSi0/qX2i1C9mwgQt+cXHlLkOS2f+Nrv6QjNVzaeXAvrqE/HaZDX5geU2IXwcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756715394; c=relaxed/simple;
	bh=TYfBWEq1IYKe7nyqDURLkIaBjkWR3lzoXRiSoIjmqy4=;
	h=To:Subject:From:Message-Id:Date; b=d9onKASdJTR71rP53c9JkQkRBhm/grSEQyKtub8cygd2CWTe4jpjJIIk7oxoyzTmF72aWecgvbGOvUlblV87mHFJZyxecfxBJkgUjWhHLi8i9LSnUXX6wGH17lIaCADVjBfv2vAaXkf0CrylKAwIAXSVsIcmq34njSKqZbZPIeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYXxyQs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYXxyQs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85EAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756715393;
	bh=TYfBWEq1IYKe7nyqDURLkIaBjkWR3lzoXRiSoIjmqy4=;
	h=To:Subject:From:Date:From;
	b=AYXxyQs6Gz/k55pngFNLOO6vp5mMROYCS2A6YhMaU/O542pvEDdJkwQw3NKbQE0cQ
	 0FTHKoWnemuCVpdxI7ngqFZfm7lpCehvVSH/7Aqsgl0mtrZhhqs5+RINsgWCheWSfO
	 vcdYMY59ATc5EmUgAw513imaPqtTe+VzUS69dJqOR9g3hk7TcSvi2Ar/CI9Y4p/fwt
	 jdqYZGZh0sNZChFsn35PJ17eHmBnKv6W+1KuoO/2TmP6DYrHB4+WsMWYOWISpSLft4
	 8tIT9v+0ZpjPmOZ4zvE/wq3zP6WoGtQYpCLwTRKlOB5unfGrnGyLZHNzJbF4mo/9SL
	 jAZ2kQSg2o0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095BCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671539358.16311.6069228682128819856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ead7014faee15d107b674e91cc0028ea4deee542cfb4e271666bde1daad4ce
Date: Mon, 01 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756715393
