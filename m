Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329CB2DFA2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768590834; cv=none; b=Dt0BQpeHOJRrnbB8kGf9RrD9PMnNXYd6bUe4N7/3nyq6goVEDoCffW1f2mjYunJ6KcWJ5/mlsgT0yonudTjmwVJTRqzioxdgbVafQUqpaZp8HCPtU+NSpgXcCqFP6WQZz4dpJ7H5qbG9ABVPYHW9TnL3/q84MpjV6lrNKy7NgN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768590834; c=relaxed/simple;
	bh=8Q5jFl1cN424dnSqPdr5CagXRYrzQZRkhI2am5OWZdw=;
	h=To:Subject:From:Message-Id:Date; b=PGYGjjFwinq+3t2rnTp/rfth11Pvuie2anBOhmPobTEHlIIs5Id8RF3xycqjRgDzJGAfr8m8+Go8drXEV/4yQqoNoL9R2LG7edkV5t4MWstKl+17UjwmYRmIsyQqf/xhZ+gjwh4MrRFN3EUPUPbHQP8MHLMzpbvm1QisHJrW8rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX+DV1o9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX+DV1o9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2428C19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768590833;
	bh=8Q5jFl1cN424dnSqPdr5CagXRYrzQZRkhI2am5OWZdw=;
	h=To:Subject:From:Date:From;
	b=bX+DV1o9XxYUv76v2mXjeYxiYgZvFqLs5fw/Z2eUoRHxpQuEEkdUm1LcQHytSNQQU
	 +GM8ghqdpAcaJwKbgk1LnL74wWK4UH/WzTkhR52OhAKuxu5brGqUvrAYJqKC0srK21
	 yImjVqsHknUi4VFz/73PIfbBZkIVhrJsVbfJKzs5A28Ti/rQMKhQlEHcjl6+5AcT7f
	 Qp5YycXs8+jWjQ3dQQ17mfeuq5MldO17jXZFhBl0blvLVSq6XtLcNiNWliV/J5qEHt
	 c4IqQ9H9ET7pjs+35KK2c16S7WJILIEm0eit4n1vaRzRvWlWFvmbPeV7kLW2MSjre+
	 8utM9pZRMYZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C720C982F3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859083363.22409.16923456039834174007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8562802a103ada537aedfec21b8b8d1e11a3348948ccaf7ed909a038788eb3bc
Date: Fri, 16 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768590833
