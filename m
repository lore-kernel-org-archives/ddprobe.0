Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B95A139589
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714715543; cv=none; b=LlvosXnvQBHEyZ34cBSODL8JI9780wtisBvtzABxAO/XJEN0nVBfIsvm/wom/cxxYl1aY361ed/rsaboIfIam/VGeu7UCF8fEuCBDocQTANLjZvGgm4nkk8bGMgsbQja7jARYqKozNkiwaEy3sKIEA1WLv3GqMySVoOI80EegN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714715543; c=relaxed/simple;
	bh=D88hQhXlVBhM2iREt9OBSuBYJxlFXq1ry+wSJTrsFLQ=;
	h=To:Subject:From:Message-Id:Date; b=lbhWh4OxkUxEcmrWPebH8VyTjj2EWSVlUAujssydbWCtlB0/kbbL30I+dIxc9pIwX31jOBY08gEdbwsOtLsgON+pGDT0edxPhH6jwG5Zr+Y4rQGW6Ook4IksC9GaELvqQU7PohjMc7GmhAhhwOx7hHIEtI8cl1Gpwwiq1uZxCJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2bFzO+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2bFzO+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D522FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714715542;
	bh=D88hQhXlVBhM2iREt9OBSuBYJxlFXq1ry+wSJTrsFLQ=;
	h=To:Subject:From:Date:From;
	b=c2bFzO+8XfazQPsl88XYRE1ozGh7bfd8p9w5WZG42bUggh9L7RjAPwxfHfp+V/caP
	 wki2CxNjFVcZQw1K61fdkChdUYDQ7mJdEwZ5vk0jg+RhloNfB9gwCAB3QYbQ04JC7D
	 1xBBqz7rtxKiE2p9ZBEl1ge4P7sLlOn3jpVtUo2TQRHInDxQJwptMmHw9zbb4yTq+S
	 LMA0NVyrBNIvEPsgbypESpoe5wIkaKTdDizwpzqx7DjRS8wzIy1IpuXtWKP45Desch
	 Lu5pFTrZkqJgLSqCOTGCNckbyEzL2GvXTf4wnM7jSZECLcsz8hWwaTcyHMqK/vtFxM
	 KLZKjJRWZjgLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB37C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471554275.8990.1762166418648849530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664eac8f097f9432be7278adb71f19b2633852d1996c1cecd86686817d1cc334
Date: Fri, 03 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714715542
