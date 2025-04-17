Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39176145355
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744880995; cv=none; b=XBunnMHWBr2kNRJkpTHOn4rtPFlHvHALtKW7o4uul1zn9D3aEnB3Ep5IShfu320ZwNvDmQJqDEHBBzFU6jdsUxgk+8FhIXRfWg2bD3KGH3+OYUn6wraZOLx9gbwLS2S/sFquGWK9TqN/XI2y27uRwS0dzfUYg7jc1hQupUtNbDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744880995; c=relaxed/simple;
	bh=GIVRa3UQKD8+fM543gs2U2YAX5d86PGmqT6KHlqo8do=;
	h=To:Subject:From:Message-Id:Date; b=frYcAVzUPmAHbQuXVdkQ6AXYH7iAzIJPRiTe/MXYc5Rr6Z9mXPNvYjti2v4yMyBqIK/K3O1k9pQIHV2z7AkI7x7hgPtHckIbPqSOD54ZqIp/Te9ZFkZwMnE+xCNyk17V5QCEj0EuYyrWQWtXyvFrh44IUrjbVpAlc2jaj4LO98w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX6aelzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX6aelzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A8BC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744880993;
	bh=GIVRa3UQKD8+fM543gs2U2YAX5d86PGmqT6KHlqo8do=;
	h=To:Subject:From:Date:From;
	b=TX6aelzUBVlJuNXMTQ6INt+xHlT0B/HpmVOS+WLyPGD0sIEX8zCRmHctyhgAEfhZa
	 UbAtYsriT7ok4aDfvAvkTaRG+TPKW1WEY115LBZQoIqr6Ob2zKatm1xMLX0sVkoIFy
	 8uRdEX23lbt7u5c7W8Wy9VRJdyvWfxY1WlLWJIPi6+oeMVPMBAYhSWi9wtWeqiKa2W
	 y34T009xQA+WBC8JKK360iNudiRyl1tmKHVO5HoKmGRlzY9eApd4Kfi2u20l06obSS
	 kjLPkiO6VTYGgYRI3meAt9duaaTVpcrpPvTH0SgwDxS9Rf9kdsq39qaXQ1gwxXK7fV
	 5eEUpDE0XvMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDCC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488099358.22487.4261207019741560244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09422af8910e5cbeaaebcd9956e517fb0ff7ca3f30209cfd9e75e066c9c7df7c
Date: Thu, 17 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744880993
