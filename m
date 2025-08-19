Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0557C30C36D
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755637194; cv=none; b=lvRuQtmY4csfxhnnA7ZL+DKLUmM5a+5wz0uBfTV9FKrN0Zu1BEdmSpLezOPeBcrehuqpxMGup77Cz2kHlra5f/rJD735oQX44tOSkeJI7izDAddbbvpp5IDyp7zc7fqTQzF5vz0Sbw1DUX8fncUVNystsD+q9G52x5cJt+Hp8iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755637194; c=relaxed/simple;
	bh=Nmx1xTNi3cOdRs3xsdRs1UI+DVrdwoyJp1TFSHKyhT8=;
	h=To:Subject:From:Message-Id:Date; b=Dwk3E7MqcLmhBXE/dFd9kTlnRfP+i5CCDoNb/zq838BUsj4RO6t80dnHHCieliG9pbma3G44SMZ0tdB9JEehuMoCbCq4H3D+EDuzU9g/ip5zbte7vF5gXBgm85s+E/IgNXmncvFQuUPogfbafeEMAJSQZqqNUyVZokPuANTBgcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3S/7hCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3S/7hCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7595C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755637193;
	bh=Nmx1xTNi3cOdRs3xsdRs1UI+DVrdwoyJp1TFSHKyhT8=;
	h=To:Subject:From:Date:From;
	b=o3S/7hCNShvNnXM6dHpuW++TMDFqOERS1L7LVG1GsTABp28ouM0QCMdsPzyTtH6+U
	 Fy4XTso3tEuvGNerv9zVrCNIS3JXxuuE3D6zDJR/zxKvvzTjjmfZmGyE5yxmk/KPVn
	 f7sPgXtS8EuxPlrH52GgOsmIAYJU1uztgDSBOSs4ldmE5lTNztac7YKUKo+KwpOJnR
	 9Z5ATN+kBde+Vuuiae96n2yDdC3lEfuX/0PKfILSKv9yVJmzjC5n50XAM6msIbUKHe
	 Su7/yq7xdoUR9udJmll3Uk6mQvh2sxTgch5I9gB8vCS+DV1Lq6J9Ryw6y570p8nyZi
	 R12appvJ2OS8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A7CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563719357.17422.11232903955293929281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a21667ab446faa0bba49c281489ff72157f769fd8b4e296c0b897ebbf835497
Date: Tue, 19 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755637193
