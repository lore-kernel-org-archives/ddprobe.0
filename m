Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D4B306B0D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764591774; cv=none; b=HDP/TCYG+o1calvBJTaTsUOlNeatTDv3lfndDHUy6xEk2XjKyPCi+ZHVouD3yTZWHLNrXeXGwPbkPZcjiKReL1w5yFF1fIXC4TTWW2tME6N80nKJ+U3GDFd7gUpO/gzpgJi6AuoafgeAobWwJREFpyGnYPYcun8QTP0WsJ9BYVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764591774; c=relaxed/simple;
	bh=sqI0ANrew6r00RJ+8syraupFRi5rBc2v21wIOin1JlM=;
	h=To:Subject:From:Message-Id:Date; b=ffIbbfDLOa3uoRZ4lvpdOP8PYhRRfmnnDkRo1C+W1jpZcScGsJ2cQh4dKWkHxI/nnvcxNuOoEa7OJWEilxlIl9rPEB3kym7B2RDGK6Fl5hYfuse8/hFZclCkaT8J/hJZSYQhUAD8DArCrcQxb7QyarLx6jc0EofJTeAJDIQZuyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoSwJjyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoSwJjyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F8C113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764591773;
	bh=sqI0ANrew6r00RJ+8syraupFRi5rBc2v21wIOin1JlM=;
	h=To:Subject:From:Date:From;
	b=FoSwJjynGqTh9GDFb4o5Yt3cyeSmqIZ4Vz+NtvhF/MpnTdb3uoLrEQ/OY+MdpkCgL
	 +HhEl4Izi8kepW17Vh5jqnp4dGGqa1pM11AimyWvWPCcbceA7O+u5SUZI1NVPbGPEv
	 qI9exlqH9+lMfzGgv9x0885e7ylfsxlTU5P/pAmgwsQcds1d2HaAH0eToi2qic13SG
	 lfySR1W7WK5ewyN5U8uIuFUWaWoYZ/k1V9NMTPWQliYzYcUPhOoSJgf0NHP0RHTvmj
	 YRbJQ/8v7w/OjbF/7zBCHhCealc0zS157R/BsDPHrD2VU/vJTUGgFS6Li9hYnAK4dy
	 PbrucaF3RFZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92883D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459177358.24292.7362691281300788275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffda343aa2e848f37bb68b7be2eae8f1f30e43309d58c7d9ed01131d42387f0
Date: Mon, 01 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764591773
