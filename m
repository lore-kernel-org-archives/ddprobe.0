Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BE82641CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775706934; cv=none; b=MG4TGGInK8QMpm9ncnhUQs6u6rj/vnKeJxpH0dZXx7YmbblcV0TreiGwFXN03JnfY70bj5CfpBeIJ3hwvBBUuwj62KXKXCbkr9nqpCTPDuk6KlkhvmJ0gIR4Qp8zF4g2qq71NlFgMXbQbrtpf4lh/YSAzSHyPl4BYvcIGzICLxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775706934; c=relaxed/simple;
	bh=fCj7HSt9g/YaSqJaZnYkEIGTwcH3I5C/+x+4+rkLDKM=;
	h=To:Subject:From:Message-Id:Date; b=ehzA/dhI5D9TZrUSMLaImRHMkTmFE8HrrAmWwrqyFuJhfmcJRIQS6mVojQFQyxs+/JZ4BzMJZUN4/aOqidg9+VSHhP+oawRElVkOHkWfSsB83+t9scv7LVTqmKq0VugQsqeblq0uwNnNThwDcArHXZU47QOqyyX29g52nMTnKZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR5c8ws4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR5c8ws4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D3AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775706933;
	bh=fCj7HSt9g/YaSqJaZnYkEIGTwcH3I5C/+x+4+rkLDKM=;
	h=To:Subject:From:Date:From;
	b=QR5c8ws4bCYado5SD4Cp2RTTVutbDARDV9Z7cgd7Pby3cLCrpsW79L7FdLLxJ8gZ9
	 lGz/V9ikXJrT4wDqMwlYVwYYZIHdWFSTl6rTr9tQJfQH7AFw4Tn2JUeS4PuPFjwO6f
	 b9iMzHlOr1Dz1/MOeNzbgD+BLIw8wQPSzxxs1idC54IyIi1ZUYm/oVNkm7THxdpBcF
	 ggiDFc49s+vmMe4MndMW2ivytJ98phS3AKuh12zR5J7Fd2+JOGUpufCN9ZcLI6l4JL
	 0dDFbiDxe0j7jwpxE4pA3tPqySv2IUZMpKC0jEvWrGqjcQYFk0rm2fzHfcwOGRtenM
	 ufQLpScN4jyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01CE98FA9
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570693369.20680.6327558022027422210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72361634c695a540efbbc40a32c075c432560754561f92c218551fb81d2ab0c
Date: Thu, 09 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775706933
