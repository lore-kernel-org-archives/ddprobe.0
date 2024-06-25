Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43949178399
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719345203; cv=none; b=DJCfcGPlKhTtmpxfpJJux2iYXUJCW/llxaR7NJwrkCiY+74nmha/uzkruN68Ggb1EA6bjHSuTb8fU3Zw51bCWR5OzKnALHBRCTdkle44IHV6rHmnZryhNfutHZtfQtcxuQSPN/1mJQ2gToo5FafoBwCBQiCgmNUbJ7UWXik4b4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719345203; c=relaxed/simple;
	bh=HKoOu+1YqMimqVpCxlB39DN8oUF+fA2Ojw3GtlDxqHE=;
	h=To:Subject:From:Message-Id:Date; b=mwVpoTFtAejyvB7j/GuUeHGUj8xwNS1oiCblqQ3jF9qY3k/eHH7sMH8eantyidYsf+rNaFFaYLGneZfkhZ4MkP0u+E4JOgHoMLEsp5kTEgXVBsO6f8yz5RDknOgJO03b/fXVItcx+SS0PfUkaHcc9seA6bq1LhgcpfQXx0x7jcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA+3D+gF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA+3D+gF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF85BC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719345202;
	bh=HKoOu+1YqMimqVpCxlB39DN8oUF+fA2Ojw3GtlDxqHE=;
	h=To:Subject:From:Date:From;
	b=RA+3D+gFER9iqob3qDsKz+TH9XYqpQSLG7EqNJ5GiY7cDZqJqbQ+tO8hmZooC0CDE
	 N78WPaWvV8NcB2CVVAOZvU87zvC0mMxY6koXzubfnqwlMdXdtU10VGd+X1TRtK0nxe
	 WXtMnU5j1uKoUpKpFHYV4caE/ReQqH08aMBkpPZKp/w1NzTU96BUjKUVSZwhxrGZxu
	 DMpxKheMEhaa1yzyFsBwwpcZBX+HWNqizTePFyve/pDlyaWg8BR6OMD1u4aXAUoO0a
	 CewYS+5P1GFxeKT8nWyTKvcd2aSaF0Nezr200EpGlT5BZwVugNZDjVwPhKxXZx9pww
	 hTwLDgvqpZ37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7A8C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934520275.26199.6977241223067274573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72aa5eea42921e99285c2ed57fab8d7248a70cff79944d54543c2e1b62b11da9
Date: Tue, 25 Jun 2024 19:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719345202
