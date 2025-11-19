Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237E01E7C34
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763595714; cv=none; b=MDzg5d6RYbP5n3EFnErMGRfmoOgUsnq++35L4oV1J+tYamOC+LOSoWr5/O38+HnyX+4pM7bexu/ENT6tGgh3RH8+d/RU4Zr6eGBwplaz+NouyvyKKDB46BKS8E9wPn1/tt5ME4DJbEhwYgQkSZW03E0kDLtFywsQS4HDXeOmmPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763595714; c=relaxed/simple;
	bh=emeeiJtjsj8WXlvl2JRlcX8zJJSnbXFo4XjuWDhRFnY=;
	h=To:Subject:From:Message-Id:Date; b=sXsxgi27fImrhoxGeiFapbWoMIGpI4PPgdxhMBHmcxRZF74osrvB3XV125KUehubM2L68pGwLYNe5WQtQ/nikqpvq0q+0e1Tw6lWgLQu7rfiVP/JhmouYnxjCe6s1Hd6MSk+CLOz2qquKAmVYZW/7K21XcaWUnLObmL0J+QjsPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQTDybcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQTDybcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD8CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763595713;
	bh=emeeiJtjsj8WXlvl2JRlcX8zJJSnbXFo4XjuWDhRFnY=;
	h=To:Subject:From:Date:From;
	b=qQTDybclkiIPU4O+4nxx8OyjQgW+Oo/xrdBeHvMOwkVCYJ3f77Xldp5HTQzzQTEsQ
	 PUGbrP7viY00naMs51z+5gvPZ41PbbTVFDrtmt3ZzwsZtVilROmr5Du3g3PLpfKcO2
	 g15Zd9i9YMj6Rd/4rIzK9wPq1FihmU6845AK+RZpJdXMXJKy2cVuq0F8EO/5K81XNR
	 oTxILP7lwuY0czPdDN5duOX1bhJSf8NbeDkwqwvmJcwPyFtB6eKpZ8LEnzFKpN6CAf
	 fa7qnBIr31yM0md4pLY4cNj/AlMaAl5vH79GnbKnnk5wfM7ryqE8HWdfn7qNyklJxW
	 Jwz8zhqtUwu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97584CF6497
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359571358.30122.764059498944248845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e597aa14ef13f0534a227da67708b90a870800b9557184eb61f517dc6cb1b5e1
Date: Wed, 19 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763595713
