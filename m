Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2771B0437
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763577714; cv=none; b=HMRXXTjKbQ52PDmezsQakoVwJo+kx1Jiyl18vAK2FjLOXOBAOfc64UoeqlP6dnYXsBaA/4gcYNMNxRXDj+hwuiR6UK5xA+uPTF5CLGAmnqnJUtzIe5ztYwjDGTl2gYWaJrEBsx6oxfyE5GooEPRjW2Z/lxhHwcu7d3BiwUqdxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763577714; c=relaxed/simple;
	bh=G32PMXElJYJS1eFr/7OSCB0apHGGOdojDNcaUIhjUTQ=;
	h=To:Subject:From:Message-Id:Date; b=OCq9GPBBjzC76PZgaGyZ+yjd+leTOVFyNGlFWjG5EvineG1RH793MAk0NfmFmqdrjBWjsYQHEJ8WhP5Z0vfvC3hI/x5YxgjruEeUU+d8aMWpf6dfXSkikRb9SWnHqiXUxdNffq4PFwLVw7hTQ9EEg5x2KlZKEWFyowrcn6/6Qbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku49cOcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku49cOcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763577713;
	bh=G32PMXElJYJS1eFr/7OSCB0apHGGOdojDNcaUIhjUTQ=;
	h=To:Subject:From:Date:From;
	b=ku49cOcrZOpYHiOHL4ZkdvxdNReoph+3YsZu/GE/EhZp8ZI8AerJclB/KYZwcUndk
	 IagkrbrzvQ3UJoXYcd05KzDQDdOcYTsHeuZPJfVRY+wyx0uA/fxazYhWZ+M7Ap3/P+
	 0g/sCSsBHoppVOj1VAQjyfsNajk9oBp6v/oxRC0wKxkGOxj0YjkBqE+V+RlANi5Uld
	 NWxGGN81WNg0eGfm5kvM+qh7zvoIV/fGLR86Fa/eE+4HOHqCz8Vnn6M8mk0ZBt4o7h
	 ejc39GbUAuu1UbmNWyiZ40VHmgxtWJe90+gmNm/NQzyNFtNcRLay7G7gNeHcHviJHo
	 /n8bJKBcbIf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B2CF58C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357771360.7131.7116665691065439628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6572a6b7373299d5a30ce13ac110c683c5e49777b430e2cbf08c22cb30647c90
Date: Wed, 19 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763577713
