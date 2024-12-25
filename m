Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D768836
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735166154; cv=none; b=SRm/g5wtzG8g7A3AoTfoi+BAMP1DnnPgvi1z5RnS4v51Otym5YGsHk3417pL3LPvUDDln7M8Jww3Cq3gyDW+dagQt021xdZzUfhOzpyyj68Y5WwgkPALO9/jVfnPIyVowoycOcNTsOELso1Frlx7WprAZ8NhbgNyozpdqW2/2c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735166154; c=relaxed/simple;
	bh=ihe8NuToIxc+Zooi7uugoKmsbDM1cPPljVz/nJoqwLw=;
	h=To:Subject:From:Message-Id:Date; b=UWVBUaG4s+GqxOubHJ8K/FinE2nBhiakb/1fPhkUb3hYUPhUdzlRXs33zUBYkT++tVDVfdACQZ6Dki1aubQu46xJCWURVFhi/yS0LDe8SHx98MG3tSloFDVdTWW/mC0Fag93hmt/OFospcvK3aaIX6hT1NCt7F7J809IiBA0YvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEqNWoGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEqNWoGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9067C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735166153;
	bh=ihe8NuToIxc+Zooi7uugoKmsbDM1cPPljVz/nJoqwLw=;
	h=To:Subject:From:Date:From;
	b=bEqNWoGp4QIAKuFdzjqeWuKAjdbKgUAHTIqdeaNeqm9UxQDXk7pEhbSH+dtTOabvS
	 ny7H2rDbdONO/Zb9XPky/bIEdszR48HCmJ4imhEplN3FBGTYgmNoE8T3igZT0DtJNg
	 yNr9wySgfUJHhaMIYjartbO/ucJKfVP5SNzgfdi7+4BsQ7MC9J4i413S4IWEiABdJG
	 /ens/g67FggtoPCF+rmMxUEOZQwoIZrm7YzPZGDc5onpA2GsZvnIvogErjm2euf2oR
	 zdlOQc+lYXj3ll2gC2VTM7owk1+BTcRjBd6bXM7dwGbmaZey2zxCbx9DqwPcw0aGS6
	 3Gnc362jrjgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A463AE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516615364.31942.961788350571619055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e852750c12759ae68d2e69d72bf9d2e766a0d61b78c53924603df4d630268ac
Date: Wed, 25 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735166153
