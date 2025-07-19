Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3E01F463E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752944394; cv=none; b=E0E1nVnhtz1TqUTjlxmhRgJtugDutCkaTzfdRJuWUU5+S5TT1YAF8MDI5nG4AAhkvnPpPRH+q7XKCnHDMGI7b1GU7lFiEHhb2qUS3xlCozc2iWb9Fj2pJxtljCYlENeAeuUZfphXMlZ7ZntkYkWeVPhBMnGTFKkOGqQvVNqYThw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752944394; c=relaxed/simple;
	bh=13x+rCW3TJLreK9hLt4ONUx9jGt2pB2/9uAhrVjqTa4=;
	h=To:Subject:From:Message-Id:Date; b=qLn3v66TkcgI9aFhAM3oXpTqcVdP324Xb3bzU0O67IHdjxrPiZPMYICTtaxIn0D17uBuvgC1rDxdKUCY+aXSm09fCQn42tvSFB6OsUB2qPGcoYurEDsUFX5Ggfhl+Ue8Y7ppUUAPOoQ8MuecTOXh3MwFz93EeXogSRFkOrnIYVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSxv6Nf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSxv6Nf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752944393;
	bh=13x+rCW3TJLreK9hLt4ONUx9jGt2pB2/9uAhrVjqTa4=;
	h=To:Subject:From:Date:From;
	b=KSxv6Nf0TuCAdi4NIIZt5fiBNZyzom4GIOzbkb8RG+RdG1sfbkvUw7Lyhw+j0MKfb
	 guacG7Mekud1z40pmUGXOvz3mAsVp2QxmHMRvkTT/OBnHh/xGsjV71JhKKI2ZsOJDS
	 /jak+u56OTgNpgXtORVXIE6gW2Y8GF69cuGfwFar90L6bHS0FJT+9yrx23Sb4JL3Za
	 bkMUsAZmOFOcSwT3dLvZHCMcswEVKgNi4Xnj6ixrc63V358snGT/WK8gz3cAOsQTMy
	 9qGs5/3hLOzCoj+1K1x+qNA5eG9CZNRK6uYTj/1cVBMeCNzCXxAN7wlM8aDose/2GN
	 pT9kauN+bBEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D4C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294439357.7836.11886689471054563373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bdda39cf52dd12830b46bed9759ed8212cd9c300ead192b8fdf8a2bb2bd64a
Date: Sat, 19 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752944393
