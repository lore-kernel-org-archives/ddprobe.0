Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487631865C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727486754; cv=none; b=JgR9V2Q3yKfvKvEGSOnfCMh5Dc2nCBFDfjcZJHgD6XFlnMNe5ym1+NSR/G57pYxXQ0KHQ8OuBq63nAtJ4m7LzUDgw47iUWcL3YNfRp7BIMFWJUsC4AggNfe7OVAhEOhScnsJCH02tw0RIBEjumdnMj1V2oqFZ1RHMBRD2xm0Blc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727486754; c=relaxed/simple;
	bh=Vtd8BVoVPSdqFFabcvk8HNtVfA9g7Ss7Kizqs6/kb6w=;
	h=To:Subject:From:Message-Id:Date; b=G84O2np+PJS7qjVteL4qSETy5KiIKsJiGgYKVMAlCEPJpvVbZVqvNVSKC89mIsMfKM68WBN7WAruxO+xbTRX1u3/u/U+6S30MMCp7B/qZyiznmVByOwPWCLAsvBaWQ+cefyLrCdBjaqitFUkZ3ypxXsZ9gK9NNBoAHfuN3A3CR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXG+zeD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXG+zeD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE552C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727486753;
	bh=Vtd8BVoVPSdqFFabcvk8HNtVfA9g7Ss7Kizqs6/kb6w=;
	h=To:Subject:From:Date:From;
	b=AXG+zeD7tbJB1DYtzOvQNybIAQK8gu40/zxEml/4smdRgjmplPrq5N6h1NFIR/7wv
	 NnSQge+gm+0PPwf156pXHO5qbs3fp0xY2rOKgDldZ8lQ/cHpp7OYcrhEtzmzOvbg2N
	 BlWbgw+e4l1SyGIxBl0jcbCW483rqgU/W4c7Y2lE96en++duG1cYX6sXPXOOtw7CZ8
	 aTlruAtALb+wrqWSm3RskNIx9//0nkITxIDtVUDNNuLpg/lvau0jMrCPguO8GyyBrf
	 fseeX2qy4JPZu0pOW4MYs650dZKPwLlBrG+BcJnuCa1yitPwj4sEbWAosHyv3I5Ded
	 U7Fxe85yrtSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96485CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748675359.23031.8582134206716378638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e042c8e105f788cba9476480cea633fe7032e8e5b085e87908ea05f4dff6e189
Date: Sat, 28 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727486753
