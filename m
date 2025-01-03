Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBDFA48
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735865153; cv=none; b=pgJS+AOs5w4p6FkMJXBjw8MWF9tGQY1jXwpbNyB+zrmaR7sdoGtSwrIPOXj9a1jQHwGaDvJUhEP7fTjJTZEtDmu7oLSXYu4idY0pmXZhTjJ9g9gvA1KfEz2//v+CJX8Iew/p/3VCks9vhuESpJJKpjfq2YzRYhR7YFjwLd2UKgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735865153; c=relaxed/simple;
	bh=HH/v2gUBrHlW/juJgWzFLfmaBzWmHgDbBLZwJKXXECM=;
	h=To:Subject:From:Message-Id:Date; b=BzPw4VtHrFk0olerDPDntagtvgbxK+1lzyHfZLhYJD8MzJ/Aw6ds04DGnk+8cTZycO4REfLlcxd5BJtIQORBLnCc4FybHThFDsH0u6reGDZG8P28zKDiWEXECiApLppZAUpTQgaCDEtAwkeeRNVULbc2kqDxNNb4mya0Y1PmaB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnpUJb9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnpUJb9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F36C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735865153;
	bh=HH/v2gUBrHlW/juJgWzFLfmaBzWmHgDbBLZwJKXXECM=;
	h=To:Subject:From:Date:From;
	b=BnpUJb9ZRwcwZCwoQxioapZnahi1s5zy54PrDQRq/lPocWRlQyJBg3CRGZZlcclXz
	 6DV/uHT74JvRKd4FN8WcmvGAz8jRXrTCOBxH+CtwG8UOz/QjzwWpQLHtPoPT2++JVa
	 LfD+UQTo943FbZ2iW26/wmqson834322e2gohKAcjNnlJ5Mrr6N8vlfB/DdpJUbQJ8
	 7Y1EQsciZrzXRzTaEoDUkMnx7/bSzIz45ZKlQYjsiXTb0HNsxbu+rWQc64yUHvQmiS
	 ICDNIoByt7kUeHoMOVDVjM9/d0QWY6nxd6NhNLrmq5BghtJbZVm7HgKKHPIlx4WHVk
	 kZMYsCQRdTJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425AE77197
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586515359.8164.16945631868016877988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9f55c4e7d0e4afda9077f8ca432e8f7e6e51ee1cba1f35f4910775c337a9ef
Date: Fri, 03 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735865153
