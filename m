Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD931C6A3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732953954; cv=none; b=Vvg3s2WQNVbighBWWz23hRIVSPpTF5Ts3ONRHJPjy8q2Hz9UGuBQ1WnKdRYDYJuXk3nkMJVkr09icB/QPjk53kdPoUy0syiabm9x06ruUkqtVBrfrhqMnAPRNy62g/w8PYgpyXUKD7W2wYapZP4Vrp2cXF5dcCO8ADjwU2oonvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732953954; c=relaxed/simple;
	bh=ZyS8AexJj+o9sjp/3CZGJf+iHoRNov3inXtlnUncw1w=;
	h=To:Subject:From:Message-Id:Date; b=k7+k+c4GM2bQC4ybU91FljvObEOP1bM4QeUILDrrx6izw/uGIR3mvpnTu9StXRmKvGVr7j21QlHritb34x6U+RyARL0I45vE1jaB5d/gHeuMQGKryvR83j96OVx7Pe+FyivuWS1KtTYlRHfyFwFJhFTnGJtO46NJc0IX7SYNUOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GY6nhs0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GY6nhs0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E6BC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732953953;
	bh=ZyS8AexJj+o9sjp/3CZGJf+iHoRNov3inXtlnUncw1w=;
	h=To:Subject:From:Date:From;
	b=GY6nhs0RBnQ1iibokwAgbNO4jlqn2Pcxhb3vOLoGUc5AEsMtn2OarcgNJISaKoOAe
	 OPyf0mQg6lgZ9ATvALOTPfVFjfbtV90eVu6gMUvYxJbNPMw1+mXvEK1s1jmAXSdgcp
	 Z626tm+iDP7zd4v40SNiRumcGZENrSAYvNZRMFWihHpAI2P1/56uLzGxoObucNDVnM
	 GMebi6ihtZ4WJ4bhRbpW/AGh37aloYx8i4b1S449ZmzGOkAA/NSuTbOU7Tn17GqZVL
	 CBm7JzvM6gj59qjnNT8kKQovmflkflNj8rS6LPIhrEXQREr+qsLxvyx7HRFaWHsltg
	 mGXNey7cKcccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8D3D735F5
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295395361.15727.12300627257987848009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d02e81adcd0a67316a8ed3497943d520174deed86270d22e2caae3f63ebd14
Date: Sat, 30 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732953953
