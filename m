Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3761E3769
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748596194; cv=none; b=mZPh0r4hcpgC8da4b9Kl328BguS5ktICjPjcJSvf4d/4laHCOF9BpjmsNLyYGmH+XhbfmsSsY+Wp7/F/XJaBLru1mGZxII9yG++OkiPR/UYkc3SmdlYRB3Jp7TdXj1HqY9wxkSyDnY29wAPvN27gBlhYZ2MCztGcMx6ZwvukvAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748596194; c=relaxed/simple;
	bh=bOym3Qm+JDRkKOHbewYu14RGhkY+Al0fnUUsaApHKRw=;
	h=To:Subject:From:Message-Id:Date; b=fh8vUsUMKpDeR8Fk1p/v1QUvJ08whERTz74LZcxp9snnLBxl2jLDhFbxi5QStJFQj7LYFjsUzPd8qYVDaTs4FVYCguxW4FdgAROecs4QF2NumH9zAT+hUbRSd6jJdjoYmq0QkHFQUN/nH5+M27XenYcMrH/cuTkyU2z6jTgxZys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nvv7Wv/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nvv7Wv/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2506C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748596193;
	bh=bOym3Qm+JDRkKOHbewYu14RGhkY+Al0fnUUsaApHKRw=;
	h=To:Subject:From:Date:From;
	b=Nvv7Wv/UIOE9xF0hvKtwKIEPwlZXqzGyyY/xDYHs6oATuXWHN1fe/eC6voz9lDVrP
	 ih8TIEvwzMihQB97/elTlJrS36L8KKcbQTaFKnnwhsN8MKCs2z9sEiTZd8XjrAhyxE
	 VGTjUf5eFvGerpDnKLHkJPxTXM7/xbC5mgCadaKz5pZ2lQeMbTNP+QDeQ72tXS9HnM
	 gTvDcaWr6CXAWse7kjkEcEtcvUukO18b8L3lQwkybv9DgBoTt+2wpT4mZNjVOFKjyR
	 5yjgdYAej7VjAzdZM7YUxu7TFZ6dEg4ZoaXTwEkH+h5w/OdlaAF2ih0nkrlaNzcELR
	 zPGVInGPOec0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA88C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859619357.6687.11568277134534853151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afeffa6d8531e7eb1b4e43744ea66e118d6c58bf95a841c5f349cbf5c3971bf2
Date: Fri, 30 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748596193
