Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166601A7AE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762195194; cv=none; b=eBPN9A0E8QuECn2NQgB8h//Nd1dUTiR30Dc+0rlODz53MYdMHdBcTidUU5cVjrCzUR6KwD4fqQmUyvV98Gup/X7gyDLKnL6mebnsNHH5m56PPEWCWzKNcppIIoQrq+ivB3qbQ2WCJW91EW8FQqX4sDzxNexteU6EN9RMdqIcvgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762195194; c=relaxed/simple;
	bh=NVk/AMjThzMBgg6LfIs6uFOIUhxp9PfK9Kdx4GX8nCI=;
	h=To:Subject:From:Message-Id:Date; b=KGaCxOpB69zpaORuialL1yEwGj+qJ+chT7cCb6a7LlDHAkvTyDdPYlWhA0PAxkdh0V+GV1dJ+y4IjtpFuGk/vQfqvegtpmWYRyWFrYlRctSqjczVIEmCGpBhcQxE/0yPEX3Rii0OqlT39ByhH0JSu6w9VHgiQBBOxj+YHXa6HYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsdILQwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsdILQwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3E0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762195193;
	bh=NVk/AMjThzMBgg6LfIs6uFOIUhxp9PfK9Kdx4GX8nCI=;
	h=To:Subject:From:Date:From;
	b=ZsdILQwu3qEgtv9+ugO2mWm9wBzJSDXMbNN3qn+NvjW5XbLx9XqvB9i8xJbOmn5YT
	 VmUJwN6WkidZMS77ONSg+LZnAMpW+IxI8AD1qLqnN3A6BioO7s8B5bShPox2bAGh0L
	 KRHsk9m4rGOZb+R7/HJPfTDh82dSOwp0BLu2J9yfsRHuU4eXBgZDCf6EKhVropwBFA
	 UXOZzIxIiNUUYWznzJQCaxcGoVWxdUWvplmUZ4mTzpOJeVPWjQhSYzyrZHUUsqDX48
	 A6TA66V7Jtdo5hN4ol1BnJDi2wFN+uXFw6JcT6D6RwSejymcqYm+39JzWA/uc8BsZD
	 ZAabckKxuwUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ADCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219519357.14620.13339277445390632912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57b2ea81b72b5d87c8b6fa170ab08f762d9c5402a04d27774b49112a35d5ee1
Date: Mon, 03 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762195193
