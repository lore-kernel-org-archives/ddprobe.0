Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C54C70
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734180354; cv=none; b=kGZKl4qAXfxxHwsBSxGRNrvhizvIPtnCcGgL1vWobGGKf3Um5HJzkK+0JjobgLH28c0N1Kt3fHxE3lN9vzEntQMUeDD9mt/PVLJJswScb0cwsJAMAZywAlHH3uwedcN7UveAy1Hig86c3vxkU5D3O3eBsEO13OXAZ158Jz64Zvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734180354; c=relaxed/simple;
	bh=32TFTtGBnCyysU/3gA5RFEwQ2aJ6KuWT5ychanSX4OM=;
	h=To:Subject:From:Message-Id:Date; b=i9XPBEH5OPCw0lHqzJO8YzEcf28gZBgoj1rE6iQwtGiephlV69m3HEBpqOYt4jbS4F1BPhIhxG0bXRCij+c0jm/HIlzobe5jbH6e/Rsm0FhqHN2XfQo8dcH5NVyBG5f6BqJ5+chXLCKFanLZOt1wXeoouc/91FnT/GO1wyijDaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boKQs+Av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boKQs+Av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFF4C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734180353;
	bh=32TFTtGBnCyysU/3gA5RFEwQ2aJ6KuWT5ychanSX4OM=;
	h=To:Subject:From:Date:From;
	b=boKQs+AvUCz8AVR+Y0E+XgmkI6FzHSmhRfm/1b/0GLfz/h9JumsVmKoYua0P8R2ON
	 q8l1xc6/xOGngxNbMZAqfW/7Q64vUJyKvHy1v8PVUhNa8/s9ilzFG6wkC27hG1fplL
	 LdDWF/Q5kpDoBmPObxR7GYXmWKKD+JJfjI6M7f6tWeFFT7Wn/eMalZaCdHqqJP6ujj
	 +mGydeDLRLqFGgJl7uhrQovIr2FwUzvt2etGrhku6MjpcyMBwsu+VvuyAJ7jPhVtjt
	 SZh8fsDGUlMvIy28T5KlcUzpK4FiEGjUGduWetZO5ilxFU2x8rMyd00wWpoWU/SK2U
	 K2O35wp2DIU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB56DE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418035366.22658.572008481492290025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860ade696ad68458b799fc67aac1fd9f38ffb1b87ae810a5d4ab59b280baecfc
Date: Sat, 14 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734180353
