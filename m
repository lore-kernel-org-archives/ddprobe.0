Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C9242D9D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776132454; cv=none; b=eprjSVLo9GXEJPY74Ce49LN4GI9HNpywL9ytg2dDeFex4hvMhLfc3DFeseCL4PZNj86d/SgelkjAnranebmO7pmFdSfbBukvhS4Kn2ziI2bVv+KAMnXVjOheJIf4BPnhQNRVo6l+wX5XR+zIkBW2w/+N2H9hxEqdT18aO3Ja5E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776132454; c=relaxed/simple;
	bh=UnguSbCad0LdSZJ8nEuN/0zUqT7O2Dd9TngO53SYvGc=;
	h=To:Subject:From:Message-Id:Date; b=cgLM5usd4rtJGauQYSDeCZ2iBPFmIRk0SaaXFqULmaLDQ9GDNffq37sVmIgehRmtc8dIUkjoi7DqTLwPRUGiIRCJxgrPMhVEDsTuvFVGUjYuqBYTS93YbGYZus8LnN0oFu+rD3GjhvwXnbyuM374fUSovZJEXQA5nn/9xhc7K+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KS1nd86s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KS1nd86s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A0C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776132453;
	bh=UnguSbCad0LdSZJ8nEuN/0zUqT7O2Dd9TngO53SYvGc=;
	h=To:Subject:From:Date:From;
	b=KS1nd86s04F0HcyceGa6kJLhrpqiAKS3MLNlpErfkzgOkIuC/Mym5/oBdkl9eRprP
	 qyu5YnMiwEBPMSwbMdBFyEvyJBC4VsVHgK7DfXEFClDll3sU+wK8Aw07UM2zUam+ol
	 rNUlUz7QwCiSlLS3nAl6sJ3NpbQ/vsLcACAFwIz4TKlB5yxNf/XLvb4l9wz7pDoxWV
	 NUxoM4GE93sZp9gv2EuCKjTncf6MBAS+pHBvOEnq55/lDAcpSk7WXyz+etOxeJw9nu
	 ervqn9Bz47PeAsDUsIoNwJgyxi4M7hHdW5BFkAlv07Sy37V4VAGRCe+u6vXmBIScyL
	 5UhrWzKHu2viA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB1AF531E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613245369.11157.1660028725212623525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90d8271512a21438593d2b9eb34fcd67bdbcb1cedb6c75b3a45e6e139c1e976
Date: Tue, 14 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776132453
