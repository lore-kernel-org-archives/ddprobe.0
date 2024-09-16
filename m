Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FB513C3D6
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726476354; cv=none; b=ReH7YQwiS1HjvSdiHCOUQqsyquHcxhAp36f6WkS2xpAoL4O+Qt93hP8OUe+aKOJjfyKjedSJGru6cziB50xxoYmRAZm4lEijy31CuDrLjqYK4c21v01ABiWyjJpggFA04/N8gSPnIV7P0A5NGxexXOPAslM23Ja9ESPYw4A5Lo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726476354; c=relaxed/simple;
	bh=hvrWnYgpr4Ud+YKYjztof1+AJ9XiMn5LU5Iqj1ykfEA=;
	h=To:Subject:From:Message-Id:Date; b=WC5hLnxGUPRn6FDAwGaT3clarDxBJCKb6wT3wx1C8MIU0AiIBKCc6cBvLei5T9qo5wsqDOw2NxT9GZC1uCUokgSpBWknrMzux4AC62WBrW7rxr4he9r3BRxvnvGKxZb/dEN1XwtK/vE6CvTegCmBLgh6f/533Dkf1UzgCZo6fUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIkvlfkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIkvlfkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F72C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726476353;
	bh=hvrWnYgpr4Ud+YKYjztof1+AJ9XiMn5LU5Iqj1ykfEA=;
	h=To:Subject:From:Date:From;
	b=gIkvlfkjdVtzWHXG/8/rlu/KUSAdRZ072Ch5qc/lmTGF5r2NkzBpcpVjPIx1K8F9L
	 hnyDJhuAxSLTFuasXGVbgWx6n/6+Q1uhArxEpW0TnHOfNsp2NLWB7QT/Wcsn6qQjpw
	 RFBZYubAiCgzYLBZbO7fKOBh4o80GOA+jWYdKDLF+O049X0mvsgNwyKO0QQTJQvVYt
	 RQiOfD4Y5LAGqeiKwds5p63/KiFkHuHzcbs4AbcgJA5IvR00F2ItHoMR2inrROZ60G
	 5mJVYFvDVXt28WjMlLq+N9Pv9OD74zPIqbktSeXAaY8PVLCloLEGsiXqdALKoIa28d
	 5ChYtLDYCjNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEA2C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647635368.25015.12409379234443265415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9247f1f388752f5f3737704899d8326c652815d7ca08f8736abec722a92051
Date: Mon, 16 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726476353
