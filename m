Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556D30C609
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757350195; cv=none; b=ByCXLtfDkHHtbNkdNDR/2Pp9CMEqPoViNnet8hDzumDIunJYXdqXFkmQ1BmwNHD7OZNt+KYb3Q8kzV+w/EfDi5BmG4XBP1G0vDvNl5YcH76uFaJwXr46C8G771XRYufUyq2/m1UBi9Ed/XdxIblRZN8WDhjEFm+tfFjCyGWHkpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757350195; c=relaxed/simple;
	bh=NxcZi79gtV11vPGLssdLeq//ReyGhnvt5FVgEZ756Fo=;
	h=To:Subject:From:Message-Id:Date; b=Vu0PyG1fpM8P2KszpKqCJ38N0VH2k7e58HKGxfhK8dUbVCXg9maKAjbe0T8Jf9r32u76i4SwEcLtiLEp6jronDtsI4fdNsKrkjvIK6gPXA7bqvyOELqmAn6fQZG0oX6orKDmv0wODAK4dljOa3q0zgA9zR7nWDZiFFtFfvWdMW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uw8NXfjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uw8NXfjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD865C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757350193;
	bh=NxcZi79gtV11vPGLssdLeq//ReyGhnvt5FVgEZ756Fo=;
	h=To:Subject:From:Date:From;
	b=Uw8NXfjH+SQbvNNUsO10qpQj4ho8gx+o9lBD6EuoOi5scBUUxyKG9JPmSpCXA/1OV
	 I2ZptEkUzpyPf9dK7TNCmlL7v7bGnyqWrfE24zfKnTqyeT6F5GdPwRvdGXtXbuwF+v
	 E8cjCSkuRXfSXLCJr4Lkk7AzGInYswiVVVyWo1odNNiUmdSbkrUMyEnfhLZbm8GwSr
	 DmsMaZCiSpWBJlR+8+gnRh/RgVlobm1V9xWgQ9qCPewNdAVWW+nhnIysFie1I3N4DW
	 zHQHYvUw9FzevqrGBOfkzhpXtlr2lGARa2q2vWUy6udSv3gRI/BCMTXiQadgkiWyk+
	 vYuCCDtmVMtVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDC3CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735019360.19943.14770722501822984767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664ea4fb70c130d75d826a8cc1b994c20fe6544fe04b02a6dfa46e77ae9f00ff
Date: Mon, 08 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757350193
