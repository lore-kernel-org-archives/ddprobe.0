Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D864399FB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785510636; cv=none; b=nrjNqlXPn8xVog596y7j+O6L4rZTZDUVbQX5jEWVgSkz0k4bVU6CdmrwAadTznBf5Ji0slfm9lCNQ5n4RTqogkwVf09pGjRfZg0K1nY4zpnLDeeyAIUHuynQQq3oPhHAF9muQzadkQbJTwi8D1HbFlKqLSbMuu6MeZ/9LFmklAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785510636; c=relaxed/simple;
	bh=EaXvQekVvuhdV0axNfe58ee8YtHJ1R6Kjr408/bqsuU=;
	h=To:Subject:From:Message-Id:Date; b=ijN2FFRX6vzzgigkbUVIxGXcqLXWoyL/8KnMU/A36IKG17gpX49DyxerxEv/YUDg7ao979jZpJDMHVwyIIYVBkaIkPJjYS52hJQDATJibMfsUyU5ifMRidpgp6eGbi7CWSG2oDVQ+HfSU5kwhEMmB8FZwT019VK6iyurAtXvtAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEGiBucs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEGiBucs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5EEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785510633;
	bh=EaXvQekVvuhdV0axNfe58ee8YtHJ1R6Kjr408/bqsuU=;
	h=To:Subject:From:Date:From;
	b=PEGiBucsNN+DYfuhR9/6aNkCpVHRPByJZDlhrIZm3zzPUiNnYivEb8NCqqdtFu9QB
	 AOlm0fGU6zWQtu9A4/t4eZS7k/6NfbhrffV8VxJdjnyy8LZper67ujOJFgcK5z+pZE
	 L7zcj5ID0NzXd0UAMmRwJeIPvl4HMnim9roVepzCAJiLREMfVavrOiQ1ewm61OYKht
	 9ikPdRmqOTfp/CLm30loEFuuC7TNWu+05WKaxmZSf9ltREWJyyd5/i8EHOZVsjSDjD
	 eSj7IJH78kDkOWAYJfNYuZk2RKUzXXMUgZvXyJEseH66V70PXehBRHJjQDIHxfOA8T
	 TznTIgo8YQ8pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACFEC5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551063369.19869.2356558335377404493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41a2af892bc9ffff0c9463bf6970adb689650a90e1a00fc5b5d1b9299cb8a2c
Date: Fri, 31 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785510633
