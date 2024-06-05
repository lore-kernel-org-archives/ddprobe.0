Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1006F4778E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717598843; cv=none; b=IEVgrWb0qHMhsa9/F+btIM35LLFkgNdo9dTx26scKdjK1y1/zs8PNIK8c9zplfnewAlMpEDeX5XQm+Eo2y8wpfXvLiBZz3CLVS3yyV+j19MZgN61ueqen7U4tJ2F2jNFuAajZ4sjciTpbOTsym6NrgN/ZJRccV3beg6gERg3pcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717598843; c=relaxed/simple;
	bh=O6AJHxPS0Z6GsYjpD12ajKk//BRiG5ZYSk/5nkpN7GA=;
	h=To:Subject:From:Message-Id:Date; b=fMXooKejOozAeDsifOfSzhA4u+f+nYjg0sHtLMZeYVcQ97z+efnzdgGo3IiQanQTJ0kzT1sdQt/XEJsZqtzauHWGQ5TyKb0GPaZMoBCotDnTF+P4jyQVWc7/CX485bUjtumOilka18rDLwL9lbjQzJmDFPFrqxmJ//46G6osra4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvbCUqWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvbCUqWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1B1C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717598842;
	bh=O6AJHxPS0Z6GsYjpD12ajKk//BRiG5ZYSk/5nkpN7GA=;
	h=To:Subject:From:Date:From;
	b=FvbCUqWwl42VoLZqp0QIuc2IW777x4/T8r9F8PsIvPYRwZBdf3spgDfneHBMpcmZt
	 V6BloD6cp4/OkCd5vVX/ft3CJAFMQIqZdZUKl/Ls72Uu5D7+bqKGrsGZqeA+6oBsYW
	 je5RZ2mis9UCoHo27HwdobjwF5XFx8ch7b7+7FnDE3xai17kjs6Xpgqgi64MpOqu4G
	 iEF+mpfg0fdLDX51h4NOZ0rC8ulJLeJFxhdnNT9z059CF4D9aVvVTZiNRDqpMCyJjy
	 n3vO8S7K8rB3V7EmsOJeTCUGl2UDuqGveSJPW/H/egMWKaA8zeV96KHXZa7luRjhEB
	 dt6WMO9IUPDEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBABC27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759884282.5514.11818332073361849480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efad84facc570ba208441a3506d475382e06a2aea69b3ec8ea7e288f20365cf4
Date: Wed, 05 Jun 2024 14:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717598842
