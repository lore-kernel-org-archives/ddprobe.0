Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B7A34D3A3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762114794; cv=none; b=NUuXGSLiO4uL6GBhz47BfoNF7ULCvpyNqZ1vyhYhcats6YG94v/ZTZdsmNOWc/Kh8XH76iD7lG8ha60pr2HexY4oJU/BWoZrnaa/IY7e9SsPaUo2xhiCQ7dW6KCoR7w85zzy85BQfRzfLbqZ9L5j0ziZtp/4f6xASqZnVb/c5xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762114794; c=relaxed/simple;
	bh=+0OKTXMEBbXglrIPuzjcoZwDerWY+D5RNshpmgJ456Y=;
	h=To:Subject:From:Message-Id:Date; b=RyHhkuvEICcEIfW+rIkGUBMLmP0+Bv7O//pJVHxtI2xTfShsfZY0K7qWSCpo22vJBQ5R0QTAKFHXexF2+/Gd90iO949DXC2uaeuWokMyptq9wtsVclslDckgMRtETIFIe/tow19YhcZ9eXF6aVcvtq5c9uZB0Lc+dCAMUPfK4oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFJMsssL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFJMsssL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762114793;
	bh=+0OKTXMEBbXglrIPuzjcoZwDerWY+D5RNshpmgJ456Y=;
	h=To:Subject:From:Date:From;
	b=kFJMsssLQkFQGUjNg11LG24mwwgZqI7qKyN5N4XA6oR49oaNvvqDb/vORmvxZPzYY
	 js68rWZK5CxgF4BPIGgJ0VN+EpNR8q1tJ8Ic0vvScw3GGpQSJTOrlHm7C8vWeXN7Aj
	 3pUEiXNVhyzfG7vO5xEKjE+aWkVwMjCUtb3LNbqpUJc4NzOJUcDgdeL4BvN6s1Q32o
	 N7jH0/zwmt640T7izWyKGyi5lAa3u4pLB0GG3T70gBb60EOpdTttEmRP4yOaLubgH/
	 YdRp06mFAHVsPRGyavt9uaBA/DLodnqdraR2UCPZ3XnowZzwrGopkwWc/OeXdah1FP
	 3jPvz7Z8ws4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91946CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211479358.8163.1449212794353549943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a199417acb74dd0b34df0a56012076d9fdfaec7fa8e549a45420dba357e016
Date: Sun, 02 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762114793
