Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3031A2727FC
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767380034; cv=none; b=dh0150amf4Jgt8tky0RRHwECJPhP+jg0IW/BZibThnk8PGsLoRCyqKGc1KfZ04j0y3/nya2BD7ZevFjbq7uQQz0EUtLAh2ZKfNinq2QNXb8/7CRp4QCMJyv4PCAxIhfJifS8z2mRuzA4gk3Uhx5Lm2HYFmNBdPbGoIVZh0oTmDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767380034; c=relaxed/simple;
	bh=hK56kNt0RheTeexeNpULpW8aPGYBcVX0nE14mFQodZY=;
	h=To:Subject:From:Message-Id:Date; b=JAWQsHFEjy13fHfqs8FORRGK0cBr7nDCVb3ihn7GyKZIHRj6NgP98NdgMKTgVJRFx2wrvz402/dfrTcqSeD6Wvtqj2l5iolfAuNWXz4vQaiZ1ZkJezlPS8XQdXYUnpJRndCvJrSpz3RabwWeQ4EMMplbC2y4NEWTEf78/h0UsD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlyhokqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlyhokqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0B5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767380033;
	bh=hK56kNt0RheTeexeNpULpW8aPGYBcVX0nE14mFQodZY=;
	h=To:Subject:From:Date:From;
	b=nlyhokqfjXyhuB5SWo0MIc2c/1l6JxiT5tl73CYy72JBalR+Z5U0Omz5Q3gyKrDnV
	 9tqwpDas3jR2zHEsFf5MXcEbcopW03+aqslgteEyH8zX2UHvNQleluB6FFoL4h58XU
	 VccKg/4VM6H/EXlByM/6l70K50AmASVcHcdhsxNjtqHSckfyEYLVR24QuvyfYY+qNw
	 ylr0QVdtqu7DNEJTWXyle1fNe4zPpcr88aQna2zSX+5tl0CCixjk3N18P1qczl5Zqm
	 uwVNvfegUiuGEA3hAa7fZDV1hZ8UGr304m6peYDaKCAHon+FjbsTimR6Q6Ypm8mUhZ
	 L0KcumgUAlxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47BFA3755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738003357.7443.3817219714652595645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafdab3ba7afda09d880a99f3f80a31432c271c97c79b09aefc46bb5dd98092a
Date: Fri, 02 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767380033
