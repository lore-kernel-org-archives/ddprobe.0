Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BA325A35A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750229994; cv=none; b=BTMsrU5wyOrHvK0THq5UL0ecOe2IA+nU1pFzmlx7MF6j5DTDhTSHwtgvvOtMGsf8qFVrhj/uRJFJTY7yDWs+Gk3KJdKhtkiv3nDVvM1a5ZVWocXnGHK24t769Ycn0eptz4NdKfOOnGHhJ+78Gph9BOV+hl+yLhAnmag/epS4JjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750229994; c=relaxed/simple;
	bh=TLAoDluiVp7/uhElXlNKuTtF9lSqnDhLIrVvOQ3JOGw=;
	h=To:Subject:From:Message-Id:Date; b=c6yOFLP585sbJGNr2XrJDWaj452A5CWYbikPq8Rr4uCGiPNwXCtr2/mf4yAtGSW9H62AhNWp9Lfnv3WxcFtWSYiyx7i9DjUg8/7mMIMOZ1ZbgUVIimU/RMTvGdVhw7uXuhl565BxLu3+nozs2tndGSb4rcL3A5qPX2/V2sBs4qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB550MOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB550MOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DBEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750229993;
	bh=TLAoDluiVp7/uhElXlNKuTtF9lSqnDhLIrVvOQ3JOGw=;
	h=To:Subject:From:Date:From;
	b=sB550MOxApHLsz0nS5cXnr4gh0Eha3b8wR25bthfVRSN/qPnRkYH0H7R04d3yDubO
	 iLgsgiHY57Z1+ayQTL9h8+INPRGbevC+6kSdApY2FV1o1EuV6iEcd/ncaa//GtptTm
	 0ay/CEUIZMaipqpl+m3KZ2IRmaICJPX3Qgwavy3rn03dTlcGms+RaKffv35feD5D1A
	 fbSyaly3C4yTQNOuNKCV7n1f4qWz5Gb0MB6mOYW7eyt+J2k8vl8QZAq1jAeSGY3j7Z
	 Jr/q5vHAscAIga7wmpEdAyWSdnEwkfkfJll8O5HsSFQnZVvu5YBWVrC48NnPwmHeVY
	 PgpxKDbzwpS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4933C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022999366.6950.14535733155164566300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0260ea7818967690077e9681facd1061dd42cd8fcf1f97e8e52f664ab9395a31
Date: Wed, 18 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750229993
