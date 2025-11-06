Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612023B616
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762411194; cv=none; b=Qm573MhSSp73FEhrQsjhBWIRsMVBMBRJqGL7nWPH0c29SyLuJr73XC1MkMPkgdnEYHbf7BtRwNITsAHe1N/POynICOIBgdjWSopkFm5/Xj4UVLaji4uWqzX8sZbvqDMeyQMTXcTiS+ivaJvWfLaaOwSN7/BQeLib11upCg1NMxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762411194; c=relaxed/simple;
	bh=TJtdvpb2Ap2qQh6DsQKdwWYfWZMzdQXzP+U17BQygIY=;
	h=To:Subject:From:Message-Id:Date; b=XvPxLNzzzdeXrd/rBba6Ehar8hvjxPTiOxsGrmq9RB40cIkKzwO/t7cZupBMaAnIth1E7+ah94gJxcfaLIZOqBtVPSm/QWdyEgOSKbVS7gCTyTzP+j4/jL3On54yjrz3iaD0/6fDWo3c6JJZS5lv6JwS9M2YkZi/8Wp/lsULiD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzAyYXp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzAyYXp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CD0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762411193;
	bh=TJtdvpb2Ap2qQh6DsQKdwWYfWZMzdQXzP+U17BQygIY=;
	h=To:Subject:From:Date:From;
	b=DzAyYXp8isPICrEq6rwmxvVE10BGVwE4YuexVXpCAnovulsMiYv8GDritJlOzKznA
	 IubTD8Aa6Z/m1PxUABSFb8f7CgySRwiz45knex/vgR8OU6WBqPVM2dulKUY942kllO
	 307BHmRawwrvVXZKEXGg6RMZGIZiHOzZrrqZQ2ABKE6us+icL4mswxO/YVPLAelPoh
	 ra7YFlbV81BQPn3HzrPPm9XZfUJgQZFZuIzaa+ueTKTo0Oih6lWwNGbgH+9/ABYpXq
	 j7YEhRxzdEBL4WfnqZISBFxaTfIrFRKUArkNTNCR+Zj0OK6AU8MOHNiMdQxapUCUkb
	 MMGJlUEqo997Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FA6CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241119366.17729.11092813012719418447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb64728d0117f6b7640398451abfff8ed0bbe4ffb9a86ffb056d83e219192f44
Date: Thu, 06 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762411193
