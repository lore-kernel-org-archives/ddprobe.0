Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72575184540
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787763635; cv=none; b=KbZqPRL7WKEm9ho/cHYeF0VN+jS8EtGeyw9t3hc+PTcMyeTvXZmFUXS7KUEzlSlrL9nQ3Ufxq7pbT5ENWCEi906IODCkChr8gsBAOWxnwMe65xlFReqkIrH1RVNZtEfGrNvFCXSZ9biyVF78BlA+YpcSGsnMJCkcDwjLkTEkM0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787763635; c=relaxed/simple;
	bh=2e8GPK9c8RMyr9tEBmtOv6lQLdYJLCkNV1UVUTf72Rg=;
	h=To:Subject:From:Message-Id:Date; b=e+Y4rFjDvd9KfsAJA4dh4pWgr6odvZWyFnBHsoHvngBVAf0UdG87qAnxxJpTDIPsTdCAu+02dMDGEhTJRsuynL78Flu8ItQbxtd4ERJA+94leCUrpzpkm49u3SR5tT+zFbvCx8WaQw3Ivr6tZCg9zp2/svrn9BOtNSAfkQXNFkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFSrjG5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFSrjG5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30EFC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787763633;
	bh=2e8GPK9c8RMyr9tEBmtOv6lQLdYJLCkNV1UVUTf72Rg=;
	h=To:Subject:From:Date:From;
	b=QFSrjG5va+Oq+tXU5VeMwANBU6+bhpEk5mABBeUEAst1WlZM9OQwKyGIyUEPxknJh
	 GvXdEQlBlFFbpKk55dTtWQold8k4QAKvHK1k6XDkEkxGiwA0WrK3DxKpqlXvLRHfP1
	 szXwRRlLJDxbFbUOG+4h5pokNWOZ+mjnt0uvyZEztcvF2qyVABxlmLPcXQtOkgrNoM
	 OMAK1XnpTDx1p0jY2R21oU/oeW7U3aLMAssqsjHOEeZOSavhjsgtGVaCyc+B5R4BQQ
	 A859C26kt3dRxTVubWY7Ipfgq3lepukOR2/9djxmOUUiq0jiSlO8LQW1UAS4RNqpTj
	 7m9LkGnnOsWjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C9C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776363370.24896.3461427370081619706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d50f775323327b0a54cc7f4e684528d4ba84422be5c6a11c31676f06fbf57b
Date: Wed, 26 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787763633
