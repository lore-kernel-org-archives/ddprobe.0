Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1468C28643A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760052594; cv=none; b=TDS2e8Efv3AO6TPBw8FkJ8NViIQ6JKJRloblqacbFjH5xrKbfpA302d5KXnWwxHJbzO6+62BhkDc/DrBaBylpmuLO9Ax09GphwcCj79iXHjg8FdLSoKRCEa+d0udsf0N5QI4Afe6PmF2+k5vlW5A1zYpxvxO++YzMzkivrTW+fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760052594; c=relaxed/simple;
	bh=79qIVUAmokdFXmcO8olSHscr8tsSTMcYbEd1fh72RYM=;
	h=To:Subject:From:Message-Id:Date; b=mAux8ORAwxd+7bOZt4DtRleLWOI/MivrinLPmfpi1jbzbwqqyH7pND9WNPwgGTCUJELKQhmNv17z+yKZIuoighvdC18/G2/cqMghKtFdr51fcNyMSdH4eHUTNDZcp7Oiiy8HtcEupIfJkSVbD3ED03IFhkeyp0GRcIPKQln4KlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8a6njWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8a6njWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB74FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760052593;
	bh=79qIVUAmokdFXmcO8olSHscr8tsSTMcYbEd1fh72RYM=;
	h=To:Subject:From:Date:From;
	b=f8a6njWSemo9yg2ucc3yn5x7sZ4W/xyukwlfSu+J8ps9q8OuubuWkIYm0kEsvJf0h
	 YiZKRSiWwpZTnEPo+QBiThJe2FgjiaPE1gbluvhEP90aMIVcuTels4KBZ7tA3XG4d0
	 /MA7jV9WqBqaA+4oPjONrSESud6sW65/GDJoATQDIAgWMO6UPsZ3yZuNcwsoQwD059
	 D/HGTv+U0QsU5elzrgoYgHohRyUpgTKaDYciSVy3+a8WhxlW/3VSabwPlJRThcbXyY
	 BmxftVYzYjvIs3LvrFOaKQvhquAcGJYqhcYvGWvc7ylFrmzPNnJdFx+6ZBjsGxaL4u
	 gi7JFVnkF4kDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97128CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005259358.3081.12525971921405924996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4645dd732695dff1880addc2339374a94ac70c5c0d598e0ca8bc89a1bfd29f01
Date: Thu, 09 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760052593
