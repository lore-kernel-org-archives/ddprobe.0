Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252673D9034
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770389034; cv=none; b=SK/loizVrxdJ9DFPVuhXaJf8MzxFALFAs7k++YdigLlizohni658U3bhoTAwu0hzcCsteUR7SIUTfLIZa6zO1mPBaJC6vF0SijsC0wwEgtomW7S2kpoSGkB/puavSHyNsqDKZNkxIkmeCVYhETRZTNy4+/rskgKIok77qr84Q9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770389034; c=relaxed/simple;
	bh=KU/GWmbFSnVnM4Mrz1P8yYNcMEBihZF33bwOpcdZHS0=;
	h=To:Subject:From:Message-Id:Date; b=m9RUAfMsydKzv/KrhvqflbqEIacz1NckJoTLSfG2qsxed1GKPnzqiR3Kgw5AqXX94QRR6GkOVJd7kjujR33uwUCau2DEjftcfOpf8mjcukCmCxgbgtuEKYXpc2jPJrm4Dtg+mhjytjpOOzrmCGJVs4/9yh8JmmQ2qmouWEIuaMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBXzmp1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBXzmp1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01F7C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770389033;
	bh=KU/GWmbFSnVnM4Mrz1P8yYNcMEBihZF33bwOpcdZHS0=;
	h=To:Subject:From:Date:From;
	b=oBXzmp1V35r1NAkocwXz1/XZVdQByRwAr3ZXuJt8kWBIuLOrbUoYv3LsIQrLZabgU
	 Q4D+kY8Eiv+wie1TT1CVyAui4GemXWAB/WdBDeb7N86gyChH9NTv3ehuGUKb1REqZ1
	 SyfTkb1lH9wjR34jyG8+xlcsXbUxHiMQ7ZmTsQSXBfHGiHt8Kx3rM+vcX12zsZz1IH
	 TUuameXkS6KMFLSgxYXX8dT5Ah0HdIxJUheM18/MhW/R7q8qtX6pLFb3xqGydrNJ7f
	 xmTDwYWCAiy6+XD3QlStP05UDnTTlrZMKAj8tw/YpO/Ph4+piZfzjPDvKV9PYxk9k5
	 zW3pftsVGM8WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98085EE20A8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038903360.26171.10493480953298395270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4048a48ab39e43623e1689fdd2f9292c0d8442d4e33a88c079df566fb4cd57
Date: Fri, 06 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770389033
