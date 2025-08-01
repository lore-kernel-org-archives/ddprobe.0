Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1F4215793
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754052594; cv=none; b=siIdGenNdYGo6M7N5SxDYvTRMmTxIPwZtrQCvK4KeUsKOOVUtk6TH/oJyBcalXCZTsi9znsOOezy+X2jxJByboRQqsgl5P8IyJw/GqnTxwYOdHvJxo+EBiR0DnKr6M7eXSuvhBFxRhJc6IwTk99zNkZ1yAEaXFxa7yubtWOUvbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754052594; c=relaxed/simple;
	bh=ftV0XrJLEw3XfVVljlzPD/BijQ4CuxXmODMD0Zf7PU4=;
	h=To:Subject:From:Message-Id:Date; b=VhWznHgGB8Fy812ilBvfF7J0pmgqIf4lhUwOg7xqWC1D4W1UXdD37MKInEOm69/pC89Y3tDf6XdZ7PWjxx/oHmkJ9/+mfdP+pkOPj7WVBqQQfFSkvEOlBlirWVhwCW4ldD9OIFqKLegAmNs3j+pNeXg1EEZBNfJVC3iOcVQBObg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP71JlmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP71JlmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F59C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754052593;
	bh=ftV0XrJLEw3XfVVljlzPD/BijQ4CuxXmODMD0Zf7PU4=;
	h=To:Subject:From:Date:From;
	b=DP71JlmT6z2VYgADtztQnArhXifOKv0KLxms2wpsZKNPSVJaN284dgFVZQOwDsRyF
	 b5GK4kzrUZCZV9gcGawZ4bXaEEYEkQzOFF1SuvY7Jdd4xnmr5SIJZtZDYdX2c0b/qh
	 xsVnEJJJmg+AwIZvFWPUdoZPpddFgrjYvVjmEiu8yUBSFzAxev8K9/ZnnyuruC6szX
	 4dNSlmzyIh7EK5qAxUbqt07UlaH8tvPvU9p1VlTqNUA9Yq3iEtd7NRHBC1UBKs1lws
	 jqYCRxHxnMXnF36EvpCiovYiux6aNdzrey5ey1FHCO4vYRiZ0NYFq6wqjikdhX+Nv4
	 FQNrbwDWzjA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96576C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405259359.9750.10330910111548513943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a4e3318027c91275004a6999acfcd8fa69b72969f23712e9162482269b00a3
Date: Fri, 01 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754052593
