Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102C32BAF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751389194; cv=none; b=PFDQ6syToS7EmohkjbzYPXVXI2iIpJ+4XDsREIXqJ4G9L5vR3p++Am/lfKRsgXmcDaSQMS34sk9bem9XR5sdsdhqAKwrpZpUDgEgXOsjKBu2jYdAYswWAdHDS5W/Ms3xXb7VFAz6TWypNWr0e0/Rc1KamkQ230rTJTh+D+bTD4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751389194; c=relaxed/simple;
	bh=fgWHEVgsFZKaxJIyqAomVGzs0nJO2+8nIj8ClU0sng4=;
	h=To:Subject:From:Message-Id:Date; b=Fq9Oh5aiF40u+wwY15bU6bJV2/yXWd7QVugBNtKIrjnD9wkSHmJO579B6CSstQndTo88+8SyOn0gly5KmF8S4pfgiePMMiz9JOuJfzXg/gkkj7wN8t704MKo8ZSxw5UM1aX0jzWVO8ZKzz30Tnv1C9oXOf4rM3qs98mmz5Rn5jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo8HP5rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo8HP5rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751389193;
	bh=fgWHEVgsFZKaxJIyqAomVGzs0nJO2+8nIj8ClU0sng4=;
	h=To:Subject:From:Date:From;
	b=jo8HP5rQF7nKtPQTQRpPuHFRXab53rZDP/F92zQbyePRfL9/vOToUt1MciKOQPuRb
	 tVuNUf1qswuh/v5QkZiIumkzd6YEDlGH9ETQ3ZTQvWK01aglUeKuKlhlxsljSNMpNM
	 kBChvCUcf7bTpAfBTgNxVYcv4BgIhPY9pW38/29jF2AAZXyWGfS8f58IASVIzWJfCi
	 WD5aiNd0FtJslwhyNNVGJtgQFwF48dKDXMg1tMrSpMf7jvM/X+wtXngCNmP5f6GvxU
	 L6cHzVNrInZs0PKwqIA7vP1NbsMq2tdLwgRkmiTCyRGlcwD10U1cyPsuRz9v5vQfId
	 3p+pm2SiWV7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6DC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138919357.26600.330343555298196582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf3ec27ad2764975e01bc61e390e34378ceed9d03559ac3ff790592ba0d8bc7
Date: Tue, 01 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751389193
