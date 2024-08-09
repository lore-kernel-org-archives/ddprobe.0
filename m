Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFF83D6D
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723184154; cv=none; b=nHbAfAZLt2Ub94x4h+PAKAtdqoTjx//r+k5/4pJlzXISuRN3KezlMiYRw0rN/hlA264PshKU67CPFIgkL8pWRoB4Jq3Wkz8efj3g2hcFdpjFsie4XOA9zsJAJeSuzuqx3xclEcE4lCzHjyKs+Dn1+AaYL1oJm6+J+2VE1vOG2+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723184154; c=relaxed/simple;
	bh=q6bWiuelYvgOFjjova0HDdI4yVPTNnwBuR492zwjr+8=;
	h=To:Subject:From:Message-Id:Date; b=TedniarInIPOqpREGE2xGYbd9TI4qFbAqs6rPoqwsy8DK6MAJMSTgS0mmYPN52uiMmQd9h8ezh5AgdyEQrDtq4vF5yhIDSND0sB4NrPobXga4SATUGLHi9doYIWvPzQ2gdypEpxJvOudDbt0wP4nUCWnSjjG5LYPqvQ0YHzZg6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N72BjX42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N72BjX42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7902C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723184153;
	bh=q6bWiuelYvgOFjjova0HDdI4yVPTNnwBuR492zwjr+8=;
	h=To:Subject:From:Date:From;
	b=N72BjX429HPhUQESg8WOIW4XogH6vL0SdI310VYZYr9MaBmCWjHbGtzAMQIyD95fW
	 CnnJjH09EbvrAWuttwtDtDZXx2qncc90Jw3gWeHrhw7kqGxB7+4KwMbaoUdUnvhtGR
	 kfAwY+zGsEoXZOQCcQ7GhQtXhLM3g0isJE2QnuyrgN89WWlbfwoC4XLV94+TI5p/hE
	 oNRzhi+5tJ+gdF/tilUQ36Xruqtr3bknuFERr5MoScyAUck3AV/uiTB1XhPc0n9zkN
	 UATyFdM2NmJGnVTUsxXFmPNk2SlbM+QjKDkBmaNB1Z2Ca1yRjTvBuh9ELyA/ZsxWB4
	 xi1YuGzqD9HBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94431C52D73
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172318415359.7869.16603670607998278021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba576ad8bbec65a9b58654c2797a2aa9c27a888f444c1c4ae0f786388f751f3
Date: Fri, 09 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723184153
