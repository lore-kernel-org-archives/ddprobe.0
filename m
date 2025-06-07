Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF8A1C8604
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749320995; cv=none; b=ZxfOyfQbnObQq1rjBZj8J7dM5FqIEcLfL9+gCv/xeolQeOEdBpHjnM7mQwKLiMciorB49t9RMEz0SV+O04JLlRW5Znqgxa9O4PraEvCFWtOrRZt7AzE9azccOGZOo5mrmhqkDUq2lboiM0l8SatCFwHVMLNOpivCuqlcDTmExUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749320995; c=relaxed/simple;
	bh=6DNYo177ZTPb68VW5/0Y4dY9tEUPFZ/HUM/XnkinLqQ=;
	h=To:Subject:From:Message-Id:Date; b=G2hgDR5iYauLyg1rK2MQ1NieVW505cTiJRjHYIgIlf56bHLrqdjoIuGis92jgvvC71Mavyl1CXQXPXnGQ07h9P6r70+V1eZWLaDLFsTuOhNStb6qfMLiW57Mj0qmXRLjmlkP9d/00oJ3ZICxmEHXI7oR8YzpA0b1wYfGtqhH9pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2HONOob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2HONOob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7279C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749320993;
	bh=6DNYo177ZTPb68VW5/0Y4dY9tEUPFZ/HUM/XnkinLqQ=;
	h=To:Subject:From:Date:From;
	b=K2HONOobxg+Wi/2zo3b2tiwnnk/3NOaABxmog+HJ9J1TxtAqeqOE5TWi4ZyyKGlyk
	 L5dm276gGHOndfuuBHcBR8xRAlrOYy6NC7mSroDKT8CH0GJ4NhOy+fh+Mt7oxzulbw
	 h/C1XCC5svC304PTDX9+CM3dNrv9WSWmRL/MDDpx/89ksZNgdTfU9usYcTEf2jkJ/D
	 Wo2snvK+zZHIgs3LbEY3s0UwGStbCdGfcf9mqDhvGKlVFrQ+b2KLZ/WjGiFbtzjW76
	 6e6HECYZlqDHV6APuu2tTm1hl+eyN/lT9PmJG6konkj4k1MAyvZlUKshHfF+Ncv0J1
	 9YlyHAS7udnzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAFC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932099357.13059.5166089649338842997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d168f2a3c71a8b880a42fffb6e201a0e37e3fcc0cddfe648c97ba69b527ff54
Date: Sat, 07 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749320993
