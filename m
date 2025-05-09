Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FDB224882
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746803995; cv=none; b=SDdpwCkFQ9hUoBes0LLgwiJH228nK8mrT+c64mtS7vlG598/HDK6zCm34SAtr+KpgeTmA3MYiS7f5s6HVpbN1ncCXiIjnRnwpO0oLxR2IqDTtpg7XadS8WjfmYxTleTrw8ISgFBYm7Vry9kKsCXne1XyHNARbA6EE3HOTEUKOAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746803995; c=relaxed/simple;
	bh=xdFqH8PFBRrnSFVDocwyDy4r0R/dKm5wZ/Cy9DqfX3o=;
	h=To:Subject:From:Message-Id:Date; b=eBvL62uSWEOEMMz7mRwUPFfJLP1mNnzAiaAK1chQiT+ZliBcAO+YOkQP3SYK7jgbocksC8VbznJuQ0/kr2ujIvrQRUmSzSdw7SPQxDcBhBE+TiH9VU4FsVDG+HmRZePdbTJlc3l/3jorFdK2HQgZDT8/sQ+qmpu9t4ppY7pnswI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSWc6OF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSWc6OF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1171C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746803993;
	bh=xdFqH8PFBRrnSFVDocwyDy4r0R/dKm5wZ/Cy9DqfX3o=;
	h=To:Subject:From:Date:From;
	b=RSWc6OF8xhzstWCDdswec/2nphS1XNVckcxSD9xmHixMa0MOcagGs/yz+xVOCgj3h
	 NpQ6SG2eDFOzt8shVBoAiN49y1ILuuFwhN1G8sLWRfKK9ZBV7cdV8/j1cDGQKzlIUd
	 q6rtPANSOos0BQdE13ZoOdQpi/Rv906srkDHRjWi4Z/qzmlwYPJPgfnUCWOuVAI2sS
	 qZxY9+czguYhPL8H9tWrwsZmQlY2dSo625DjTXk9PZ7PChGCc+q8jFTIX4FYhmRkJy
	 s3pGp4hM9Y1nIjAp3kILTrfjiFQ8mcPlQna73H1vEzNyuUb3Gv4l26GJZ9q8wNm/vD
	 uVxs3HH0TVFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C8C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680399357.11227.1397084471966166506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095b04a13315b11ffacafff203a6d239e4a812f2ab051f2cc2334e5a53fc36a6
Date: Fri, 09 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746803993
