Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9A6528441
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790877035; cv=none; b=jmwPZ8mIJtKCLe+EXMZoCb4FdZ+ph0KkKZ4CT9Pdc+i1mtuEWkuthl7v2LQ2GZd6ec77dScQ5KXmPbr80PO+Xi4FVyLneQCfg1yR6jGQdTWRzhj4xHzMDcyaHJsG2cei+zzKV51UWJeYnrleIhYR8jKyjkKjcbMhf6iLOsNeSTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790877035; c=relaxed/simple;
	bh=VvZxthM84bUwbTtzwFAIZkyt4MkkQgRo8kWuPTWuLqI=;
	h=To:Subject:From:Message-Id:Date; b=p8Yccdks6gX4QI5HcjxDZPAMNWE3LuCxYnLT+Iz5FoS1ORBgrF5ItUCvxhEyl9KFEQB3Ia23UfAF+FpZbayC4e+XaUH36ImRZ5E1OFHF5BdzuV6ZAGhH37uLukI/iJX8BbOhCxVTbqPHZh07HxoKH55WtdpJHLdBaJHD5+s3Cm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi2a9YR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi2a9YR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D656AC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790877033;
	bh=VvZxthM84bUwbTtzwFAIZkyt4MkkQgRo8kWuPTWuLqI=;
	h=To:Subject:From:Date:From;
	b=Fi2a9YR+Ne4iTOKhSP7zesErW4qAtGpbEfrG2QZ1mzjZofm52SAN1KXa9zj0PBsY9
	 DWJwPqS+6FrtfVyPCUiiDT7GAibwTWdHJT6Q52ZIOghyrC8h6DiIGBk9Qm8VS84k3E
	 kikNsbZ6pwTd7jqrh69MXRWciSeuYgqKPH+QllG+l0oqXddIkCLDNSE+zKM/OgS9O1
	 vFsUvdO5SZnRjUe+gxskOx1b5LHorjDJMT03rIz2ID94fvG2GuqYqfyIQA1kdh23Be
	 xwcdMERZZ2BNtxIGKnB7KpQpOdhN0HEkei8rouoDkdrGnYWEuYTRkp/QhwCHDBIQ2F
	 CaGsXnqqn86+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB0CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087703369.27620.5546165284007722928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f2526239f3c4b4908332a0ba7b0e0e203b8e57a0eaa06b25d7625dc714daad
Date: Thu, 01 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790877033
