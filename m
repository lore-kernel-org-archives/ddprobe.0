Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF6C336EC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771581294; cv=none; b=tO6RJj0pLq0qI7W2gjpuhKbxZfE33ZUvX6rHW/uCDTWP98fj/zlxN1pwj/p/KfznKEaSV/AlR53MdIXAXL0Ylkgohi/IyPF1jFXHQqJS6gx7jA54Y/M4g+5u4j2/gGBEUd/LtSXt0jw49V4Qwz0cqnH8fQeL8gP39fKV/Yfz04c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771581294; c=relaxed/simple;
	bh=XGfDmXNDWljhRqBbs6jdjlnBbUb+wFBuW5eo7BQSCvM=;
	h=To:Subject:From:Message-Id:Date; b=c62Wx8NJW6cWJ06SDDjFA2FaeGJDoOEgScUFNUplU4363rdE385jbas539ulgpfB1u/yDSSBTeP6viVNt4OjFZvvjvMVhKGMokNpQEFzPFjejLw9TIb2jt7//5ZOR97L3691n060fTKa0kVSEfXi7ig2P/971HklLmMIcTIcIZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epVKAnob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epVKAnob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADDFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771581293;
	bh=XGfDmXNDWljhRqBbs6jdjlnBbUb+wFBuW5eo7BQSCvM=;
	h=To:Subject:From:Date:From;
	b=epVKAnobvtqCiHdM2BsaWvIdpd/+2ejtcgCTj6WXM2YjIIBLxr7rZ7Sv42X0QW/eK
	 nZf8Z0cfi0eYhvvNXUfQ2FaYnMTvFow7aTCgbFA6sgH9s9ygarshtIu4tR2xoBjKI/
	 Hq1uuhgJWXbLIJ97HZsdbEHdZDrsjtd7KJu9+kRJYK2B3cFkd7KAd4lFNh0PiEjXwL
	 +pU1kUbo8QVex9V4VS3NInQDb/1LqR3YUVUstNrsPpjiuGUwTEiXIv5BgTOGozUHQQ
	 B64i9hUhe9FyXZCt5v6XIb1x7h9CVEZLMN1EPqtgnLDuGy+ApEt7YNFmQ9JFqlTcrK
	 M5wHlLHfpjxXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F7C5516E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158129359.19726.6750918941581668810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9db9752574e98e455e4299c555201ebc7970d4560fb9bb9cc21c2f0913391db
Date: Fri, 20 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771581293
