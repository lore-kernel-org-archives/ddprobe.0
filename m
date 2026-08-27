Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C71FB1
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787793634; cv=none; b=Tu4tXl7mjSUbb1eBbe4v4RkSQW+V/AyPe7hqReYZi17yQwPy9IaN/yiEYZnfG/csXeSr2PwiXfcPnqIHSGGz33vt/9lZt0YjlPGJ2SeXgKuCIk2yAiPJfJ7+fcjgZ1KNyF5CkofE+mmyDGblWS/JyhvaVVvOqISHK6SvXvuXj9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787793634; c=relaxed/simple;
	bh=BeIJRHg4aH+PaMgPo40U4tMfoLfU9FzRAZRO6zlu4Kg=;
	h=To:Subject:From:Message-Id:Date; b=AkDXZbWR4NSbnbI7zpevq99jrmbXgDr0yGoLsrAEtudm7jkInogSMQk5cGFa4sPfQYg2xOgGhALZdN1l81W92Hcu0OrUvMUH7nUXLPzEdPSsmAyGwz48FnnPlGmqM7ffp90nZFpbBuPfyAeU9pnJdoByxgbC+F5NsQjKwB384uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxcRmKpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxcRmKpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1604C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787793633;
	bh=BeIJRHg4aH+PaMgPo40U4tMfoLfU9FzRAZRO6zlu4Kg=;
	h=To:Subject:From:Date:From;
	b=HxcRmKpXMGfNRYGXs0ann7lpLvs9vkH3o6mTaxtJBJselb/oIGrxtUQ8Q3MZ7S0h6
	 mGOJxXovjdn3LsGczr8u3R+bIMFMLFd+2j9NX8EqpD1LRGMI+4FrOpdWZHhVaLvNJE
	 g6lCFqCEIvjoKcn+bn6ErlQ+6bNr0Wz+2zMVONSvyrfQZJUL3sHO9JXXrabGqZ/1aX
	 C9b3um/ZILzo9hpQAL/UEGatca/kpHtKLmjiMo9Se5dVKQeGyMmIuQ29NFUAWYU0/4
	 LIK+Q0b05dNrD0MlMXmmul0CPQDJ8AoB7l/FnNbKP+Hqr2qSmRItobA7voZHaQkVUC
	 vk7G8BBBPtvfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C2C61DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779363370.23171.17618608753159400358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1595fa0a3db7d21d12107f727f811c071f951cf16902810d6b305bbf5b0bf102
Date: Thu, 27 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787793633
