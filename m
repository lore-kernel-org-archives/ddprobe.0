Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B15C43AD5
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720491383; cv=none; b=iWiQRzEq9xzgr0CxY3Ac46/O8qgFsq142+1Ju7wo8qQney2sM1JK2sgDqQF0s+Bg/esHUrIQfhU4EmltfiuLjpeIt1YEMRDj2nJZTQ7AAngCQIF5KxOWblnFha6hPO8rK3HqiNTK8abTFkKTkiDE1wtIFClPchYwl+xHi88uy/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720491383; c=relaxed/simple;
	bh=h2mpzLefae8AJ2jp2mUwmSfcta5THUHwpcz6EI2PuLg=;
	h=To:Subject:From:Message-Id:Date; b=md/asi6U3/UnKPjBJ84GwJUXxrL1VXy3OR0oMbpc7IOAlPDrG/qlwYofnT2zcuZIP3rVtMGeu38QdgW0zDEnDa6yCPKBRELzFkJv2ZzUAAX75dnwZBiuOmGQAUm5vXB01Dvj1TsEhST7JFhklP4/TFE/XaXErFGgcdDFQglJbgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AP6JQpz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AP6JQpz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45AEC4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720491382;
	bh=h2mpzLefae8AJ2jp2mUwmSfcta5THUHwpcz6EI2PuLg=;
	h=To:Subject:From:Date:From;
	b=AP6JQpz2KwxsZR5O3KBnxzvFd6I+QImwf2pQHqJTSHDcberhxnxeG+OlJ0qyAP+uU
	 SsiHzjJZndmrnEinfYTqiFu6eIZJOQ9o77OKBUwoV13XPl8atrP0G3RbSKHwSOBI3q
	 gyOqGznzcfK9St5rrZv3rSeBJeerzT2RMQpruJXTdvzD+VrzN2MSYz0+H07zC/BLAm
	 wIFO3zWvwW3k40R+RdSPUIwhvsyfToQcPg2471KS88NIO94PwgoF7cOMa5UL8YLie1
	 nNg5CjvJAYjtH0hCEHtVNkBapqZ/Kjkf5g25MhgxmAu6gsoXNQal8E8NCCMuJdzpF5
	 ji/oHQdbRq/Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD093C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049138276.8958.7746709764008116259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a7d599ff071dc68b731b8031016af5caa303ee1012eff8a4dac519ae459e13
Date: Tue, 09 Jul 2024 02:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720491382
