Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FA1D5CC7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757906394; cv=none; b=WU1e8VUXdCVbfBSns8/2hWhVO/ZVpzmtPkuGeaY6igdNT6NjXwkCj81I4wyYF8sqIUPTaf42mvASJLjQtSRVW0My9V6hq766sasIFILNiDBZuyVepgw8B7jI4sdhEUjL/KxBfSPznfCfMCOZ8lllcYzYeGI/sj+ICUWyj8rNicY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757906394; c=relaxed/simple;
	bh=PCb8a3lWu516yKW7c7+OxAjTJFOr3UxlTYwebJdWZ78=;
	h=To:Subject:From:Message-Id:Date; b=NrAQVlS17xZCsubji5kLFqKFuwqrXtC5NSdDk2xA/Rne8eN4LX5gttj3hl3LKR90o/X+ArTC5RiwrG6x2Agg3rFQ7Vy3g9p6pqB8Y4uqvAIYBagMHzadCHm84KiO49m33bu/rdTButMkrNoHLwZFWQlnPEAhlJORsxR6R9hHcyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwflYsCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwflYsCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757906393;
	bh=PCb8a3lWu516yKW7c7+OxAjTJFOr3UxlTYwebJdWZ78=;
	h=To:Subject:From:Date:From;
	b=jwflYsCr5y5QyEu5zsdkX/Z85AkfLgj3089pJOm8n+CEXsMeWl4k5knoeFYvxcCqe
	 420fQE51UhR6PJMZrcGOB9x2mNBaw9FIYmhOfnZKXa9Kin9HJyVVUmVQNrS0M2rrmU
	 jkuqpP6RVoaxQu7ToEAfpeWtCwyqThR1uJTKo9YxqIr37Xd5mmgIWGpTeVHjGE3H4+
	 WYXAmbsZaCz2rgAQ8Oq+XCUtzhNwTVItKi1t5/ofSPLAyGnL6Zcpw9y/UahwC06xgO
	 9WDe36jkPFO0A6ddkViBhRjHF32ECoQPeyL8fi3kFqhvZ7XvIXAI73CfRBTk//cEc8
	 nNn+JH+f/1rmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB51CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790639357.8106.6083448184921381534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4297bbf980e7beff6f57268cacfe730174f6fde577c66edd855c2566772acb
Date: Mon, 15 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757906393
