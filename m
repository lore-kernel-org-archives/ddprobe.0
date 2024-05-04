Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D771DFEB
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714849943; cv=none; b=VZBynR/QES+q/eHzTBESTJX5eFT4pDMfWgXHNQTfXfOmHRBjx1sbBkZcvVrWIaz2wq4x/JrbDmpPJOEeXsPP9Dq4wtHqP6ma4V6LsTDJn4t2/K6nnCkYBYrQIwJK0kEbsNyn+1y7BLXGRmWWav1O0yaPziuLc2BLQxBXmOhFM/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714849943; c=relaxed/simple;
	bh=+1bQ/ZfEjlTPAQm1OhqDj65iClyxeHonzywLcy3/hdc=;
	h=To:Subject:From:Message-Id:Date; b=je/8WJxJfAJEfN5fNSICv1xxmNB6atNlNTVnQpnc/2rH0qZYSbA4Hag6uAS1NTGX9MID91A9feFEHYn0zRTmF9ZopZFtHV7AbfLTDpuntSXGqOV0pn6ET6mw04p0ltBIQWsbLgJgzICwEKs2McHwgSM2GjxxJZycDwU6QfhZmu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcMWWyzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcMWWyzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A3FC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714849942;
	bh=+1bQ/ZfEjlTPAQm1OhqDj65iClyxeHonzywLcy3/hdc=;
	h=To:Subject:From:Date:From;
	b=rcMWWyzCQ+XXYDQxxcl5nHxonBjWNHlVZ6/cix2xURBValyyD131bDJwSB/IYZIYc
	 y9p69lUCzptKUNbJR5Ohz6Dq3GMqFf/YjC69xYlMT2U27KFHgG3JeU44BIQecmEbzs
	 oZkJRNebYAND+jvi2qA2KXPZxxytuitZHAFA+tjy4dHY2VBEg6jP+XHakq8gh4+CYm
	 rBh3v3mTTv/KcWm5LUviQdFmftdtNJxsf2/gLWT9ohKSVCPQWk+PHDQyIsdb1spn3Q
	 aElDFUOTp7+xuAkDk5ewc+a9qq6dYnZ2NSKnDzqLsAQaLRY6kBxECFuHtItm+e/ajS
	 831CiTiEIJ/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B8AC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484994277.29318.9558678065613882664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8197c3af004cdcb919c093b5afb8a7d8333aefaf0055a475f1556fe0252b7c40
Date: Sat, 04 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714849942
