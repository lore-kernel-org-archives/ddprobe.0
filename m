Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536961DE2B5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745751594; cv=none; b=MDZmdxoZKLsMySoFLrxYJEySFOE+6RIoHVmbaGApNr0kHoIVv/M0EnhRJrzyiVieyFH4cvLfQZ8Hxw4Kh5lKwew6bUYPxLt/yqr50OrLkIn72ByE3wzwoyWvnGiJciH0TaL4RUVTJ/OkoShyrGzc4EpQJDOE6npsJVLlUFrwAdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745751594; c=relaxed/simple;
	bh=xZ0WQF/bDRUraMMbx5cvI7IX73IH5JBjVLlB7hps8rY=;
	h=To:Subject:From:Message-Id:Date; b=eMyWqBEGFbJBr1WJ0ASortJV/INRdqJ6AtPlrLzrn88NTdUvuVGmAq7CZlqjaUjvm4fJG4+BPkjtsb9gJJL3NrCZCzMH83UtjatcaE6B4KifTC//QH6tjN8DbGa9RO2PcUbgOwGepFv2ekVZC7/B3dEBx1H7CyT5bGahiva6eqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caDwSsiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caDwSsiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A812FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745751593;
	bh=xZ0WQF/bDRUraMMbx5cvI7IX73IH5JBjVLlB7hps8rY=;
	h=To:Subject:From:Date:From;
	b=caDwSsiTKhgJT/WNVuMdAVZSfHnwfp+zrbzQxR7Gs52K5Y/g0ADKAtfeluttYlsxV
	 D3a/q0FwDnx8P+4wxAxbLWzEkU/FqiufhTcRhLWb/u1OLsZYQfOGCGK9ws8QgE5yfI
	 GmnrxMVAL4MQMMh1HdafnuyIxGzx7RpixxzQHKLxdXvsVwqmckQgWIZOqrXGa0/BRW
	 MWjyTDL5R5o/3pHCHDyBs/SODEH5+XQt6TbNBXJPBea38HkCcHoOf0wVxh66KHOLtM
	 FA6uPkILyU+zbl+JgMy4CVAnJUpb2ZxGCKI9cGAu1AKIAhoc/5LDSmVryr6euMDJGd
	 SCXQr4esMwNYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBEC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575159357.12811.8037272542988140587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6368563ca7c6b9a22d91ec179b558d19b9be776060f04b8b245c73fd7db0357c
Date: Sun, 27 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745751593
