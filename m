Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3C43AD50B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780412674; cv=none; b=kBSgvLnetlR+drKXgnCh9OknGq1gr68Un2mVJjHq/EBe4rmeEMsMTSSPFKWhz2beSH1Fld6OsrwDnddl+oa5H/MVwgfUnPEeA/65ixNiLRShF4NSO4Khi5RvlEsgABl+n+Tti8yvNg40E91fHYm7eoEUteA4pUYZ8K7di1amBBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780412674; c=relaxed/simple;
	bh=yM8zWqzGDSuBZN1vzS1OYOBtCfAUEfHmfam6VNHE38Y=;
	h=To:Subject:From:Message-Id:Date; b=sZK9/TQja9hDUpLBcI8YAotspF4eUwfVLuk6zWpKML+YgRxyTcz2wr+c2VoFFb8mSVSkP6XEuHisJtqofjqnXk+ZhSMN7EL9eoh1grfC2fsf68xVBW+f4wDuIoBFkj+j9gkhVqye0NWS0DYo+38GyHCUJVWjvpFlrD2C9Y8ww8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIufxHoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIufxHoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5403C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780412673;
	bh=yM8zWqzGDSuBZN1vzS1OYOBtCfAUEfHmfam6VNHE38Y=;
	h=To:Subject:From:Date:From;
	b=sIufxHoCTcVP6hFol8RRqGspXJxkv7kYhfvg7x1DHmqw7CaHyUBAPHb2moJeKwtTC
	 IB8drSAYNdPgj9MRPN9pC+66lzho516iTAv6P3LdktknU1m8UA8n9opXUAbbzWBfdF
	 AxMzCL+PHtgcae9tiLxgVIjojLtpXhl74GzYoGUw1AOT48x2nYFU3k11MOycw/lJFs
	 5t/cR4RL579T+GezNj5Pm0C/wlkC3nJpKpnE+XgeE9VS0v4oHyUSNxEwAhnlSD7IUU
	 KHz/uUioTBfx1KB4/xDrV+a/BSYMhKAxFjeoP2Wuq1PojA7wdQtXZ1KuIumVFlfmgf
	 1rB8k1G7rvdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74F8CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041267373.15760.10952057289745823646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9451e90281e1a809fa68ca1bb54724f2e2a5ff4684b88c8467186e80578a49c
Date: Tue, 02 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780412673
