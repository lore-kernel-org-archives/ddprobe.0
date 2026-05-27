Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F937882E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779899554; cv=none; b=rWjUbFSuiyGmRyBoKcvhycnBQngY9YOBhh+mvYVaEM1IAVUqTbmz5T7Jpt3bJU6e4SE+2eYU+DFuGvpDmesXiKzuBhF0PiO61NZ+uZC7pP4he8pg8j5wGto17Sf+w4zoLiFojp4/7JQxh/SNIJ/Z1v3E7a7SirQ+co2P/O+RThE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779899554; c=relaxed/simple;
	bh=N/gKrJiMsga6wqtf2sUmhqISshZRiNM33v+L9MJn79g=;
	h=To:Subject:From:Message-Id:Date; b=YnXQkHAV1Iy6CMSWalP5eEAzczRwIFkLY7Oj2z7DJWBsdhyX0nV6UWdC8v20kgKZCRqzBVabJHcgd0PIlC8iRudAsHwsDmMMYE1v1YjcD6wBF2Hhi2uR2GXoRBHR0L6yHI5nFkt2h5rHNZopCA/0O3Cqf43pEKEvoeRERNnFD/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hroBoi9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hroBoi9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E68C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779899553;
	bh=N/gKrJiMsga6wqtf2sUmhqISshZRiNM33v+L9MJn79g=;
	h=To:Subject:From:Date:From;
	b=hroBoi9oCQbjZOOXbtXKabUGgmV7ihLgJrYMkXZ6F1Um5EBm9PnyndNKOJoOHXf5Z
	 09EV9ylnnVVqdT24alNpn7Ep/+mr+Gv46D0Nb7AiHDoFWmpU38K3mzq/mnqOELv9cT
	 mq0DMfVAq0vdWNO5qzcI+LyL93oh7FpjmRazxSzN+ELziHsiRmTgDpLOgpViiezM2u
	 0ADyXrAAcWCEVOlQgDZZ+iTSgujvIjOc1RTo9jw0QvhWpcbvorY0FhkfV8r200LEjB
	 K5AJ2VcKg04uUUt2XZeHsD3BmMchjSQX5A3LJbx16iX3fWk+HHMCWhqvthKvzavEWW
	 b+Hzmdb7CZNfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9244CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989955368.31422.5438836604638898368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d174a5f86e2745feb6e5a77462efed14266d911a5dba015401d6261258937d
Date: Wed, 27 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779899553
