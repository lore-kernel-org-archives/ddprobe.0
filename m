Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3946D19CD0B
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740580734; cv=none; b=eaxB5mKgGgCyqz44t31zcciYykyvomRt4MGyntte/iZ/GPnjV0wyZz8Eziac5Q2/cRbBoN9tu/B97RFdTJ8nF1i2t8k+U7VGkYXO05IZztfaURe2iwQvWmEJh7Nw8isXsKExFAqXPARhvIkrCSMxFpxKkKK/qd/wuyIvWBLLh3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740580734; c=relaxed/simple;
	bh=5CE5nHiPu5PWyeTGv/yWIFjrp6hvPm1CQtfEVp+8h8w=;
	h=To:Subject:From:Message-Id:Date; b=SW3erMkobs/+MiC6gT2GwPnUIvyYOAFwzxs8HgZwkGOlHtZPORcZfOjuTq/2J33gmFSGtNAbBvXU5lkIZ+T+GWrO1Uwd3xJPEHtqV8AndQhQlWrMuvY3lt22rUpolz21qFn/VKWzr1Hc4fh2QtXWwUPbNP6ZZyWzPYRfSKjYm7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otJqxMxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otJqxMxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8632C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740580733;
	bh=5CE5nHiPu5PWyeTGv/yWIFjrp6hvPm1CQtfEVp+8h8w=;
	h=To:Subject:From:Date:From;
	b=otJqxMxaWx+tpzHYEy1qSts/kKwvKBiw5P7WVxc29ssWBAn57z+SEDKNHE4lrNcAX
	 E4CScKb76lWuFCika954kHSPkpWdXQGbJH/19+8Vcy1tkK9LSZgbV+JgOrGxsBBkH5
	 Bn7VvV9A+zNbefSNHZNhpMw10jhPxiOUEAWi23lS0Ffrl82hJgF3240U+QY6CqM2Yn
	 E3GN1s/aCmK03KV3i67y1k38Z75fSFVUNjoIRs4YH5Q457sG4fly2YG49IsZWlWuUa
	 WMH614GJmKIr+lWMoyVTNr/uhZJYaQJgGuXlswUtrPL4JPlpTL87NaSJAAvcRf4L5F
	 WyIOP+jjJORpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B28C18E7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174058073359.17786.5221811021289450278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857dade753b4b94a10bfb2ca5546254207f96cb017ffc3766c943c103655d98c
Date: Wed, 26 Feb 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740580733
