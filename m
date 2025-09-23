Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5031B423C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758644994; cv=none; b=ZY/lrAzeg9ynSjT8HHWhqBF6oGiu1ynt0AaQrKsmiLllxJb9N56xxZ7L67X4Q4LURZJP/KaaMlewCDp6bExGf2y7A0QVEJx3pGDIPUvZLlPXVImSXtneVrq1X7Iq2mNkox5ROh7jbbz2++6joIgcQLbcnGLIUy2YvbScvo30m/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758644994; c=relaxed/simple;
	bh=4yBf60zQe4ZDjFyU2w+3PI6NnCqmDu8yZMkO84vMl0E=;
	h=To:Subject:From:Message-Id:Date; b=Qc8ISGw6ELji4yZrplublHN+VU2XXpRQfpivAXe2PEes2DY5g88uPdrjEJssSIcUE8dWaQITFeeqRIWBF/l0PaFDWSHJeBxTthlQvBCNlo10ajsjGbJUpJ8KesYK+7wubMDO1mJO21M/MJ9UZmD2edpCmJYZV0I2lWI/9G35S7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSNk6JGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSNk6JGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758644993;
	bh=4yBf60zQe4ZDjFyU2w+3PI6NnCqmDu8yZMkO84vMl0E=;
	h=To:Subject:From:Date:From;
	b=tSNk6JGmGxmx8na/GFQ/DMCXsTZoRH0bewzPrT3do8y69NAIUyGhrG5pthW4DLEXu
	 J3kiETOalwUGjiAhHNBu8wkeiEB854JgzEngzK2MKMXq1H7HYBmTr4m5TCJDzcNa6z
	 pDkp4Yn37QOl5iMsv0KYW2TaNIRgBRfP4l25o+hr7yUwUxijfZeCXS2ZTQ4e93acC6
	 1GONYhdXQXL43lU5DITqRRFETiwlHTOC1e14SwQtZmVP/jrlibEAPCb7An7TuINjMJ
	 RYYl0fmpCcmFsMTYeCoGSOeZFtA+aefy1tNjFcb/QtEyKVqk9BHcK/4XUsbo+vdPz+
	 17L+xCAE+yaWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE9CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864499359.24399.17106842305173370426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8f2ebd52b3ce98b63d631a97407616155cd6e54d23960c7a0f57cf5c5d51e6
Date: Tue, 23 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758644993
