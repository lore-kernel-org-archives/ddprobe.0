Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC7A290D81
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763593314; cv=none; b=iNMSL0x56+/Kl0qQk0F/8TrFf0cxqZlF604EZu+LsO+U15M2niYaCtR6sgO6dmAMeAUyYUz1SNf9fi/Moj2xuidDW37zCv347KCqQk2sMpkAvbQWU289iJm8yp5nRuVMttG5h6J0TWvd9B5O0FeVFJ3x9hfITnszobAUWb/OMeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763593314; c=relaxed/simple;
	bh=WF7nXSxKlRifxphi39S9a3wzgxq+jZGe4bOiad5kjzI=;
	h=To:Subject:From:Message-Id:Date; b=YG5REONAcDr7ubFtmPgA4hYCOZZvDqNT5r2Fl/lP3zoVQ8UGU4+x5eacmC2WdUpu1slmxoFj0Mlr9CmEOcbn/ZyRzMabaCqK8eSrlYR9mQ8+BPK1gtK+9q2P618zg5YyKMQvGZj4EiB61j4rzNB1j9rL2d3CjfZzVYsD9aPO0cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwrcD69w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwrcD69w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4969C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763593313;
	bh=WF7nXSxKlRifxphi39S9a3wzgxq+jZGe4bOiad5kjzI=;
	h=To:Subject:From:Date:From;
	b=UwrcD69wluUV//hZrc6OIfSLloNT6EnIZf/sRV2W599KezrHxU1LkMUcRauZ99JUP
	 fpC6ZW2UTSTzM0yCRkBzOAKcTwg+9hQuFLLr8mQrqBLRyQcIdtpTrLrU4NN6Cg8fQZ
	 jsicDYkD9qVYDc54Yypb2xbWPPDccGssmR1APJi59iBKXR2WRF16s3Eq7kUrheSIAm
	 6sZlocFsOnJ/EAq4KbpbN5omKhK71rXNghL2ufqKKz1G1s4znI0t174/xiutYdVlb0
	 ERUsM3R72y7BPWXPgRIuOLw7otUo/5qN40TekD8XZXQ4LuP5gv0B9zK2mbXk38B/aI
	 rrfJmPHnIMPWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B19CF648B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359331359.18922.14198319928055758811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46af2c80d5684098261c8f6165bcd26af9dbdf2b58019f696dc00b627faf3bb3
Date: Wed, 19 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763593313
