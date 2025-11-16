Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1117E33993
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763263854; cv=none; b=Qgpt9Onnsak63mcojAkGFrbhUDeLMf3RV0lNvjWtomQ11nIXtjlcCnXqeQhTGRklki1rrhISu/+Mb1JHapyTbc/3/8BqQuFJNipD9HC1a6j3FgV9mnkrmbz30Lt4L/P2wDw3iM06ttPTTPNkcD5UiV2GejuisTBj7FJpENjGdxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763263854; c=relaxed/simple;
	bh=pVRhDmW/GabteoXizN/DXhRBTaa27XWLopvxUDy0zJk=;
	h=To:Subject:From:Message-Id:Date; b=uA1o4M+xauyjMGL4AZakXTgj957VEkrpQMM6JYO/jF7/asZkwMcqLBYqlHzfanLHY2nJBntiHjHZWhpleqnZw48JOH4wxJelgDj5eJHeWexIwSmngbIGpsw/1AmjkwB91Pw7RpsyMSOSt2ircYSI/KvI8mPMEHXTUGfJQrB8PH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIaQn9RP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIaQn9RP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35BDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763263853;
	bh=pVRhDmW/GabteoXizN/DXhRBTaa27XWLopvxUDy0zJk=;
	h=To:Subject:From:Date:From;
	b=LIaQn9RPQlwklOJr7vmn8yW2P7TYPKLjuWVqEvnS1ReI6Odcf5dj+dTQIAnQ+IGFl
	 DlVyfRjC9HK4znJaCpfHXZc5DZWorjg0NbGGHtndo3Z6O2j10JLMnKKQrHjphDB/W8
	 vypQ/1zfdl7kLLZFxOdhxwzSXXDPADE7OEzaLaDVP1DxNy2xPXcLcF2/J7bVfT1+5k
	 /dbmNIgoM6XPUckxGq485ws5B6MOqDQOtm5TfqOdJ0nyJ0wsHMKtl/ED1odet2GJTX
	 GP0N/TDXRsuA+de7YTcGyAyMMmXUf666AUerRi7S6+8iZj8/SBsmf/K3dAFMKcl4SS
	 COPtFLuXyHEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96583CEBF91
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326385357.10197.7342724258571659675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6fc110e54c16c3bf1ec157a38e6387764106d789a281bed54edcf877aff232
Date: Sun, 16 Nov 2025 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763263853
