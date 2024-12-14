Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34105D2FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734138354; cv=none; b=NNJU8rzu3/Mm+vaeFF3Qdc95dBi1fSD89N88snbhhGt03mjBJvkILCsGAj4T7gkjjNUxt6CrG/f4JLkM04SEgbDRnTGy6SfWKa7BhIE0DFa5nYm97Hk1XuPTtH26M82dZrUSg4O5UvyE/kAByBdM8ywSN2Uygex33v+59p8rk28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734138354; c=relaxed/simple;
	bh=VkPEkGmG00yGyXV22Qzd1EM4IXSILbIRJh5Ky56Y6Gs=;
	h=To:Subject:From:Message-Id:Date; b=ZasQvX5MHAZlwbemHR9U+GevMhFCOxZYZKC40+CDpXsN4eK+tiWeDm1x5IxcFYYk7z+1JKdgh/0mDv4ohpvh4/fZkGkQYenf9bdo41CAv172qYAnh2sRSFZdgS/twtymoaITooK7plPT+naT0j3IURr7pWhtH/z0R6bJVhvBGxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzXnTL+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzXnTL+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD08C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734138353;
	bh=VkPEkGmG00yGyXV22Qzd1EM4IXSILbIRJh5Ky56Y6Gs=;
	h=To:Subject:From:Date:From;
	b=fzXnTL+1x4775VhPdIoXJfzsRCupXLrJf2aa8loEtc4qAt1F43aJQ9fPHE8i85Ysd
	 /Lq1x7Y7G1a5GohxcJa1Ay7uJ1mfesOXJe4dfLcGabiYFJ0oJvDJ/JVKeq38drcgN+
	 9J/l2jSrURPfL4mEKj9iuy5fJxvTRwIa2qiAMLTV0UQYaW02Vi4u4Hw+GHmVzwrvZd
	 TVmM7boySpo2trErJkovP9GUR9BJP/U/GGDlCc90Z8jqtHgOvcs9kMBjCtdL7Qv1jk
	 vIgwIasOWaBW5d1LC72Vnwl/PKWUlt1g1nVFIYyN+rSlatr3Uyqa8WuHBHNtV6vbfO
	 WdmAEegr1tRvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7EAE7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413835362.25737.8275550496784117990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69d6d3fddbd2a4efa625fe924400d5823f58f69f588e546643b986c9b4a0304
Date: Sat, 14 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734138353
