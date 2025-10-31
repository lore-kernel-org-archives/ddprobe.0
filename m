Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3658530F556
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761900594; cv=none; b=Y2+8zHIS2WG1oVwDUyPpau+I/H53bW8Mh6H+o8vQm5SUpKgohEbF4bfRNqxFwcm8UwDjDmDjNyET7KXoPM39aFrzKq32vcjn7y0IV+j49OZTk8ssfH3T1Dep30LWNKQe2yAcbpkkvP1gmXLIv8ct8vlimnl9aWnO2clIW29OlgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761900594; c=relaxed/simple;
	bh=qppRTfCNM1qjQwdjCAyJlsXY6hjaUPOlBLdaC8A4ExA=;
	h=To:Subject:From:Message-Id:Date; b=VR222D3pWeLpzSGxR3bButhc4NHNrYvCJ67FjokrKitPBm5dLshR+5Bd4x/mgdrh8RlhnDhVmaaK3g8OJw52Nazwl/PtHCwJHZyE4bftwzet+63lLULi2SA1+8MDEs45pRpUxUUcVcTvLUYuZlH9g7VT2h2/2Xp7i2xMecsrhtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwz/DdH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwz/DdH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF94C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761900593;
	bh=qppRTfCNM1qjQwdjCAyJlsXY6hjaUPOlBLdaC8A4ExA=;
	h=To:Subject:From:Date:From;
	b=hwz/DdH7I7PNd5lw9O/5CgOavuWs/l+oRIQbKcPyvE/lo6A+mEg6yTQ16LUxnQgKe
	 56dUaerHtvRgigPQQdwkac8lhBxyuos6E+xK29/8ZANyDboCjE8zpXlROyYdKgUaPj
	 8sUpPPYZ42JXgqJ6jAHEC/Zltt4sS0ZpU853N6RrMu2eQNDqk+iLkZckdodWavjnAg
	 d5vEtNniKTlSC3NgYVrTKTJOXNsUmsGPMr12coytFRP4YC9zw0R6HwNVReC6HVszVE
	 Uo3vGHX+GNRlSYvz55bfrB+Ab9K9WzVBzrFfVRDC4zjc9r4jFDQur7H7iQjjZIVAi3
	 mMvF1LQBfYnTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDB6CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190059363.1269.4056535588553198184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b8725f8dbeceac3a31832d42fb30bad7b8cce5b41a08091d060a1e9d4a2b76
Date: Fri, 31 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761900593
