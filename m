Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6934F1FA272
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762386594; cv=none; b=cQtPBN3pDCwLWbiB+b2SkvQWRXeLiFeo9sJSG3seR/zRr8YGBL5BRJCpg2NxNMKxedvZkELdvn1WVGe397htEJ49v4dZO26Dvz9A0ZfXg7R2sS2dFbTOu5z5hIyHIUTt1JtaZ5JW7pjakETUsNVd+rI6R2dmYHLMGm25ibEBx5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762386594; c=relaxed/simple;
	bh=PLhOP8XSo4HZydgWabTOnQclr1bGPci4tQ/Ati8VDUg=;
	h=To:Subject:From:Message-Id:Date; b=p52e115jv38RY3byCH7QOCqKY1HiRdkPysIChLnY5qtfzNQMEdVIivACd8CiZt417YNG1KtJkMMQ1bauHXOSblpaYwmoTDWQqBpM9asLjuMb6UWJijQPL1xK0xlzxU1sQ/kkYii7/cT7xxge98PhxbCcHh01hQKvBio3Yz2uBPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhgnlx/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhgnlx/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F023C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762386593;
	bh=PLhOP8XSo4HZydgWabTOnQclr1bGPci4tQ/Ati8VDUg=;
	h=To:Subject:From:Date:From;
	b=lhgnlx/8fGweGu1HQd5Zbh+6PtEqpeOMHSB3ioB9dhAjzoj95Ss9/BtkO6ei7+X1B
	 Ni5K5OjscuUvidBjIIr6YgvSEiQIHPvLt/YcoCa/SREwOD4fGf9XPo6Y81HBnBUN+P
	 Ygg/Ccs7QMw4ErTVUIQVScAg2GyrbV1qioOaQZ8gqm3oQJ157R9FCisd4sFzVtlChl
	 63DDLrfQRmHGJ3wcz8tSqeeeoP9K5N+lEvQVrTItxhR66CGSFpMjF2UCVDWpncQgFN
	 e02+ZdGmu6sfUfRge0dw0kMs/hWQk3noV+/yi5HBChD2AoCodGtE/PrPUHk0U4Eus9
	 YP2rVxfUWMoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBCCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238659358.25056.18318765134901340720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca72b181744d439d0f0ec58fa8e5c96d0e985c13be287a1b11ee01cf7b701bcc
Date: Wed, 05 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762386593
