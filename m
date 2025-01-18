Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E1C2F50
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737207354; cv=none; b=iFs6OuHQWF5kMhAJMH6HyudZbEgu1EmJjkW3Qqe7fpeL9f+dWCDEo6hiveExUUOf6XpQtdmfz59tJQfqdoE9VxSVXaV3UdxVVunO8W1hM7TDb9nyVyoUeqsvqu2VWljSI8gRJUjf2SwBXc1spvO2IGjvnosk9Vy7ieVKD2tD2h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737207354; c=relaxed/simple;
	bh=uqO+GO+zPueJCxBU401mEvs1FiHwsQRGpL0cXGqIbDg=;
	h=To:Subject:From:Message-Id:Date; b=IuSNZK+n1WXVSuXNaHJrE84mzCjRaSSlwb2naBsGsXV3o8NNeIXxaFR4pfaevbUjs1Prfx8bS7vYR7rpivZSJHfgxkRWRjvilJe6498x7vlP7qlURRx+ssAkRxfLd0M1BWeNR2sf8GZiIv2Q+54/KTPrUoZwqFK0qSOPWJmnmDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXgHHUKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXgHHUKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8701C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737207353;
	bh=uqO+GO+zPueJCxBU401mEvs1FiHwsQRGpL0cXGqIbDg=;
	h=To:Subject:From:Date:From;
	b=mXgHHUKDJ5ZYC1uhef9sLW0upCsdlo+Mf1pgDG/UozrBuPEeyHUecoxtOYvTZDHXa
	 cIJvN5b8T89u7FerjZ0zVW6fFCIqGJzkwEJoM+ENZMAya4dJJhAQsKPyNU30aPECzV
	 cBq4mipskp8JmWv2ahb7q5F9JZGf/N7ZmUuKCLlptxvpK+3eKx9hRr2jy9QliGDg/X
	 quKAUegr4doCUa2uExGJd04cDjUZVn+VGLyE+WgTU6tAr2juS47P43LADJgF7F4EaV
	 qfC2F06CPv5HQoBcJ3klnGn8zjH03tjmvtav0MTIj3sCztZXm6YCgtKcrE76uMgbLt
	 MMQL6fqdxNeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94061C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720735359.26193.6423752444555829095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8aee044806c3b4b09305a50d5548ea134077691bdbd7074648a257a06e64d09
Date: Sat, 18 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737207353
