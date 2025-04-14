Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365A81BD9C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744664994; cv=none; b=iI4rr/p3J/SEwVIjBePv62xxctzpKyofMBeWc4C4BmvNkzi+GPHrvF0LwYCBW+Bq/AG7RJtVBnpa9tuKAAzPdP6MIjtBNGvz5D74GPMjaoyEqv6LEQLaJ1BQMtSm3WilABTuOkwhpUIg6hC/1X44oAQYBe/wNXQF/X4rCYT5/98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744664994; c=relaxed/simple;
	bh=UxSYRCv+NbMsAUcpUoaTnILFWIRmXk6pSAnZ3CLItj4=;
	h=To:Subject:From:Message-Id:Date; b=BTuFWgCAsVCWaTejZUMwSo0kT/36srDMFaPc9Z+BulvJcUJTQxdq1lTsWpMWiA8bwcWNim5FjUS64Npn7foROCwlbDYSmNKV/JiwFwTyfxVxhnEnFgb56KORrypxYbAmSbEBlIh91DpYhSGpcSEXdVbGtSQo2Ej1Yt569R+Bq48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2vKSo2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2vKSo2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C30C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744664993;
	bh=UxSYRCv+NbMsAUcpUoaTnILFWIRmXk6pSAnZ3CLItj4=;
	h=To:Subject:From:Date:From;
	b=Y2vKSo2DJzaFUbeIUiQRa99KK+xdUG+gwaIJjJM0B8VT84iH0hNyH30T+7g6ymOyT
	 190eFPt0/w2QwfVmPOJeKDhytgWuWokWCVX+2mrAIkfDJVEMKRHGqNtdnGhdISx4MO
	 7FNTFu2PuFUR0iBB91POR6Z/YAH9FJWH9q+34SzazcCtux7CcEXEkAIxYSGXPBlFb4
	 k0cm8pOLD/7FnQ2SN6RpC06umDqBD1WIJ6gB3KfUjf9/eE4tTSXQQmAV3B6jybres6
	 7j8IuCpukiZY0QBks1MsMWUxq4X5bJLL+8v6CH6JCCd+yia4dwg2AlJ6RTMivpHioS
	 YkXlWeiTFjCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086CC369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466499358.26532.12942599201243673555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8724f938fb9ee0508750b5f22fc557808ba6ed51fd55a495f5933325422cd893
Date: Mon, 14 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744664993
