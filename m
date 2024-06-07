Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720A69443
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717742843; cv=none; b=Nyj5S7ll1InOUoAefHrtOh0FbDJWBMoRw/1LZYZNizJRJFgVmSoOoJqqdfyKTQJjrHZX2tAEXh3dC4fguMfbFf99ZCrVbBjRsT36YZZVYjGOH7Vz8uWeCni3g/1kCBQam0MH9imG1F2jufI1H1KDoyDmqtlcJ+LveYICUKHRoSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717742843; c=relaxed/simple;
	bh=wr90c3IT9hxWZsRO990Z1HxO/b5gdJ4wtIXLIvUL7LU=;
	h=To:Subject:From:Message-Id:Date; b=KsJCFhMKEzSp+sSHgJl03w6oyXIffElSJdBdzLShuLgY2rBUuzRviqZjpmZRJbdArhOoCgLCRDG+tjYMK2L3zsmAHiyK1zo+er6qBB4BSoVJhoI6b8EIjMy5XNjkfyTbdeItk4ovIjJ8hB4SzYlos2zEGm3k/3xPQZVDq389qNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1SmuWqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1SmuWqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2496C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717742842;
	bh=wr90c3IT9hxWZsRO990Z1HxO/b5gdJ4wtIXLIvUL7LU=;
	h=To:Subject:From:Date:From;
	b=d1SmuWqcopFTgcnqCpf2HDT8JGczKGgDcUBYuVUcHwUXMz5q9hhMILvbqs0ZUQ/Wx
	 Dq72bhDfy+dfW95ALY5Jj+FGyvaz/UGi7JpeuFzBYqegyapKaPB5wFUF2BmmkO6SZ4
	 j/q4lxjXM8XGr6ghjv47YxBQ1CSNZ1kyKLHjC51d9/fjqL0l+dDfVQDB55RlgdF2ql
	 seMxqh1Cz9wQEiZOEz93UGMyJH23LWKXHWdfIKhSS5XaTooLa4BPvPf8UnIpG+TVwx
	 em/6eGifXk89oAEQCg0ulJOavJ3Z8LN/qYqyrrfuKyhDbzQZZKYzMBU7/c/3o/fYUq
	 9uI72laMMXKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C8BC27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774284280.13500.8183539441166135776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49671ed34dea1a4bc3aef142ebd45e6bd34aa634b380ad8c8a7161105dce77e6
Date: Fri, 07 Jun 2024 06:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717742842
