Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED48264A9C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746521394; cv=none; b=ZxiiHKVR7c1BX2czUcghQiiJUTpBQFN5dsCu9jgjU4CyRgCsFSfOzO75/u02fgzal7Av7407sEWEGNxJALZp2ELyQFMXQ2sIxnvmFGRkbJpleZlzw7awM8NuYLDbyXTMEZXhZlZEfg4a7/lnrYBFlezb6MbEViOLhj7O4PxxKd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746521394; c=relaxed/simple;
	bh=YlNXFp9RRPpvEw4FacpjciA5B5Ywxk1WRPnsd+LTgRs=;
	h=To:Subject:From:Message-Id:Date; b=FTHfvtS9ZmH2URrlVtZZoriCNT9KBu5lFSrNwKx/3uHUlQHf+ZkJuc8ON5jKJsAjwppETGkehVYjM8jLEkfwIB2IzDfLC+XCshzsHCFBe3CU9Vx29bAoqVTuzR2+Q8P98KBgUtjQYN81g9h1TJOlyAKF9b0dbOYdgqe2IRMV0ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAMDbn4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAMDbn4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB5CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746521393;
	bh=YlNXFp9RRPpvEw4FacpjciA5B5Ywxk1WRPnsd+LTgRs=;
	h=To:Subject:From:Date:From;
	b=LAMDbn4Rl+sqHLdcOXCm8TiYmq77M6qr+iIHg8z363/MpHQBNOIemwOlcmPHkcUAO
	 Jhtccb2RykMp5hcLQ+mGuAimJ8WFkkwUD0qkGRrIhFxepZ+6fKfYE9x3wnOKP4RAud
	 J0la4V7ThYzVC8f1GgXu0466npRurG50G9Wn49Zq98ssiCbnHBsiQ/T01Z5h+VD//E
	 RC/CNsfvhxiQwMGaKtTHGWF/3FFy0K4BIQC4KwI7Ud62omUok5LMUOrONEQyjUUg9Y
	 0aCK5wG6xUX4646UzPp0UJFdWeSVgSyGdXYu5epjK7L0W9ic8FXW0WtyxTAn2/3kGd
	 5PGSKm0gKodQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEBDC3ABC0
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652139362.17894.5461348847510402034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2f0c2b3014c05018cb8c64e63f5e73935c56e9a1791d7740a381139475356b
Date: Tue, 06 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746521393
