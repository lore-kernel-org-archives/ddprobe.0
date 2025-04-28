Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215784A3E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745858394; cv=none; b=MpehOduTCSq0B3R318aJAwDFOkpoaXipm0j1MUciuUyIrPxjPa6ov9SgATWqoDCXQbvlnyzJNOHTzvMXrhLtwHLLrzLGv0FLgYu6vS7UvSNa66y33DOfwLiVPIpLt2snzN1dyQ+W/xS550TAB5VlqYSFSBZnltFsrys0M4b6k3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745858394; c=relaxed/simple;
	bh=yMHcLtOEVvnAVMry1WnEES1n1J91estMbkhUqkKpIds=;
	h=To:Subject:From:Message-Id:Date; b=qr5d6/SmXhH9pX+Oq6WkCDF7wCYCfNFgq9oR4effxnFg99Qgxp5h2K9ypyRG3utp9c3jKfB23KZTydXxiNL+aXC7QV7HppYXMw6qOgn0xVvloLz6vj9aZzN+Q9XnF2VXye0YbNbXUPy84lj/HEsBjw9ouCmCOEURvfICqFzXRao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMq7dmj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMq7dmj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745858393;
	bh=yMHcLtOEVvnAVMry1WnEES1n1J91estMbkhUqkKpIds=;
	h=To:Subject:From:Date:From;
	b=oMq7dmj7u3JvlDf7RBnF4pNfC58rOVsLpIpPchUnfU7Q4zJy9LaRB/09wR7q+Guo6
	 Cc491Ich3kMpHk4Wl3O76BY9BKK/qHUvtkx4WFLEXfV+gDVEv91cdzyMDBBdV6j/Mn
	 ZpGfjEBC0982IjRWvLf6nSJrLdZGpCLpKXtICAhEI3TNogZnBqeqXp9fCzUKw4OujF
	 x66al/Rxx7Sdki/yJ2i8RGbk6pZJYKNCcABRbokbuPbtDUHt/yNMvM9WyD+oVpafHN
	 nAv+Rb3EsHiqBZBNg0nM6WrmW3qwzasAQeuIAyEiLH6PRX2+Kfa9UpGb7u2KnB4KF3
	 p9LyYEncmauOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31FC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585839357.24350.6045899283269482468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b031a94cf2e904699f83fd745f573f5dfc570db89f2c06a9e8ba2a605a469da2
Date: Mon, 28 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745858393
