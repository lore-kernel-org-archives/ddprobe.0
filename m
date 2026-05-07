Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4938E318EE6
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778126854; cv=none; b=Oej/9p2o5NxvBELRv0AWiJg/WgwahUtDHIob1My1shwlaLq6TPKVneJHx7pfMZDKz6AZTc0VqNqsggV7T/vbbWuPoPJ1Tr94KlIPw81aEwrkYXtg/mKBnbtHVdEMUkMVLORc8YrJSE59gN8UUtVKNfHNtA8NKpHL6KZvvTTVkfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778126854; c=relaxed/simple;
	bh=58ABOeiEn2fib22uJoL0NcnSzfTElcGzS935DtDobFI=;
	h=To:Subject:From:Message-Id:Date; b=ROY9+dALF/zfXCLtlPIq0ZIOPy9gjL0SZLQcge9X4qKx//hZJLbNeo7zyUiH2JTcwsoZY7k88a9d0MPAgs08+DxYk5dY0u9a7cy5O1+/X2aIJ/rYAAXRI4Mwo8PUq51SXcx8wwtZe4ZcVVuiJMWcM31fbNKBOfh2H+KDkiWdxeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niQwWNuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niQwWNuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DE2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778126853;
	bh=58ABOeiEn2fib22uJoL0NcnSzfTElcGzS935DtDobFI=;
	h=To:Subject:From:Date:From;
	b=niQwWNuoNE5qZJ/SJmMuHbZUMxuoqrWeA5kEl71gYVtPYrrDQQiiPFGebgku3fHyC
	 Sl0LYl31ZyFJx3j7yELpoDWX3zx5xmnBKthFCY3fSw7ZfGQQpRZ5LWApqnx1bI/mfz
	 xQsM1ddzsLVCOXlx32VgKj4fvooyMGVVVc+bOj7CPBiw7SMyv0IUJt9iChk++dQFTN
	 wJeLlMZJ5MKjmAH1NqopWJ7PPWzbFSrSwr42nMj5t5sIF1OtyJfexntzj5lpRGbojk
	 qotEQwEXZjIjmLb+f78Ya8q/rF9dW/20hOw+NYQUtEm10ibVUtNW+ghEWWxF1sf2p2
	 a9L4htxZ4Exyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECFDCD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812685369.3089.1426212774238547760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb9c4577ca1d650d88c559417f37c52d755a9429b1ccb029a5fafb6920a6e24
Date: Thu, 07 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778126853
