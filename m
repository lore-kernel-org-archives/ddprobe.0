Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1071D2D877F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767348834; cv=none; b=fQ1PBvvZg4OSXpx2kg1lQFVwF8H3oXvF99vmvthGtX21eoqachR2gbsk+jXKHGe1X1rXLNRCnLJxedrcLMa7Fy/NAuVpVeGDgTLNEHoWXp/F7kAumquDEvhQ/tIdGFbhzciHoYJHlbMivIuDpTE7U9N2LszwdKNor62EKmjydAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767348834; c=relaxed/simple;
	bh=4tJr4PNYIF4ms6Si7JoLcFf2LIn1EONQbiwDUGpbjzM=;
	h=To:Subject:From:Message-Id:Date; b=gBCvVZJN14f8j/6k3idlXCRZA/AF6udrq2RxBAzY178J7zj0jzY9qpDyOSx/vkSdnDt00hf1NM5Boetnw1DVOU/rdZZ4/zIdjhMPGWZDNgribS858SFOadLvejsCmlsMTLTu6ppLlEKNJOENrkfiGEjklTlZWZODmzpdTEY+Drk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUeGwiMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUeGwiMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767348833;
	bh=4tJr4PNYIF4ms6Si7JoLcFf2LIn1EONQbiwDUGpbjzM=;
	h=To:Subject:From:Date:From;
	b=ZUeGwiMUWxfO4pxSJpTt5AafXv4UIq/gVQlxfPQm2txrJs1PV8B980tmsHus+4kzh
	 upZxPudgBZheRFxL9ZveNUTV7eCQPQrLyKNLv8wFMGlM2GW2VrI7iDau0WuZQ8bh+a
	 ZzyNk95s5T34/q1gxO8qHSiqG833bHgYZme9geRjSGg3k96qMo5tcS80K7VdwxfQi0
	 /HcKHEScJr41ZZwVTo3OVgKVXRwyOqLPbRkIBAJaKB/Uhd4RgjSXTF5fYjNCslTpo4
	 ItqzbeEGoEbnaCnhXDdKMqHKXvJUf/UNHpLI1bbC/aCDB75ZdUzz9DperuNdL12+JK
	 72uUKQVQ6LgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734883358.5995.4634147252236835426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ce0ed536094417ae4f8bda8f050152604f3c4feb41252127effe0412204616
Date: Fri, 02 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767348833
