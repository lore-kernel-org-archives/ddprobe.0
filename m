Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C1BE6C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753066194; cv=none; b=S9VfiTZrEq+/t/of5JLj4s8gFizwUkIAvqzGMyIAX1DUaGKt10T7bSSwxcZ3qA2lhopShIg1hKByd/2T9s38fPHtAiojSX/OJcT+cvV/BSSCy4wf5K+CxZrLjoNFNUuKjrh3RvPu+QS+6jK/w7ApuAIRBDv3i8YVslEbAeMM/U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753066194; c=relaxed/simple;
	bh=UWFWfH89soGEzEDOjB+MEKM4bZALI3mXp5FQLVRVhmQ=;
	h=To:Subject:From:Message-Id:Date; b=UGjnQs5c7dF6BA65gmRnq2/c2bhBScqAC/7fAI1QsU3FE8CsvAxCVtPmkECOe9CkGCDb0ZFeSltFYAG/aqZ6cwN7UtHpsiJ8JxkwJapNZfjUakeYnRRodkXHixxLVRVAEoyvEqaxyogkQz+K5lMjgAypt5JQmGLjLu6v5jNp3bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccx2yhkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccx2yhkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E649C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753066193;
	bh=UWFWfH89soGEzEDOjB+MEKM4bZALI3mXp5FQLVRVhmQ=;
	h=To:Subject:From:Date:From;
	b=ccx2yhkzwqg1A1VHI7JQHIumtERM2mnOhgPxDN9Fiog+GuDpUF8m5ZadgemB822qy
	 LRHeoxU8Lpo1yVWqiV8U66VcdvWj4zT6U1OxmYTAz0cJXeD3rg6CwP7UgVCjG5h7BU
	 7rAxsHXmVkmXtbhnYd0xHMdc6mNF7yrSA+bLq6uYXX5pVDLsXOiy0s/gZ77tPG10qB
	 oaWVoj5d1bRfkqhbbgtWWY9cjTTzTUvWeaxnZrPipFL5HLLMumrdISw4M2LtQ/V6eJ
	 Hfjy5qNfyz1iWaK8EO/mFfLYTm4Hh7RbZITfM0WWn3I+aKafFwCXPmJG4le69wLZDD
	 hp27H+fQvHevg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306619357.10034.1287443520150616625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08126e6bf0c75644a0e5718c71d40fd5a5433953c8f90c361ff19c8842dcb8e7
Date: Mon, 21 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753066193
