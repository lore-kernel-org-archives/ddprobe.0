Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A61530C608
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775466334; cv=none; b=rs4VJDZamnh9Z+zGVu5fMwoEHGb+1jUIIUF0MZJuMOQd92LJKZoaGrqTM6qeEW2TL9KQefkCFwAzQGUDibZrEY5uIFed3oDhXMEFhKaE5WK1C7by9JE7ojHOG27a20zypOe3A1b5QTL3dmrQCSwBIDMhUzXv+YfmPuozsfKL7nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775466334; c=relaxed/simple;
	bh=it7xun68jf/L0RA6wRF4sF4JhArQg+//bpcp6cycyJs=;
	h=To:Subject:From:Message-Id:Date; b=qXGZTl/EKnsAeVMvkaoz7Z9yE7Auzuy6ZLRNJnp5KRAUuG1Jt/wEdbLTgLbi7BTI25Nn7XVvr0TCqAn54Y1bBy7uGJVuXKYeWbEpHsqRnmEimxR4/KmaJPyBPtUgUcWDZq05uMp0HugfJJ6SP9YgNNNmekAKByWg7xmumQl/v04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQVVUaOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQVVUaOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB4CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775466333;
	bh=it7xun68jf/L0RA6wRF4sF4JhArQg+//bpcp6cycyJs=;
	h=To:Subject:From:Date:From;
	b=WQVVUaODDv0egLFFGf+899KfHb0aC0CqkVyONsOx0k6ZRQP/8J0ukXXuahRwtyJC8
	 6ANLVRJQz+Uuc1Mk1kT7hedql2xbOi+HMwnua6Hk+ckgv2A249yBRFkv5Tbw/DMvIp
	 NZocReAnk95fBQ/ajCuQrDBnXCyCrQlI30bjUg4Qm2GQr2qW9NSI5oRI84L5zvpT4y
	 38xZHRMRE8v0uNzsB7sAwNL3VDx4sVIu9fDjP8082c8OB3zOxkApNFnGg4eUo1bzUR
	 jUTQ6dy/Z3MHngh6NAoSG7dIriBFuYf1PAcsnUXPeQ11o0AYdwN95JSq01bQ3L7CB1
	 ldB/69Lv6tqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA142EF4EC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546633368.9948.10195902094495727188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9326416f5d9490615e3bf592e8f8f6006befbe69d0643eb13390e60a0af8b4
Date: Mon, 06 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775466333
