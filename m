Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B371684AE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725968154; cv=none; b=QY0nXkzV68C5YUPjo32rC4pmcrdSCcf/yB94ERiLTJtSvV8fxgxXa1OrOW1A1SRUI/sYCj568+W+ilF4BPTZJKW9EV0dIdu1JD2FsOe49ewkbNF9xel4UudYQ2hnlD1haQV+qDK9IfujDq9JKbVPEDKG8qkmTMWVURVatqi2Zkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725968154; c=relaxed/simple;
	bh=jzgmEq9PzU323FEqzWGUDBSS1ArBu+cIOurMwjC1DyA=;
	h=To:Subject:From:Message-Id:Date; b=W5Q/21Q7/yMWRSwzK4eRa4O5MvBKN1pCqi9j3jQVaeUCcEu3H+S9P/GKb9pYQRLzR1M8wU1gRlFNukZjoSP7ui9IeRmWTXyAo+AwrjqLVCsk1fYeOwgjwCVIursP+KqQl9749orgkJqBaeDzbAIreiy1bZktWWeax2ihwYfBae4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juEDvO7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juEDvO7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D50C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725968153;
	bh=jzgmEq9PzU323FEqzWGUDBSS1ArBu+cIOurMwjC1DyA=;
	h=To:Subject:From:Date:From;
	b=juEDvO7m8NTy5MG1h1ph3oeXbHXAACihCSZWw5DeAa1cDtD8H+jkInOqEN6FuvISC
	 HRrSoNknYpZWrhbqmjrTKxi8hGaMUgTJ+qoED4bg+9/abEVEG3Rs24xlJSNVDLke7t
	 ZcaJx+SDl5DLwwh4pwlBN5B/lmvdcNg3ibbK3GoFgWJI+/xbnDQPtn8PhPbJJe+2cn
	 4B3L9lGztQ6X8nQpUDc7gpmo5gsNvZk3mIMCaknXSeR544dnthLNFgQiKo5xSD9olV
	 2LhsixvWydtBCHzpyaYuBbIY94/QYTVrqvWEAGEMFIEFAmd+1EPxLCY+LSQ/v3SDoN
	 tFkQfwA3PsTJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39E9EB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596815361.4144.16883615640772280922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebec0d0882a3d2bf75cde0072b27774b6efe1959341502e2707e5eac687ce18
Date: Tue, 10 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725968153
