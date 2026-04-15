Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B1C3431F5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776251854; cv=none; b=jHRVlZJHTSlA3tTuDJweIU6ccsfbLQCokZVe4k/ckWnMyEmROmhvvZq04QFH46Fi6BFhOqlymbtMegZ95pO6XralLrgs4m9Gg1eGo/DcW4MpxjsksCCUC3mmomBvx7gxExRvox4zWoqf+KYkrvHGTEKubyP+LgrLnfyc/snXgVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776251854; c=relaxed/simple;
	bh=O41Gramwzb+MbMT2vT4z4w/JGhjK9ZBzKdgPIsCxSgk=;
	h=To:Subject:From:Message-Id:Date; b=Ab6qVXhgtn+0AxUfVoClRJ1cqwEo0/M/uB/E1MvHS8wRXaAJCLqe5IRrrTflUZum75wYKV56Sp+SN5CRO9uzab8dEYidF3CvpoXp3hEZfyPzVhf9MpfKaDq1IFTm4pAg/jSYMXACGKdWrjGWaPUyu6jl5z62WSGWutUzxhHfhew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBr1VqLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBr1VqLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6F7C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776251853;
	bh=O41Gramwzb+MbMT2vT4z4w/JGhjK9ZBzKdgPIsCxSgk=;
	h=To:Subject:From:Date:From;
	b=JBr1VqLkDVhe0s+SXJf5VE+gw1kBj7PUQxrFPF1LnTcEKmHXK6glpQAjH9EZq6a/K
	 BzVV1TYaRGr8AEZEd9Cala4xtQsnQ3oXKU+YO/aCnerWm60n07DOC9U1rcg/VWYL4v
	 NKOv6KeD8QL7pKMVKlDJMDQXCgLGRzZIM0x74VBqHXRCvfIMt6x8xJxP5nCQkw/LAe
	 YcQ3yxABsQv8KT53m//RCKqEk2Qm82T9lZeUIaSwWSR3RLXCEzC9mHaRvzjK29412b
	 5EpE242aIqntHC9Jzknf5itBXX43V3LY70x1x0e+fVeN/Tei0U6baYiHmdiMvEz9uo
	 prTTy/cfA7Zpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F3F4198B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625185368.12203.13310912692195144276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa60d2f3157ab142b96a196bf8671d75ed7b434545af5deb4a593aea58f0a5a1
Date: Wed, 15 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776251853
