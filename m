Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E862905
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744272594; cv=none; b=R/7nTcTMxt3hBlh9o+oAhTnNMVMbpEWG+sYDZ/2hEb992tWJ4e1XLcgP0yiKCoDjz9om3ZPqVz9C0dwvKiaGn6tFDw8wfXkDu5kFBzY8wZQSDUh/1LKQpyGxKl9O1z4V7ubNb+M+jYy/LWLS3wqvGPs0JGPgUGGEFfbh0yWbG6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744272594; c=relaxed/simple;
	bh=ses4qIjJLKPrs/6GiXEH+2/8gBVf0q0Qkks3ByRb2Gs=;
	h=To:Subject:From:Message-Id:Date; b=tMLob/4kxJZ+kDbcEpem0qVShjD0T2PMtvds0mO4HkEWxJz45CfNoAY/gdf+RqFTFtQg5UB2GWsY4vlLeEF+FctedjGkqmxg2JUnaGBedrRd4yNYU/WiWvwHiIJ0I2vs1XCizgTBAMvB/98msQOOhE+/EafNpPm/X1ht+l6I4D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNU6a82K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNU6a82K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5794C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744272593;
	bh=ses4qIjJLKPrs/6GiXEH+2/8gBVf0q0Qkks3ByRb2Gs=;
	h=To:Subject:From:Date:From;
	b=XNU6a82Ksz9c2bJO044UMm2ol6ssD7x5sHUSN48/0Ab5hjQ6ttQqQPnKXtkJp+zbZ
	 Iu6q39vy6ECK4O0ebvbAQFZAPsNfp9jGlkOXd1+ncfzqZMEB2pv6qMg81KgNtz/nKG
	 BiZMNRsK0M2KvA0qnEzACnt6pgb6So+4xSTD6L0c6fGnYQMnYEZagc8xIuyjftKbro
	 xCRrLgQ2nOVhMde4aLSf1tdFsJ64GwAMVvLGMLGo4I03EWBTe/rJWU/BwnQc3NPdTD
	 kSBfhCxzCvcjKOwJWbo94OtkELSPC0QAxna32HuvNELvaVuLcaaBhe10mnT94UcGl7
	 UjmfbD9pshvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A093BC369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427259364.14384.12970139049929341537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793a2322f04c14988587fa0b3361be5be41f63fe03703bd2f0680120619a2e13
Date: Thu, 10 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744272593
