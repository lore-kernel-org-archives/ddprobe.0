Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2223C485
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710882497; cv=none; b=XrI/h8rdmQvHswXP3jSdbYiMYqfLqGpYR5XUgJ7yenDpe/4xXSCWrsjOsU6I+ZPaYseMW70S+kqoZJr6ewZvG4j75nMphlx1KwE77wHK7Kt8pBZKGGCbnoOTyz1tDL374CFH775w1pBs/1ZxtU4I5W0zLK0gWJkZQPjmhfAnE+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710882497; c=relaxed/simple;
	bh=ysCgGY6CNyk7Ymz8L4zT/A14plXQuiathkasQ5AalkM=;
	h=To:Subject:From:Message-Id:Date; b=qItb8VUn2+3lmiE2PyEsHlp5QtRWSOssgmTGzkft6pCFsjbfyvOoA+MhkpUWXW6CLkdUoTGKMfjnB0e5u1mHx5eTd93FsoVK3SVrjdCVCUiAgaYY5vkPia6S5a7MzHrtliQAqXKxpAFuDzvlj+VWz7j3ce7+q7OTGUUr9GQZfqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH9Guy8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH9Guy8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD35C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710882496;
	bh=ysCgGY6CNyk7Ymz8L4zT/A14plXQuiathkasQ5AalkM=;
	h=To:Subject:From:Date:From;
	b=oH9Guy8YCw8sRlxVA9Mh4FrolnyyNiZx7J0zS2qvIvWfSjhcg/QYFr2exJOBdBG3y
	 iuV//9oSeTwPqSnm1DG7L7IkM+VVEGgiU7lqbKYUwwlKv0J5gKVd5VOaJvi7CCJBC2
	 CZYj7MmnZepag2oWYMvMbS44gl7EOjpjNbdpc+3E+7xhljFAVeIs7yctA3WkKW6tjE
	 D2fo3W9SuEIHmYxxjOzbb4qJOBnuO3k5KvTkulImTNki1ybjExhBFUbsr11lFZsvjD
	 QBWIsdqPrsnpqggH8yiT8aduTLLBvWHKox0cjAql7flAYbCxQ3/MJ5yMoDzCzsDJep
	 pgzdaTema+8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B98C54E68
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171088249639.21606.825786891375625070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeecd3b7bafa63b3bb340bd1916e1dd1d5d14c34e070588b6c56f8395964d53
Date: Tue, 19 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710882496
