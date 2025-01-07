Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD71DF25C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736264154; cv=none; b=u8NJiyEwaJ7WQRSdMKHVSbwTMTuPr8JwSU7AYcgxnFsGPAS0kXTHqsaIa+Eelwzfayhegp4sqZl8YnQeKnGrXp159XOVy8Ic3U4ER8g9qfm/UQIGLgzmjFxU9paGihgnN5PComUlfCKi7hOLwG9SuxdeSsywORK74yQZSqVK7Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736264154; c=relaxed/simple;
	bh=mvd/+SKAZcY3bfXIMQIbIDYe6qfyoc9F8w1GFFgWoHg=;
	h=To:Subject:From:Message-Id:Date; b=PHSXwl8kxr0pGkN5G0bAXM0W+/s2gG8z9soWi/n50DtAeGOSiz9BZEoNR21hctH1kSLvHWwia6kKzJ7nOmlaFj/S7J+A4egBz/xEPVcf3LMnxAxDCdAc+RfnyWlkAzULM8sZ5Gd/vrXs2KDY2l6EVsu+WowZrX0NnZu7Toj4Zvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbCwvBND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbCwvBND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3EAC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736264153;
	bh=mvd/+SKAZcY3bfXIMQIbIDYe6qfyoc9F8w1GFFgWoHg=;
	h=To:Subject:From:Date:From;
	b=WbCwvBNDRwMafDaKqVNAxKtw2qBwcMjXDbgfkh/NBlClT9jLM0+M3QPBbXEBjRvKv
	 gNAqD/HJMzBAdG/Nle0KFvb1Usrxf0lT1zmk+6EVYbKctpt2wG1CIAZ8FHZKFcqTtG
	 SWckIhi0077VZW/D70HISrNvjGaU+kh+BOSHHq5HN4POKBhw0BHY1yWOZA+1ENxVqY
	 hragcO1ompfvZiPD5HhTcc8S0ALGXNQrGztEh9v0pOV/WfH+bs+FaB3yJy72qaByu/
	 MDWUMvOLken9o84v1bM5feNwkIcUsR+8rad/rkiP2jZ2sf/dbKAOXlDY4QuV2iUgKB
	 8DqmUk6vXcl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98512E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626415361.8789.6239046823375763428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60c60128d0bd1957089999f8b2248d3cf988385a5114523208d86b600ec1cd8
Date: Tue, 07 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736264153
