Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D58179A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728528954; cv=none; b=OOTIfS+gkpn3NwEin+jIex+RBXwkZttr7Mk4t7ipL62I4eMH0IKaYgAkn0GL/VnaEGaw8nN9eM6ydiZVjbbOCdcXTEPGVbxnj1slz1sdvRyjDcO/YEWYwMvkcKH6mPvODiC5afYLBxeufjCyNARbZWx5JIx8YNhGWA/EMxfFX54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728528954; c=relaxed/simple;
	bh=c/YU37trW0lMJan4hVLopY8eCohqFNqfiQr6CoC1/DU=;
	h=To:Subject:From:Message-Id:Date; b=oiaiJNibFCdGHjodKqAlO/2tFxvFxbY1oXJRvCMbJSiUTtC2CjzBoNyQmTEOOLfP25uZGh5WI/REv24yXK9vFWWEiHl1vboCnnmGP2rx2XPlIwaJLVKf9I6vOXilnH6zrOJgmaTPZ2t3SZtJFM4fWHUeNyl26dFl5l1BcUve6wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfTnezTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfTnezTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7C7C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728528953;
	bh=c/YU37trW0lMJan4hVLopY8eCohqFNqfiQr6CoC1/DU=;
	h=To:Subject:From:Date:From;
	b=jfTnezTj9bWW7cDepUdThO3nFxL70A1bTnp3NeQsrQSI9yRswrBNYu/Dqi598EICk
	 y9zTUxgfa84IUvJ/i44BhU17DwDCeoyM/zR+/n8s1XymqP5TIzzvC2Xv4s42SER1M4
	 0SoYrYnTzUZx7DVC/3oK2sVHFCtElLI6TwGSnujrXlD9attmRix7pvL2vK+VyAWAic
	 gTD2st/ivVELQd8CLjoysLzlFPawnb5U+pDMd9eNIlX/8gd5M15ZlymMHUjBwZSFun
	 IYfIKjzIWMfHVSp3OYZCXVSlDbqlWVToJHJV3zvK1Pdk5ca38HwEQNiPAN3BwtynK1
	 QmFwQOHnclY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A6ECEDDB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852895366.23215.8675115538094614612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dae2cfdb8dcac0806ae6565331f4be2c2702a89ab253754704e2bec3c009098
Date: Thu, 10 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728528953
