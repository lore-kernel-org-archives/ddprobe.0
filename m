Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1869E12CD88
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759374594; cv=none; b=V1sm0NtXue0bbJhscgt4Nur9MCDXgeC9zk9zhveIlGX3+4Q+ivGeSRIxPVNGFodoFrIhGjsHM0u9Zv/Q8aE+yFck2VS7W6iiCVPQ0ulKuOTtsaGPfMQTOGjIG0fK6n8jxXO+BZaToPtQ25KOF335GDaGz9JTU3L+oEcwD3PqAus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759374594; c=relaxed/simple;
	bh=p4Hm/1pT4SogzSFSNvahvROzqt5TYZO9xFyLTxExJBI=;
	h=To:Subject:From:Message-Id:Date; b=uIw/5Tvi1GCoBVQFlxX1rC0ZTmjG8sYedUK+hbK0zQOzPY1KwOnHoKHxrrT9DXjROhbAV8D3AzqQ7GAnLN8aoQTjCOkeqGGuDUxCpuM7Hs/QpiR2A8nOwEx9BpmrsZjtbw3DtFNZxu0iIyTBss1s6vHw/zh4Dl3Mm6MAKpv9Mcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYdwE23s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYdwE23s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB25CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759374593;
	bh=p4Hm/1pT4SogzSFSNvahvROzqt5TYZO9xFyLTxExJBI=;
	h=To:Subject:From:Date:From;
	b=CYdwE23sIrkd1E21K4QtHtjoOjZP+uLZFnMxVDjKaaLZfMdC0b+PLyxSFdmB6dvGy
	 nRgM34GO0ZivQLYwp8MrZVLga+qO50kVCy2vAZpq+tzyPllSF9S6ZfU60ezM2RdZeF
	 lZ/HMwdigr8ZoasKiR4iXEqO8fkxIzjKGpVb3ESOzTCcFKDHBfRgFZd2Kflu8m8xkG
	 JNXsDs6WOTSA0NSxB+P996hw5miDjuv/q/jnm3SPygjMHs13pmMsVBA2k3ikc9vJpD
	 y+9AZRgJ3ka+ZpoCpB6BGkyN63b58ZEdRcYOVzmNSsvdjzMpkUWpbs2xcFS5mXqJdy
	 MmwEeOx9UxXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2B7CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937459359.11945.8892396284852799821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99ba59ea24ee48eed96ddf4188c0960ade2f550b90d56cabebbfb53aa82fa7e
Date: Thu, 02 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759374593
