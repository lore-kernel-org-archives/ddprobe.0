Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395541E5B79
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744876194; cv=none; b=pYqWxMS4RGE6g60T7siQCz12nxp1atNcGpa+HENsdExxBi9f8WNl3lakI77hM1uvBcFmdtmpYCa7uCzn6vl4Q8I3bCoRGF5907hCtNbMAR+mEWxku+lIi2x31Jm0l0ak1V4X09plHRPM38v9uGppYrrxAlMDVr8IvPdT0kDk1g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744876194; c=relaxed/simple;
	bh=tqGtDVF42Doh44acMnvE/HOf+CDwTuhgwbvn+g2Imr4=;
	h=To:Subject:From:Message-Id:Date; b=Kw8MwYMUeeH06dcY9qQni1JslOlI9nd+Hn/h/aqV1RPAk7qhqSzMYPL6oyzilDXaQ5qhZBEVKJZhNx8yn6LkCW38f5Ds7gL6l8OTWJXf3Ur3fqzIUOuYC6XhfhvYCMYCVM6kaIQrV6Ao8wzQXenb9dysvy/z2PrwZfsFB0XuXFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fc1bZ7Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fc1bZ7Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C68C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744876193;
	bh=tqGtDVF42Doh44acMnvE/HOf+CDwTuhgwbvn+g2Imr4=;
	h=To:Subject:From:Date:From;
	b=Fc1bZ7OjW9M/zTBq2QySA4HNz/L2bZpiFltcFZ097wEJJNdjGnkfhxrub6yl4KYz7
	 X1aVAwy1hse09c54N+RtrCMTHqDH8Wizelei570aUnHQbMgTXQ7YCJPg3mT9NZ36Vm
	 qyzVlESYTB+6Z5VZHuoIN5maj/jsMBAI4pPti3ay62mHV1b2XLeT7Ew4SsHM8kL4so
	 QxikJyuhiplXX2BrNy8f7Tbb47uQIXIMvGuEj2hLETKT0Z2vSF7CulsCouDPVmXO6t
	 zZFkoBJ2zNkXPGnfKnn4DcE3MQVjeXstJNt8SxgwljY7knT9+7qoPffGrg6fgE6V4y
	 qsCb9YdA8e5KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99288C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487619361.16748.1089107383557380454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2f0d22a21493344777de73a5278e538b362cb766284ad24cefdcc7d7a7e4d4
Date: Thu, 17 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744876193
