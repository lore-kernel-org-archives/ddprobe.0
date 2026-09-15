Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F31D4BD792
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789497034; cv=none; b=BjjTwdIxKAM8NbmKhZ4CtEeNFb5VSwAzO+yJd4DdoVMs0f5S+1j/JfvGwS1a2QrzK5lxBpvxK1He4/5q8r9Zzt76aLYRB9nbQ3IVxt/eMkila1MvGqLxgnAAPgsGCdmMAWW7aOf5fPojd89Q+dGCEUsZG+hgllDZMrv+hF74+ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789497034; c=relaxed/simple;
	bh=fwSCWo9YCFt/GhHMLNQG5q67FDA+THQq7AF+heo7q+U=;
	h=To:Subject:From:Message-Id:Date; b=r2m49RBhqbk5ywmRfJJWkvPvtwLfLnR7phx9cWOi+dsLg84Q9nl6xnqjbvbNs0nHNSEv4TbJ6SKPl5hS3SMOj35LaFkdLQy0MwkOxVS186WAdrAyG1021Xbs1SDoY5j2muCtT8QbST40IsrgAeaPreP21O8yOaZBxcr5GMhRsRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bruD8be2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bruD8be2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE48CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789497033;
	bh=fwSCWo9YCFt/GhHMLNQG5q67FDA+THQq7AF+heo7q+U=;
	h=To:Subject:From:Date:From;
	b=bruD8be2iksOzdvT85mOIgmj8qAUsv+L+ZH1YOqzl0am/K/Gc1NorZrgIJw8OO2z9
	 9thAcoPNfu2fjqV7MRDH/TrlaCZH3Tzv7Lormc2EHr1OX1OuA9OIXt2D/IwDTBicmP
	 21rimFOF8P0r0aZKAJ5CQt2wK9wB62mNAXGOVtfthBJk6/8bAMUxljwDyeNxIceq9M
	 ZUt8bPsdoi7sNae2L6kSKRfPsCcL8L2SSl4v3Bq3Mg27qdKMYW9ziY8ga2P5hjpaiC
	 IGKWqtDUWmbMxK4lcyL4x+GLOZ7wQEfYirL3UNhJpcWoZnegKHji3npz8LwRWU5hvN
	 6WJQyVsZ37V3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB92BC88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949703369.7862.3770302871912883508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a799306b8f0b7b866b4cf62dc0f4dc181d6db1c319db2f509dbde5b37b69dd
Date: Tue, 15 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789497033
