Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B55219D086
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734559554; cv=none; b=WnesONNBCFmQG66x0oQqi5FmqPcDrGcgiqb/FsdLk10HARm9viK9GWns1b13vd4dikZMABWuDqBXWSlNiWn633Fink7IQITmOvu1QHMusd5S/IYg9Gwnjkx5TBI/GD7tFJODuIgccZ8PyfTLp98ZQWqO1amY6KTXOTtmE4KnMPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734559554; c=relaxed/simple;
	bh=0QVHnc05dHmTJbllwDDDfY0yRIqJ8vZOM/suRAknevU=;
	h=To:Subject:From:Message-Id:Date; b=KDMlOyagNWOcoaCObedNOtTbAFigYKbP8g1y5lWOtppR/ejfgN2V8CrplO0vKYpcUTmhurUbciH+AxS4OYIHQMBr8Cs/8B6d330gVNRF+XRDl3NNCpWwRGY+uikqsHmg7yDIUfwpqacBnOiOhAkfRGr6GsdG74lH9dUGhR/NBVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dInmkv8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dInmkv8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4301C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734559553;
	bh=0QVHnc05dHmTJbllwDDDfY0yRIqJ8vZOM/suRAknevU=;
	h=To:Subject:From:Date:From;
	b=dInmkv8sV/fYP+r89VugrWyNYZyDGsI8rsBD+94HY9Z0XRyGHSLoOXUansZ3r+j6Q
	 Ozt5vYoHXvDDM0C+V2swj6O/1nuQuZ3qr6nCZAPZjp0+VBuH27UxwFduOaTtc86UmR
	 JF+UiugV/Ljt7Ldm2b4k3cdVxETiuMNtuzWY5PEHuLEwJksA/1dqJz/wHqqi8R1Hlh
	 yML8w5zl0BLpXmWcX+n0KoPCuxrXSZXHqEiHJmpqIXysjkI6i/+EiO5UvOIIfOR5qb
	 2mHZvnszvVCs8IPiGYB5lCKfeVfmSl3IzqZ0w2hnoh3Z6NUpbjNPrCfhd/RaflHm1F
	 Ll0eaPW4yaF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E74E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455955359.16098.17398751197217794342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e391886a7d878047fb72a580affba42c1756d616b6f683a2bf746c252c39a778
Date: Wed, 18 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734559553
