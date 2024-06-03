Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6294C15D1
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717378523; cv=none; b=ZWR1DzhGiarPwNtNGzaKpa1BbIGfSfmMBBbmfXvRE3rIDeABFuhXPFYWFYhfMD+mSLHHo8BhqjcZuZ0jhgmjSHpHNy2DRYR9mQHW3kcVoGdtvHQe83xOVQ9uVpXZVkWMjCLTUinOop6px7aFhHAoVZCWXDkN7K7cjWIqSvRkjLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717378523; c=relaxed/simple;
	bh=TXeDw/ULt+4AAnXTHkCbhmq54HqCxPtxzCvBNRzVQCI=;
	h=To:Subject:From:Message-Id:Date; b=sc3ooo5Gu8qBEx2Dj+LYnymzacTzeZGAgubLhWPcv3Fv7LFQma/YycC6gJHJzvoVOpG9RSgskSU1YLme5pVPHqRCj8ZHBFW65zABsloVK7s+jcGZMa6vr+Hbr/LP70RzIsEKU7VSuFSvTWPLFlWksyjpOML19SGSB46sofHxWj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQJDB1Cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQJDB1Cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C24C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717378522;
	bh=TXeDw/ULt+4AAnXTHkCbhmq54HqCxPtxzCvBNRzVQCI=;
	h=To:Subject:From:Date:From;
	b=pQJDB1Cbzfp8dPR3cMHKRQYR3+uSswuNgkQ8KZ/sY9hLbF997Vj5LSj455S8rn8lX
	 2hTBRmH22YNro2s4PyKW94qsmy9GEwDRt4ySnXV67IEYYg+1GWUglf/A4+TUuP9V1E
	 aZNCSYIbS/M+omLoMV6yZUSxTw3lFJUgVLY0YNOCC42FYoQfqTDWcpVn1GtIVM04fZ
	 Bd9NSbBD1WksllkNrlNS+0l1z8QtuH+2o/4mTNESukEIE+9ChvNwdbhKZjeu13AoY5
	 7j0wTlmZRBh8vAxjOPDjXUyr0x/LsUAwz6HjPLHjCPJbenjXwMk6x4E9e+wwT6zsX3
	 ttr5gcfe8AQ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EB7C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737852278.16296.13292363718127088593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e128cbdc6884f059d238879916bb2695a89acc7188f3cd678020b5d33d3de83
Date: Mon, 03 Jun 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717378522
