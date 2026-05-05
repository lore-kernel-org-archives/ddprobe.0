Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249273B4EB0
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777960054; cv=none; b=IExIL0nDjwsaxHlMwIqzwtm0s/DsHAsxpSggBtrY8cx+c3RmL46D77catAbfe27i6JdRxjum5/U8WFu0VOZsY3vLm5ulG/HDFGoODJTwT9Yl9Q5NTKYBuhTQ7CC+gLKCddLHx6CKkUO/PgBxK/eCeLdJnOCRNiFLWsFhzDGz0Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777960054; c=relaxed/simple;
	bh=ZdgUnyt/JcFANp+xBHjCL0y0WRz8f7cCVz+aBJmx0Co=;
	h=To:Subject:From:Message-Id:Date; b=KdHJFV1KhH9XTvG8FtMaeGId30b1aJm0DJdhUhuTJl/55bij9AaDjTV15SGZUY7nEgIlhAYphZiioBdJeb2smS2biSC3iUrqXa9r+poFXMMh0ZV6Hye8IzWPdWH7W51plBxXjCv2MRBR8thbnC3ABLq9RnKjZuvoadZd5prTkK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLSw2YfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLSw2YfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA02FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777960053;
	bh=ZdgUnyt/JcFANp+xBHjCL0y0WRz8f7cCVz+aBJmx0Co=;
	h=To:Subject:From:Date:From;
	b=sLSw2YfOPj4PbwochgwJQbZ/WCqu8Xj2VCqDAZ7CPZ5seqdIFIY2EfL8pk7oknnAN
	 mACHe1C2N/eA9+5/eKyYV9Cw8JnpBH7o/G/JoZVORnPQsH25JwQhgy3nSShvmzl6ia
	 ELGlaCJKsqxPapL35Skb6c7Zr3TKqnWwyc9pXV1Et0rDQaDPEHppjFt9EXEs71S6T9
	 GkVRdc+iDbC261k3fY+Kisagv6S4W5VNgdDhaMiatmfCSFd7b4FwiUWEaTDAP9k2FJ
	 iZDm/iWcA6PorNiLqVAP7/t7UOA9k9bzcT+4MEzooWC86ygGU7xBdbYTcEi0kznOT3
	 eKfMlSjsrRReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9264CD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796005368.6494.17239718638922581615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b06372d50ba14462ad8e1eaeeb31deee808919a92f6e1176853bc224ad8ec85
Date: Tue, 05 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777960053
