Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75CD288DB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754369993; cv=none; b=TGEcgzitbqmDnOjUuz8AsHvZKlC/f+WfXBoz8Y8aH9vSuaDmPgv383lvrDNwmWulFuS4gSaCsHuKUzxOTr3bx5b5apSi9UVAL9tAjtwufmypDukxiZwc+HSPDk1rsBX/nXPeohi0ob2jILhBokqnnXG6RsJIt6W7TSgTQ1klz/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754369993; c=relaxed/simple;
	bh=ZFCTCMub0h900r8lWCLnkqBUjVAH26U70qjHhN9mfdE=;
	h=To:Subject:From:Message-Id:Date; b=rJ1DHTRoYHkCaixGClpyjJN1b7Vq0HHGVvSFmY+aXs2W1HS/beQ7k2whUnzjo9peQt4tWQ12uHBraizaVzqxTcWVwnK2h22YheMfQy2AuEfFLoWGZ9H7Dgp2GfpUrq3mSQnzzo1Rxw2MZOcmh0ql1VEkOB4z/9gWyk6TiPeWVf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2syoFJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2syoFJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAC9C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754369993;
	bh=ZFCTCMub0h900r8lWCLnkqBUjVAH26U70qjHhN9mfdE=;
	h=To:Subject:From:Date:From;
	b=k2syoFJlTfsk5s7oIPOCbPh5UeeqlB7Nf0Nnu71/HUDfbTm9AI1QluoIw3xamw4uE
	 4HO7KDaE7SjJcxDA1f+1pXPzctuvdDuGJAbrG9/2v3pBgeHgckyDEWZwPw5l2B/6oi
	 wwSFDNgW0na+9gLb6qxjWmXV0E11VOL493QdLIQSXxUPX41zINHDaxWjmi0Ko3Lw1g
	 ijpf54RQAfKqOCSVmCLc05UlTXHVWAxNMofTnRFaMkj7MA15Siuunx4HlZTYw5txv8
	 ++9PgTMZTFT4N4WuUTm6r/GMEo16PxdZRD4b3vyLpTv1w1VeQsKU4B552uUOtkkSui
	 wsnyukQmEsLUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE69C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436999357.8321.14122037975622123448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160115fe0443f0c2e265b5f8e75d3a351dbe8b0b8c442e3ab65822924a1195d4
Date: Tue, 05 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754369993
