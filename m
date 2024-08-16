Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EB217C61
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723770354; cv=none; b=L273R3bETeeXgfXkEMNYk/7R2iPJ6jxRyCkAYqhiCx+/sgDQjjEhwV3MrtnBw/VPsB+IZ21manr1/vVkrL/rOnuoSFieE+0D9Fxs9rD5KjhlZ6ujlDNOUoJ7cs+RJHktlhNfh7bZEB8sM/7QWE1iljzHiBYdZ2C09/FMptDnBf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723770354; c=relaxed/simple;
	bh=PmKC4wVoQfwEOKSoJIsdpqijH7pYSHvSLiSZKz7+VRU=;
	h=To:Subject:From:Message-Id:Date; b=L3IROREkXsdMbz32KYUFJXo48ohpR1qAWWEIt5a1siSPnr9yMXt/yt+UtJ3OrTbhoJGWFL5G89IgyS+1KIkf4Cr6u8Ei9OLLfVL7JK6QoFtjiGgN/xNtYPvIFceAp5PcXT37Pq1VRUJDsZNsamJnVNRE9/SlepX5rEXRnlqE1QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhNz835H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhNz835H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7471C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723770353;
	bh=PmKC4wVoQfwEOKSoJIsdpqijH7pYSHvSLiSZKz7+VRU=;
	h=To:Subject:From:Date:From;
	b=bhNz835H2Qnw3b+4gUBR7dCl4TlQaLBxxekn7VLeTU/0bzushNCNOgVuJ8R39Kyfl
	 j7JBoQ/H9aaDK5ADhim/m7SyRALv/r3cdx/BM1qGjAWzSNZncJlov3ef2C5pdhcL+g
	 tif8NLkUP8vATqzplQ3FAwWjcs1XwEoH3qYRdb/6G3ivofgoqT4cTMjsj8nJFoV3KU
	 b0wBKnd0UoW4WfCCExIZuqn+jb+vE+JgcpQD45fCFJyj+DtIt7S3HgdOE2V/E/6e+A
	 IRkKnrQn/HmvQ1U1k7XX6UurFSOma2q6/eXUgdHZ+hNYx4q9r7gPVUd4bsI1++a1R8
	 XDhjCFe/yv6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98125C52D7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172377035359.29845.939789309657581529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d5c32e512deaa66baa1dc8ef7479e16b4fd3bea2be325296f6531fc1b723cb
Date: Fri, 16 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723770353
