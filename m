Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4413054CC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755640794; cv=none; b=jqxNkhNUiGXkGKaBR1sd+pmm50K3k1USPQPKAUqxr0HOoRllm1Gl2UEqu7BKeDreDOstF81B7w96TVAPeiL7ykpWLxPfSCQjSs/j1adLAcN+OjqTE3Hr3hR/QrapCz8Q99CeQKB2NccrBVSf9ifvwwKowZ7e5XhlnJlFMd867Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755640794; c=relaxed/simple;
	bh=/gdeahBQ/rWpewioweCQzbtDfZ/+MegOLdraK1dAPzI=;
	h=To:Subject:From:Message-Id:Date; b=m/XvJuwucbHzDqck1uoUumVytUr8miDZJYTblzuIQEEC5o66UHidFWt4NO5axdsRVjUP4YgPQZEmu58ZtSxs7/iQxR9DsCdVvSfhb0YgLAlAq/Zg5/BbxeYg/i4BGmPNczZktt86HQvSxVxcxbWPKvqItsPH5rh92+DKfxsmot0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYi6cIPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYi6cIPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755640793;
	bh=/gdeahBQ/rWpewioweCQzbtDfZ/+MegOLdraK1dAPzI=;
	h=To:Subject:From:Date:From;
	b=sYi6cIPvhWob0jplk4bg1gUhGI54tLV5KE3f+Y34HbD+iq+4LUvn7nnX5udtAldxZ
	 WHtuMR7UgeMko6EvwfrbPK9/+is4yopoGa4o8nv67Qp6rxBQDP4zD5bKbI2z1VVHas
	 EdgmA4q79HehYQCxpce6kCboinnItvEln6yyCPDsr3c5+nL2IgKVFNX9JHqcYzz8M9
	 hXukeq2/9W1dbLdap2XV3Nhy6UTPqiCHQ3DjM+JzsuQ+Ygo9Ixdw2AodyhI0qT6EFy
	 jQXU9NTMY9gWz2riReRlNbPFlA31DzphjK+NfiYMvd/vQiRtB3dHkabHbnvfvgFofD
	 igFNF7Boy9asg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5FCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564079357.9303.15185520134987635900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5826dab4f3801d3de448d8fad551bbe7148a22ef970f6ecf26b27cb55c501a72
Date: Tue, 19 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755640793
