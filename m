Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE4245005
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717603043; cv=none; b=IsZP1F1/rxoxBp6dnDnJLzY5AIPcuES8c3Ewxv7878XoTYbZXafJIWZqXZu7nyvtvkmw27LfeD4CkiKDt9fQvhD2tcKlpLR1eRnstr42S3JkxU8levtu4/59H7gxWgiG6Rtg2DfGoD4V0AcwK7nEg2g3mIykxPfc4S51fIycIFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717603043; c=relaxed/simple;
	bh=so6Qk8GB85lbCkt5nRn2wA08PwVUClDODU44FpVKxq0=;
	h=To:Subject:From:Message-Id:Date; b=Gkv5p1Rfx6Lp4X4drSvwCHZ3W7dQs4f0zDAQ7hXxnv1Ugx0VOSpEb0Xl6NhejzzA7nAsHEGIXJ6ThWe9SPMp8qbPvKyIkLKl3f+1CffScLtrvqUhSQI8n8aMCeOqbBf+H5DfNHQZV+4jHdENGVUM9p0f/hKzFbKiP0uZ6gW8Ek8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssCRIPow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssCRIPow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E186FC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717603042;
	bh=so6Qk8GB85lbCkt5nRn2wA08PwVUClDODU44FpVKxq0=;
	h=To:Subject:From:Date:From;
	b=ssCRIPowFbJxks+vb2t5nNLdUIOIj0aBRLsPgsFtjUfll8Uy36UnV6lAcvjCmS+bR
	 oRMnYi8GZ8Np9Vq62zjjDGDTpMPWK4ky10+T9HfzCYOxSZYKhGiSIQu/RDebGjhC/1
	 qOREuuZGqbiNWSKEaOaUV3XnvgL5aUb/sQIoxjsUU2Ee+eIFRlCpnpi8kYElSvnu5P
	 H+gTuIQV6arcZokFyKarvyh1IiM93OPO+EK8ukZkPA0/TVlgztVbH/ARqibat0pbji
	 Bx4y2Wib8YcElTPddYxg3cMCRNDGYS9lTxDCZOxvYfqRAVD8jIqseGrgX2gWVIAix4
	 rQU4Sf9lzpM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B74C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 15:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760304282.16926.7614943192007569785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31182f30341f2622aafe9e8479c337b57a1c94cc2c9d990a6d511e159642b053
Date: Wed, 05 Jun 2024 15:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717603042
