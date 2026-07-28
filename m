Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937B312814
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785253834; cv=none; b=VgWmSSCzy4eq+Ukup/N3V+oTsqGb4GR4xjl3HsOuH+FeRPCjkXXyLys2PsAXfn4FE+YGkMgG0K4dcnWxe9CUuw9ClruZMXvlefvmTPpVUUpGgoKmFjIpm3Vn9wkOt5dj1Lswp9x0Ip0uUgTvowRWZWj2fCS3D8YTGc519ifF8H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785253834; c=relaxed/simple;
	bh=ELwX3uYG4u4BB+cMHhRs1BEvg3IyPSCopkwWLxFE7hk=;
	h=To:Subject:From:Message-Id:Date; b=IKjbgS8Cwv+PK4ubT1LRkRYthd+vM+eoxA/D+Pe88u450yNvgN450J/uPeAk9FWQjmjknRIwLiJbOHwBOBGClxrFuxg8CSwc+O4zTlKgKkDAS6LUv3oSDP7U3gmXLKb0ldN7S//lZ+iV2wh4EQ7LQTAu5JMADbhUew0ft7zuIzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR/UvyCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR/UvyCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6493C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785253833;
	bh=ELwX3uYG4u4BB+cMHhRs1BEvg3IyPSCopkwWLxFE7hk=;
	h=To:Subject:From:Date:From;
	b=VR/UvyCKtZ6I18RqoT4zPDpARJ/CCGXh0m2fs7WraiM7PQ7zQh8UqRPI02d7sK4+H
	 vIoJv5xRs7mqNFDMCk9Te3qAGsKh/vZuBGmLS0wkl7yYt8N+vdUws8hquzSnrYll6A
	 6ypiLxgt/lgNGuP1hA7FW0vNt6s/RktwlJIGMvDbzPFAht9Aygm2fn7OfmKLz8iy1F
	 QiEuoYy/xUuUnDBTuQStqXG0lueCyZqlszoXGRhF6LYyk7IWUfO+NQQ0eaMUWyRacu
	 91lprLqCGCUkohEFfI254twArDbEENoVhznio8zq7fqyCobSUuwC+sXLlxsI4XF8ZZ
	 yhl4wVf70xQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC61BC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525383369.20846.92281923768137764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced8198c0d36cc7b7b0db25981c9ac5aee757fb87fa76d7747a57528fd2637b3
Date: Tue, 28 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785253833
