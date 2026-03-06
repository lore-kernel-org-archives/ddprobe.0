Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC6F4502A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772826294; cv=none; b=k22TL45l1LUSNXTkzPrOIZg6uZB7dW8vKC/kEaWtjspOIXXU9m0I2LBsWdnqhfO/bzMVATBhXe86v2iOwqZaLCz3kDKcKZKi94b8j2DckO5qZMFRCM0hmgFKTmNUhPQ/t2IfyfmlOi01Q1V9E/rGvyvhaXErFFhD/zG9Wt6SlTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772826294; c=relaxed/simple;
	bh=c9yAjVfySHi/m46Fw5YfbaIFCIlpvCuX4PdkJmNMu6Y=;
	h=To:Subject:From:Message-Id:Date; b=QcQRsKUcsK75o3q3u0b55oH9E/thkfGmJZroS8TBAxMMDU2WpUF7+1cUuoh12YCXT9q3v9bod9PHby2jIReusXMwJF9EHRNI6MwWgNCVYI+y0Lg8pGGOfx0iRVi/z3LFjMhwqkMsCakjseeBcC5gN8Xu5nmTciEPJrUPGp8rtmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bkixo6nY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bkixo6nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772826293;
	bh=c9yAjVfySHi/m46Fw5YfbaIFCIlpvCuX4PdkJmNMu6Y=;
	h=To:Subject:From:Date:From;
	b=Bkixo6nYdNuzhmZ2tegiyIFfrW0CO7ec4OD16tCS6SxE3M53W/s7jQoY34orEPH+3
	 4DAx3+Uo9RXF5ZoAIWev9/EYpZlg0X6sgEpUmSTkGUCZKYvvjsyMcpON+N+T54knj4
	 w9pB6DOXoFQXZbfMgUFBcFjJlt8O1qZLs46fI+0gJfuM7Z7PIOUBKfZxVFtZWaX5YJ
	 VX7xwEcrmP3omeSE+/nzKYlSw7v5UR/yqDzaBIVvygahT/ALcQT/bj1niO7ZAXTvZ7
	 Q9+taVUhmUoBN5n9RfgoZpSyOc5qyod6yJiYEJhnyM87XMwIh5msY4+Ci3N7Cvy5MK
	 PhCrLv1AV48XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D19FCC065
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282629358.32500.5631771747103003769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954c5c1c9120ad40d07281b7d0657a5efaa605f6697aac8bd7f01a6e1e3b7b05
Date: Fri, 06 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772826293
