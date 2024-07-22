Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F9D2581
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721610354; cv=none; b=aMTluvdufj/GGfvj51EOomRr4sGEqq8+Xiy3iC/KetFRHAeAVNHRBOVuhMRfO/F25O6c7xWRgsXGFaBBbT2Yl8tgwXDAm5nUAphis849SfTPlM/HnHEEJPq4VY2k/S/jUP52S37rRx3nxG7GbQOFeiLeZ8VwFW/Pz/eCeIqxC4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721610354; c=relaxed/simple;
	bh=7hm9BevDgaYZM9up7d4zHnofWsE6kHjoVkoipNOSx5U=;
	h=To:Subject:From:Message-Id:Date; b=kqsBB8TmqCn2KIyfwzfVtPSJzoKISvK0YCFZtdV5XGO6xfPZrZaVdddaAsFkDKajqTnlDukbYXcxsPcO1O7xDuy7zySivyv/rhl0qCpZzhD83On5LSkBWVioEX1dSQYE06eKwg4Id16Y4K758vhT34Jpqb9G3Yf+sTd3mzZy2dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4qawkmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4qawkmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30A1C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721610353;
	bh=7hm9BevDgaYZM9up7d4zHnofWsE6kHjoVkoipNOSx5U=;
	h=To:Subject:From:Date:From;
	b=R4qawkmNNcBrpklVTFn4ild7X8Z5Wtwj0GvybOrfmAp4FnHg3DQlYS83ZOtcXAok4
	 +FPXKVvneQW6LRTfnsdSKGdi2tS1AayKrPSXsKCua+g1pAXapzBQUJF+jREccu+uWE
	 aapVXwkzuz6sDsGdWGpaZfeOUqEMssrIj2QKcH+nEURcqIvRM79AEJ/NIu8DgtWnNd
	 oC+9szlOQdjiobhUBas8ZfNqw/UBl1EzovVFw1h36GtnzUiGaNYno0NCupYgQiEI0j
	 oTSqcpSA+DpdOZIA/7o1B64I28AHruGFO3rp4Ne1glN/MTPfLWCXc2QDWbHOrpM9a7
	 51+HjjXhv3Wvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3BC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161035358.18301.1946519003232387770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72ecfbd9796b23a22673872afcd0b2b5c8da47c9149b22f516988583420e33d
Date: Mon, 22 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721610353
