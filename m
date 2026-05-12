Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CFF158535
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778572834; cv=none; b=ohF41gumM02cscqa92mtqe5Ct4NGgBUxIlzWhE87vLpsQFIjFY0/SbVF1jcmP4pPTgl5mZsBZCHqL4p0lK1HzrZKUybST5OcmQFR1b+HSDhQBHtClhe0U/2bavUrvX1Q8gvLv7eJ3Oyh9zikiK7+4plKr2zRfXAggAhHT0J5QGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778572834; c=relaxed/simple;
	bh=dPnYMUEKL/fbExDgn1U2kdSP9vkMnR705Mu6JxMDUHI=;
	h=To:Subject:From:Message-Id:Date; b=E5kyESRuB5fpJpicMn0WNErwYgE6dgdL6FT6Xni8CegFbV1xr4kxvUfBBbh+QIpbvvIQ6eRj6Td7uZnNB15mJayilzh8RFLcvIdMMcoZ/QBJfPEj5k09OjcExTwWXqNLfe7pxvlqU8JafObcJP3MmFL9k05efxCv3MKj1DEEk7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y18GoCsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y18GoCsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45CDC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778572833;
	bh=dPnYMUEKL/fbExDgn1U2kdSP9vkMnR705Mu6JxMDUHI=;
	h=To:Subject:From:Date:From;
	b=Y18GoCszcTCBdeKkTN0ttPLr7SDnijPOqiUg+p03I7evGeTuAzGSb6XsGQjRKkecy
	 CPgTg5kO10mUyWoSHDgdQEvxm6JNUEumkhFQtGZL9FfI3IVcqI6iZxRFlPvwNRiXjL
	 YulCtfjDOem5OQ+6dtUfuHF8lYoiW8QNAt/jQb9QJQTQh6d50zqIVaP03aI1qYpb8h
	 dbMlDNJOco144JX9FgvLyBGmVGFg8ZboLPklhEs53A6zhszMzgIGRNvyNKeL4V2G5/
	 XkhhfatMO31ms9Iv/dOPELGcy+6mBleXvSgSAuTzZNwgoZ0Sj69WUs/KFPdacJStQy
	 myyXV0O06kUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9859CD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857283368.31328.14454985328780935458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068c3d8c380a68c4e23b68bb3c56b31a1deba6b71d21596b243c8c2dd569c1a5
Date: Tue, 12 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778572833
