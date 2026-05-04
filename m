Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577CF30FF31
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777927054; cv=none; b=KVHVcdKmvJ+saJRMwfeokwqGuxWjS2/eHZVk+THX3IVZ2b0lM+B6AQsnme/YKcxDObQC7IbooCc7Yk/v2MXdZZLeYrofyH3dAu/hc7ITygItMyuH/LtOaxtoe3R0bd0lQd/tw5t3hId1mozL61+Mc8AsXFjRkRm8OWAvvxHjweM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777927054; c=relaxed/simple;
	bh=uaLOAn9kKules9tYu/77Q8LBx6rpZ7G5cvvZ8RR3gBk=;
	h=To:Subject:From:Message-Id:Date; b=Uo+8OalGjO5X2+ncvxNlu4jlDnUEUo/vc0pxRIcGZFHvjB4gYFNI0XCaW79ND6v07lf6C+dikd30sU69mzqO41mXTprjBaaAipwHD6yOfR3rauTy+vkVEDkb1UuFs384cEAaVV74RLHNMZmFnOF8zdHFSoYRR5tkMe8X3lUH5pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSucMDQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSucMDQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC3FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777927053;
	bh=uaLOAn9kKules9tYu/77Q8LBx6rpZ7G5cvvZ8RR3gBk=;
	h=To:Subject:From:Date:From;
	b=qSucMDQX9SfONkte77XkVimtQilstvelrmps9h6ZiuUWSDMmx22QJzNsDwhV3t1QG
	 GkI757X3TzVvWh2J9Z3BieIx4RNxcr+fUgowYntYvdPTjpaxrR+SA3f7QfsAnSmeMp
	 CEoS164Krc3TYY7m4EjewAkdk3OL50zEPQXpZdUT5wQkTDJFqcySVPiD5p7QCzN91e
	 EE5tCUSMVu48azK1z9eIjb7GCZl7p3RGQO5t+Nhj5u/74fCHFt4vEn4SGMfRbyhXAu
	 AHmomYvFDnyvRX2CquXc8woYsSITz/7VZJ2gVEajn0I8aQlb0GOsYGmuprQ5KSX7Ej
	 DIkOa3eAyyNDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B0FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792705368.12075.2121693215253315537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b19fa4c380e9968b9a42889e27d670205d4003a4a3a5cd30dd96a9efe26cd3
Date: Mon, 04 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777927053
