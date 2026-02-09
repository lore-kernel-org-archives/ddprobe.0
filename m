Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380F23A566
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770641034; cv=none; b=MVqLiDbETzVKSpZ/ANLNoc9KY3R857hsZAzOuqonGMTW/jVHhir2n39ZMICnBdg4XCjwNzfhxasOSA4UPnsHrtsiWtWtsnlYHvTk8N7pQhX56ftf7Hf//L2jl3YGiNBNuj9tvEfrL+8qFFOiQD1zppghub3QZPtBQJ1K8xfxqfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770641034; c=relaxed/simple;
	bh=l6AMbD+Eh5PB9oio0MpNkqLlINUvwuEka0tzbSdPcew=;
	h=To:Subject:From:Message-Id:Date; b=atdDvTRybIfs/2rjf94/2u+5BeqsrwIyosw2298f6KVujHDrFneRILj+NqQcGGc92JbP4KC+or2XJS6mRWG31Pj9H7ksb4aE9ClpHbv7ZrkyMIEi5fw1vvSV1HLeYnzBj18ceme6HJvjGOUr+q7DOfpTyaAs/BQz/zY5gXWTVH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1yTqGKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1yTqGKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDD1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770641033;
	bh=l6AMbD+Eh5PB9oio0MpNkqLlINUvwuEka0tzbSdPcew=;
	h=To:Subject:From:Date:From;
	b=g1yTqGKdeWx+UNzGaoU1oYdUS2SwsysthaesvzOnCvYfzIdLuwfr7CcKPnsjn1sL3
	 ZB+S8T0R7ShcJvhO0ZWSUdB2fV+dNKasqaFcxob22vfwZNCnANzFwmbkd+30C9zO1T
	 bNxXMHCG9t98vYj4oMAQLwdzyGGkJH05EGfw86YK3+fVJWgsmzaBrgOyPiqX71Yj9N
	 ERt6Ik9WfxN87wP3o8Qx+yj+IPUtO/GQp3xsnpUfWNUdkz1WtTmFdX5r3BoRrLCEs5
	 qQlzsjjBSOJ0QWsGN8TpjVUNxJb4L+Jebyp3wruUvKxTip2euDS+vuUB0T7f7Q8psg
	 Hff35MZjLa5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74C2E81BAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064103366.2369.4376315822322120240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df4ad75ee0782f965468e0c8d249958a8d6bbedc13ead88e4476ea900fe83f2
Date: Mon, 09 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770641033
