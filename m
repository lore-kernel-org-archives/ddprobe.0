Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F051322A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775687734; cv=none; b=BzUKvqHkW2bHGcI1prEo5wKcUcZ3Z4806RSnJEhRtn9p5KzhYnUDhT26vuIh7MgwfHPT501XwMYtL++rjO3dgXdQPMBC9vwI1HnYbU0gMUFdiYn/MdGypA99yfyF+I+Z+U5i9QSqyQtfeGLfDYAtxsepW0QntIDFwnW5Lh6DpxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775687734; c=relaxed/simple;
	bh=b5l5YEnAFQjHSwRZFHOxZPCszN8CPamsCQW9/r0la8A=;
	h=To:Subject:From:Message-Id:Date; b=QFR95wpc35ZlaPW68Y0/KWERm8ODrH1n7id2lYArM994rm1XKXzIAvAj+uTZ9KckfMX+dcvNK7DROIO57a4d2RYk+XjKZMUfSv6XokiATWpCbEQbbVWzByRckpjbc4hZHGr5jq/UV8Jwww2fC/t5JyUzj8FuSsT4IBfW+015Npw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgoOojfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgoOojfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA55EC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775687733;
	bh=b5l5YEnAFQjHSwRZFHOxZPCszN8CPamsCQW9/r0la8A=;
	h=To:Subject:From:Date:From;
	b=NgoOojfI7pv0rZGLuD6g8CBDAtGWb2XUa9GS+HbGAMKkj6iZbD0q83KZNsnyD4aOr
	 SaH6symN5R7vwP33rDMhyhWpS2fyh5T9OsgwJUeT93+dTtXj+S27DEmfPzCXTbG+2/
	 zfP43t/iHrdwI2oObxXTS7IZ+vftErAuJ9AmWuRCYNPLBfdNQ2iVTB6elKP4Jo54VH
	 jag6qalhkGuuOW8U1joMlykNAmOqRo2LdFfE+GCdOyXRp2a9kqP+ZUDTd0sjclCTjF
	 6IgqXLJ2P6Jy3G4ZuCEZupKmsYe3IsQQ3niSbBkm4uMO6HNHgXh7pZ1GUKoI/GWFeM
	 kOibBESNY1VdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B626F10FC45F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568773373.8042.14564463755049879329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d1c3696756fbcafb6abcd6631ec12be755e9cc0808d7c0a6bf61464228cd3c
Date: Wed, 08 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775687733
