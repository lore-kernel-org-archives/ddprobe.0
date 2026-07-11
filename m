Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A72136358
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783731514; cv=none; b=VSy56DP3UbBVes0WXK8qxiUb/WvQA+XJMhr1iCZ7wrsZ08HC7OFsLYCXBmgMiezbbzAbsh7/fguA1i9XjMFGE0RqbOYcMRA5Ds/9ASwKSHZJDItCQQQ24R42CKAjP02M996v0h+i3/xQ36YHvUdLSTwvhugzMPlVOD388JCl7NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783731514; c=relaxed/simple;
	bh=uShk2K9sVg6rlxxPOs9Ejx/0hYfAIqCL/UGxXHNvMLQ=;
	h=To:Subject:From:Message-Id:Date; b=EHQx3LUBnRqa8JxTvsZlAjk+cBatzBt/X9dOFqAlUWK4nuMhYeSb373Z0rTZq3A/CaljyFvAH2a34LZMk3QbjKzvvl72O1YJD815E6lp3deUkGbJvq1xV81E97rvXBNHmF7uWjMnTSjlZFY35O8eLB+oet1dtGtscyJua785n20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZA0Pjdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZA0Pjdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4847C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783731513;
	bh=uShk2K9sVg6rlxxPOs9Ejx/0hYfAIqCL/UGxXHNvMLQ=;
	h=To:Subject:From:Date:From;
	b=LZA0Pjdy1BnvW2gsCm4GtsATPwr9kJd/wia6S8Z4jkMyEtw/PG6UxpveZ5xoY0eB+
	 uOJLr2KulrAoB0iaUZ4QJZwtwo+vnZw3SZRnhluvh9A1efamQ8NIprex6HGvKkct4B
	 AijcXezStdUG8TG3VLW6CsgYSpMNAdkSLEBmRO+043zO0kbTe2HQt8bgeo56Ylrlzw
	 +nxz8YqqpkdFAu2RTwFKt2LRPZKrrC82XXCv0T+l9zvr1PWEsKzZAOTsDmlxWdjAUD
	 srxAhmwF4OQ1RBhNlRa2kWs564nEuDeitKngRwLNmAY51fW2Kr0TiRSOgFTnxPwGqV
	 qJsOFLLUG3Wug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0DCC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373151368.7433.13233201643773088141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59f25c898b1379031548c659a89349b70640c2752724074a53f4e74b7cba162
Date: Sat, 11 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783731513
