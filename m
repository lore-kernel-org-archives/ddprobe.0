Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE9F221577
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887094; cv=none; b=uj3QBjMQB8swfqhvhF9QN7KWLCvhW79a71vDyi/UCjTmKw7hQTTP7vT//2LpFMMN7Z6MpLPJXO12rd6uSdsXYjenBQcW2DbyiDESpEiPXUtjIQ9SgKdswjfss7oXfZ4T1xfqACr8Y1QSR14byd67Y5vrLbsJ8tpCQ/Aj7DWrGnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887094; c=relaxed/simple;
	bh=/ok0g/wPP90I6Wv/1Myw/gHECj6m6LUSZJpNZJky3ZI=;
	h=To:Subject:From:Message-Id:Date; b=E9kL1wzHmyQke9ZThLhNiGKaWunaT8CE9VPUU4MQIAZs3+Ynf0MNiI9wuV+Ny4rVyc96hRwE7levRFvHYsfIVi4F5veCemo/N0SJ+i2HGtv7EWExZFpkxRX1Yvg/dOUjL6YxHV9aUL8JTwG3CP/FqtjQfouFWSG6DuEwzQH+eBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAFdlo6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAFdlo6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7ABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770887093;
	bh=/ok0g/wPP90I6Wv/1Myw/gHECj6m6LUSZJpNZJky3ZI=;
	h=To:Subject:From:Date:From;
	b=IAFdlo6FH1bhH2HPzgJ/WrMF4GJkd8sabxTx9jn0Sz+dfMRyVwkshgMxoxPwHhU1i
	 C39wOBnYbwNyjjl9YtxSkp4keQ8AnSl4ks052V6/UmqudakBgWVxNcvea5E5j2Z4YT
	 1bkaK/th6VS3cMZOPC3GB1gVXNmhaSJieSRuXZddMPpsSYCbSPvwZNI2VyeXknTNhA
	 zHjMFyH83yFUS8AfEonpgHdrjTimB/qgl8QmJaMU0tA0SCpUVoXHEwf8NNwc0Wlz99
	 QZl2BTTXwmXFwkTU8Ztvw76D7BnkVCZl7ar2Qq4X7OBGdQZmUC9x4G9QjGPROib464
	 iOnJV68ubeEyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4DEB48EC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088709370.22384.15049685725125371343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d59b271d314d62586edbe1002c991177303b92f0a4776f242d497b67fdbb009
Date: Thu, 12 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770887093
