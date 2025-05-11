Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8E619CD1B
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746995994; cv=none; b=BpC0968d1SZkF6IESzcYmXmz96Gm+jbqdPnzTxJmwF7JoxjbXWgfWEfmLd7iO4+C+tW4rwnDOhZBhFZgCv8JlFoJa6ecT3IBqwrRF/vZQA/xpP1tRy4TewwFu1IQxmiHc6BdHCdemAWUN5xIGX4zNwqQ5H3Q8Tw+oumHM2+IzcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746995994; c=relaxed/simple;
	bh=pRA5S/bQ9p/QgV5IrnSm0QwIlKXFUMCj6URCtj+f2iQ=;
	h=To:Subject:From:Message-Id:Date; b=RG7hSG+VnPHlfMgvKoVBpO43lrmHoJt9Bq8daAjb+IMdNV+2pXbFlySnVjBvQNq/RIv8f5Gsj7I13ikWfX03dyKQRq/j9xY3S0yJUMEuy5wUAOTVa9kkcCwMCv+wvo4rXWYvlcitk/X1h3exKRBqGriHJxFqaWL5u3WkmSjqZu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8B6bJcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8B6bJcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E36C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746995993;
	bh=pRA5S/bQ9p/QgV5IrnSm0QwIlKXFUMCj6URCtj+f2iQ=;
	h=To:Subject:From:Date:From;
	b=b8B6bJcraTflCevd0m4ZnHahYC3aLjJPbUDyJg1RXTrsGpoVIVCT/wSAEHboePv7z
	 oC/QtzdzLfW8H3oEiwKqXfdrg/iZWN/2VeHvdwyrOOU6uScE35HXAvFAk3crV4KIu3
	 pGVYpBSiXivQLAvJ14jGF6aODmURa7H8XyAOmflQ+TuZOg62Zh9pSEp4Zi2NwBHO33
	 kvxNQz/vwGMzD4K2EUM8krS6xRFsD/w54TamSFtEMa//gwsD6d+Fm4g56eoDFzjgga
	 OLheAqAEpSH9Nfs5Aa8S0RAXqycQTrrJNR+d1KDynUL/lsbvm+PcqGvyEUWF1UjUZZ
	 mHKKqNgpw1Z/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5EC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699599357.29723.18140645460421801650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14111e0f0be0929ab4566ee5393c652acce01241ec7f5080b6d0a90a7bfe1b8
Date: Sun, 11 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746995993
