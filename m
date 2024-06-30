Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4749D139F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719734663; cv=none; b=dIXFHoJ0pSvH1aAuM9byH+l9qg2OndpUaJx+LLeaRquskl8yAMiN9TkRJmwE5IXrITsiaKMWqpjBeozlzHqHE4EXmBMnrhQhUkG3Irs6Q4ma29P0E09OnWvJqVZMsan1dGTTwwi7hJPza/+qfIdzpxMRlW4n+it5+dzf/Sd+iBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719734663; c=relaxed/simple;
	bh=TJ++SPOWEzlAONa3e3vxeUYNoIoxA6LmHzwC3hcXKtE=;
	h=To:Subject:From:Message-Id:Date; b=UT409m8lyd8nW5lk4Opsu8lMGjDF1wisIWal+twCc8epXrd+tkphuwSAschZTRvxVS3HyhZKVud/N7pN2H4yZks8K4fdPnoo5LHdXc6PKUq9KlI8Va8Bs34f2xx/SlZkpThZFhOjyCr4Xq/mH8oeR2BVpbNJU5haV26VzS63qwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNfE7V7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNfE7V7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E57DFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719734662;
	bh=TJ++SPOWEzlAONa3e3vxeUYNoIoxA6LmHzwC3hcXKtE=;
	h=To:Subject:From:Date:From;
	b=hNfE7V7niuts/rtbNpjeaDNdSE9+v5I8f3oJiYGPrxzVmYunP4EQqnZhekIgZ9lrx
	 5mK73ustNKqW1BA0dnKwbqDlMG3GfIUEVnx+avADA3dlytIZcCiRf+CyzpPq7d6Mdu
	 5Ix1NG0e7/QDFDojlQtVLsoEAryOMIkO+bTtf/9RDF7RheNBEmncchdi/8SNuHi2O7
	 Py6cAx0pwK0/6zcM3xfEZHgqq1fk7vRIB0e2ql5X8hniUU0xXSJHxFlmAhiU5ACA4N
	 unrLDK7jSFFOijRLj2Vyvz6qnUgdi9HrKwqNI75NdBdCs+Stgg/c5sOygENqFfhIP8
	 TbqVuNHcYqFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1BCC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973466280.13705.4250249304436217260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc41daa0952764c0ea66af1787eed31a4b8588445c418fd37ce005aec480001
Date: Sun, 30 Jun 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719734662
