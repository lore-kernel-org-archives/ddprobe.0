Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EB86BB5B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783216714; cv=none; b=lj8GzI07fNlpy5M+WFNIq7MbKf8vZbGqPi28hIMEjcFQit66k6XPDW4HGcR+49jyr05h08f6NbyPElWBDgm+O2EaaX9flMQgaOFlmYEof+/zYRlMEPVbPegIKLoUTshQuN2o2K/iQyx9xmAepDVTYdFIm4+h/064okgA+DkkSb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783216714; c=relaxed/simple;
	bh=7aBPDDZMeqZTxt87bQ7lCmRSv5AKzTtWAYwDR8pQSN0=;
	h=To:Subject:From:Message-Id:Date; b=bMPLhdG92ZYHrHZ12tZellNJ5Tq+QGZPFZvGT49R03KPT3SLO+NtrMHwhbmoGmRFogYe7XWKnvaUM/uDk1jkGMc2dWdUawXQ1eZXmMTpsDFV+AuxqAp0EmlKwQQPRYDcYXzkNCv7W919Nf7kCwtm6iRITkwZgGC06QzC5QptQk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8m0K4kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8m0K4kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB4FC19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783216713;
	bh=7aBPDDZMeqZTxt87bQ7lCmRSv5AKzTtWAYwDR8pQSN0=;
	h=To:Subject:From:Date:From;
	b=t8m0K4kdV2fu3dQrCuE/JKq5qodWb5nZD5NpcEYFD8gyE7TCb/LOF5k8Wi0YBL9TL
	 ju8S0lkA4EIwZvydkguluBaCOhip4/9RC83S64Xet5slaEWQG6FbslglVqKekcZ8Ek
	 U9Vm1Mm7MIy8qjLylHikMXa8hHrD97PHwMYAt5J8cqf88lXfbDI26vUQWb9IQNHVYU
	 grYQdSwkquMUqX3lg8+fQy1PeezAjn5EYU+EjnhIg3U78q15TTXSAnrSeZLoBz6d3I
	 agZ1k/YY+VjXl00OoqCusp0dAu0W6MOvBrMKORq56gghazHVZufzsvphbi9X2FQ+xF
	 1sKeGEnjQlhPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC3C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321671368.27287.2818135675228761577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c006299d8ec769a865061d448f02c16a6bffd8cf51836edb459fea16ad35e6f
Date: Sun, 05 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783216713
