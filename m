Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DE5171B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785697234; cv=none; b=X2qo16VU3C4B6WlxIHHpaX0o6aHN5zJ7v7k/rpcqXzL8UuU2eYOwbFZS/EV4ak9ArxYAu5V1/e94B/qIVFfTIIU0q9I0UQqW+gFTgmCRWUv77zMODFNvQb5n3fsiVP4+kDsCbVqiheSd80ew3K/Ps8cPEOOMF5BPjPssmZICw2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785697234; c=relaxed/simple;
	bh=+jD6UPIjTZS9MRx+fY7w0QwsLCtodyhYsvV8mS7WHKs=;
	h=To:Subject:From:Message-Id:Date; b=Ge08uxAHpCTAcidPfjtoG4UglwR+ZFSXr9DfXx5HWcO4B6aZJ9tnmcb9LTS0yMITY0CrgkIYCyYeva6s3BBHmdoFCiPFYytF82cgZyO84Z6wl+yHVOJEBtK+lgHuIrfskDNkzvURC6mGJGO7vT2wmHdz+wuhp7vJkK47L6jvi2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DejxCmLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DejxCmLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5426C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785697233;
	bh=+jD6UPIjTZS9MRx+fY7w0QwsLCtodyhYsvV8mS7WHKs=;
	h=To:Subject:From:Date:From;
	b=DejxCmLLsV6xI9F0/yI7sC/HD65Kdex+HNipwMml+/7UbOu9eAOpnPVmi/jrS6L+m
	 N874+cePY/i14AECAotEL221X3iZcxwA+0RRsOnJsho2XmoXAO7Ds8o76CnfWGNC5g
	 gaAuq8PMxKgiBxttNR7HsEdhzh7nc9UYXHIEe3WWcYXEdWxGaOxPBHY0dj1eWpUX3w
	 Blx8C8yP2V90dIFNHYE7qDQCr5/gsBfVF2EZJJFLRiRPCbvsxiSEBqps1Ok4ioxgZQ
	 pxibSeBswUeQ/nmhVIadH7OHnCMjHGr3oynp1xk1Cb+8HLX15pdFGUW75nnzE3rCef
	 otNq07xetpbCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE63CC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569723368.12221.13440045105611904702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d61381e0d6bf90597fda4c72ffb2f45d43adaed2a90b5071f45013eab8bd0da
Date: Sun, 02 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785697233
