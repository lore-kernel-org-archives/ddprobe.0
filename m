Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3A1272E4E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757956194; cv=none; b=mCDe1DNOEkU2iz6pItEPJkT+3Y47RvEf6e3XCMXRN/5QSGh73+jVW1jYIiMs6SF6S02PfbxROVBSsHTA/U7eBNjdUAcRtfhMbqjTUp8YX4mkgUlDItUHZDXuoOUXyRlhuH2Pnz2UogYoAzf3yrEs/F6kswDu4Wf7BjVXo9ikPms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757956194; c=relaxed/simple;
	bh=p77wn7cTeYHRJDDlkDQbamyvAS9kxtki9m53haAg9zs=;
	h=To:Subject:From:Message-Id:Date; b=FC6gpr9LT82cNDhEhqA1UjpNp2u65dvCKJHG5KI91hvHLAkOt/MOr1nxed8wEjtHyEeJzL/3ddj0M0C08/oHWiLbwXgT0pWddKXWy7HYrQm2YPcsW1smV0zkfVwX06dIVLRAuW3xsKfm5bjCyUEjQyTwAqKMrySB90omCdsiEo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssMfjAUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssMfjAUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757956193;
	bh=p77wn7cTeYHRJDDlkDQbamyvAS9kxtki9m53haAg9zs=;
	h=To:Subject:From:Date:From;
	b=ssMfjAUOixmXsE7k2QWW3kCiEeIu/w3Eyn6iuZys/C7G/4gKxy+8xA2YocvzjYAEG
	 YvDqmo/3MPxT+GuksWmTp3z6yWIH106wqDnnq6JG3FNCDc3LwvW4ZwF1UyfuSTCdOv
	 JuAYHyypd/1trhn/zgksBXbd+G5NRzDK/rE2xX1AMcYEJyQdl67iZq50r4U5VuLOqY
	 d8tEDevQMvm5bfw9mGS3rA54Os8Rpt7ZJ54KR+XThNumA2pkHrlybGPsub0gKgYs8p
	 +Qfbw63HZOlmPf731DovG0L7YjIkYMreotNKMXAITyqTLDV0eetwDV8YmE+Rb38Y1A
	 RiD1QzEWYBIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E7CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795619358.31238.13324691410448019234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d3796f9e2315f4b81b4911560ca2f5e5c719efa61f94627dc094950bfd4d92
Date: Mon, 15 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757956193
