Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB0B1876
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732085754; cv=none; b=eIpB/BVSt/wwl0FNSYFUsQ61WCOkN+s60ddqgKgzxkw+MidnwpJDSYzOgUJNKvk2gzS2rGPhHq9thbIhhq+ZpD81KAG1+3VD+LR7bczISBMgCeacI7cc46gTqF6reTbP9E19IWSIop8WDHIy1J1qxiSrpKaKpPJbSMlCW/egZGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732085754; c=relaxed/simple;
	bh=1hidTG0GVSDMrzNd+GO8kg/hY/KCxDVppseYUSrVy30=;
	h=To:Subject:From:Message-Id:Date; b=Ld6X9dIrIm39xfztxiA66ourAFAHjG1N4bc3h+VJ1+KajkjwHXpKqt3tQ8ck54ioT/TVKXTvGDeSNyYn16ceAghQ9TueJYPoG5e/QWE8zhoT/L2hPj0Heku3th4+SRMKZOxY6RLhBGuNbHomWcy5tPleFrN9wYZjNwnKaYVoL+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCpb8A8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCpb8A8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB39AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732085753;
	bh=1hidTG0GVSDMrzNd+GO8kg/hY/KCxDVppseYUSrVy30=;
	h=To:Subject:From:Date:From;
	b=CCpb8A8QU2WW8MX3qF04VsnT3Zq9mtyXEZB8HW9Vo3FOT2TiLKBvv9ifbTEPqUQle
	 yFJBRrUBvyKxt7rLoXZJrp5kjM6RE3KeEA0Tz3g1otpfp/XdOM2jGQITO+olAehXO6
	 7kx6Nfh79JoT79b9pSyYb0nMTPiYWPBSd3N/R622ZBq/VffQ44dK4GCOnIpxVPHMJb
	 Ebm+iqBgfbpmPHet/O9SJyEd7hDHTWQ401PxMY4XjpsSpz9bLrUNZo6QQ1Bj+VYK+I
	 RFJYKgOHIe4c6QqfQcpmj+QTwv9cXSjjcg+rD8tqcysdkKXa/WH+/ycb36hLF4lrXL
	 EsGju2r1K6O0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C3D6E2CA
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208575360.19463.1957445980980337299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960ee59c810a17edb728ea4f4b3e4234ed96c621d8f6aceba917168afbdf1353
Date: Wed, 20 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732085753
