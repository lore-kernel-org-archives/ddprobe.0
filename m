Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C56B23EA8C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774445694; cv=none; b=Jq85oOJrvudC40fwitSwSEOVyAHgj+O7FQFWG2z+0hHPuOCvIDhmGVCHnVa+9J06uCy9GuXbDjl8SmVPhDKXcDIWIUy5J/BHBMCoEyEx6Q2g0T0mPtax3+lO6URl10Fe0x1QAfYsczKHAMZqY2MkQ2ahitfHSvl3COGCbGZLbtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774445694; c=relaxed/simple;
	bh=xZmbYOVPkzOFxlieqwsAffoMuFjEAoJ4fwkTm5Kyavw=;
	h=To:Subject:From:Message-Id:Date; b=nimzg2/B+GAhBLRSFazw+/DC+MKGl6WafI8/nF7mrAEC0S5GRgx+csrinqKjqIskiKm7iBOaPcvonQXJIfGJl8JFEKaulFlm4g+E5dqx2uk93UJWS+tAtD4HmruiqWHnoB6wIK/cYSDOqb5UdjLmF9pWR+CfjXL7mGx+sbrGBD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUcLpnGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUcLpnGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774445693;
	bh=xZmbYOVPkzOFxlieqwsAffoMuFjEAoJ4fwkTm5Kyavw=;
	h=To:Subject:From:Date:From;
	b=DUcLpnGgRi0POguP0S6+3gwUYlq+wC7FuBJt7JoGnILWtWGVdGMajuq7W+MrYE/J1
	 KxIdsdHbH6qhQK3bsoUtjGdsonjQ3gtV9PDwThc8rFNy3IsE0j0sXHO2vUfUKDJsx/
	 4yjGitIUrJuRdq3H3rKIbRTKZnpFU0BibGTS/RkqcvXy79ndcTe4SXnCyJRJu3z54B
	 dnJHj4mhzeZJM3qs1Kb908WFm2tE3qSvZ55Oy3oqsoUVIDTwIzbKU28OjnbyDHYoxH
	 vNlGjSJx9d5jczjSx0DVXP8LpJC7XagIT7eeBpTb+wa8zxl5pC0JxuasICfJzO89O4
	 VfDHxfJblO7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D9106B539
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444569358.3237.15040688470360434544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b4992977907d904787c981e6288ea6a01664107c75a93c8466b4c4c2ad766e
Date: Wed, 25 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774445693
