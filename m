Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE3149DBBD
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791538834; cv=none; b=fyalp7v2s3ky4D1dLsLSIRosYQ/xpQ0QU+Fpn4PSbuT43Wfn+YNHmxU8I93GKEXO9Xk0kX7uAQmIktSruNivTSzQJ+jQSm4qUsAel/vSj7fz1MfNgRB5mr8BZ6xOhUF8xBFzjH/nmU7+V/3+mtOBbtA8WtiXRITNqCYAS8lY5IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791538834; c=relaxed/simple;
	bh=MII7sqYBUUIEtoBpp0tc5gR/guyZeE+oZkCuJogWUSQ=;
	h=To:Subject:From:Message-Id:Date; b=caseZNG+NGJpATBYj7nZKXGl+V43jmqsmmKocOV/cxzPaRHEqqzw+SGfjq7B/RS2BMafr3DbNNk+IxMwGcb6usJ/6WlbK5edsTiujAk8G2ESJaZW9mkpSUWwVqF/IWhRAr8LZpm4RG4wf8qW4mSj7glmwBJveIxmpfo655q/jHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkfiWKUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkfiWKUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08CEC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791538833;
	bh=MII7sqYBUUIEtoBpp0tc5gR/guyZeE+oZkCuJogWUSQ=;
	h=To:Subject:From:Date:From;
	b=GkfiWKUzQXHkTulQMP1itAwMHt3P0aJ4Z/C57e7k7t8F2MkBKLF6BNXbYeFKi/gIT
	 cHyaI9IquxUCB4lf+9xavbGGKzk4bqMnqivtUQsVfJxOIouIhvQT4jQls+TtDqIHym
	 ho00XxKuGRjrC1U7IlXsCxmYuUaMVykeejMTeIP8owWV2BJz8NB/FbU2Uaa9STLRyf
	 cdgxvGP9/ata7MGs2KA74YrEZwnBeDuOHOkOJxEXLiVKZO/oaps/UmrEomMhckW++A
	 jpZHpv9TPBkahVQ9VAQyPLN7xmYIIEhpchq2SA0NOMBwga5YWdHqLqk+yD1JTV0mRw
	 v6zjWriVF8PYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDF1CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153883369.28734.9469227560837391873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cd5f0e44b9180427dd0c3a81654a32da31dc9ac82723db0cbc2cf390f8d48a
Date: Fri, 09 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791538833
