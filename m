Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE86C29CB24
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755440993; cv=none; b=oyP17sY0ZYk5WWNvJHBR+KSlHPsI/rysfhAiQMRjv+cNMB6IdCy0YNTIj1AFLymhShwUfWwK1WL4MePG3LB2srSmpO+5XWFtMAguBgfY6/jxPpguM3WMEY8kGO30dASHg+tzIyz2GxGH2lrAudneeQd2D7XQ5ie6Og7io5SKXzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755440993; c=relaxed/simple;
	bh=lVcxPqFiBLOrgudZ44BRbbjBEq/aKMC9IpVssSlLxlk=;
	h=To:Subject:From:Message-Id:Date; b=UbOiJk6VGmL5XIz+fTuJVq8chia89dT4BqkOqaEEh8D8jdzYGTk8UwsGSEJGAhoGlr7xc6oqOSqXjDJsWGW4x1O+aJJN9ux1ON5JiS0HsoqNcGqEsSpton4oW5frgNNSomIgzGs7ltOmgHYTd9deHLKeaI84DKItSLx7zf+zcmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn4mPqJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn4mPqJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1511C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755440993;
	bh=lVcxPqFiBLOrgudZ44BRbbjBEq/aKMC9IpVssSlLxlk=;
	h=To:Subject:From:Date:From;
	b=Kn4mPqJXaICwgnk2sj4U+1e04xRoQPlIKJ7s98wzETggHmsQx+aR2sHKV+L5c8dqY
	 i2lUOJzS6h/W840XV4NTvLnQSuoy6CqJbSduEYBmr0iHwGqmqFbn3gQy3fii9HD1GX
	 h3BoprtslP7bjxF3cddebBOT25bE7lK5D3IDhDMN2G2leGKqvNQlgO2juGLfJq0F3b
	 L93giSzqhzdrlnssMJGqCuae4ZM37EC4b0Nq0JXi2lfIYkZq9TONDKUil1Im1G9WP8
	 Wlh5EDslqaRfDyKBMm3tbxpSLa/EANvDwM76KEg2IwzS3ONTLtzWFrmVqKDp4TuLvB
	 iiWyikM1Zw98w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E05CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544099358.12031.4148498235810107745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d4702d8ff1612df9456c259250379d5979913f685fb76d1a6050fcf04a778a
Date: Sun, 17 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755440993
