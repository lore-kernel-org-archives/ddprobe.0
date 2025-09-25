Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8E20E6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794394; cv=none; b=SwVFRqid0x3rxs6hkd89UTjH3/UWrm68xbjTm4l0MaY0DlWiwk52JJzya+juXLnuHQ7fM/DYxTgWkdpU3E6ETl7AJEOHVU3o7h1K03uSpxZHvRvrAQobUF+ndNls78SCeK+P6+YjUg6VozBoLqhRPCliaEltFKEraztbRYwB/UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794394; c=relaxed/simple;
	bh=VDC85mckODdBlB213dPNhE4MB1d8Vofc7l+mN9MUp1Q=;
	h=To:Subject:From:Message-Id:Date; b=hf9aaMKAj+ws0GUwcdD1nTRkOt/3mS7HWbG2nVlnRsZ+m76YbAOpV4ibOATB0S6U/BijpUK9GJqkeOpiVMb2LhVybkSPopcSZfA6dp8Nz5m11eWMBToh+bswQdnXrJq9qceJWf8DnSh3WDxIo+QIu+ieyZZIqp4AYK670MpToOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMlwYVN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMlwYVN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2070C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758794393;
	bh=VDC85mckODdBlB213dPNhE4MB1d8Vofc7l+mN9MUp1Q=;
	h=To:Subject:From:Date:From;
	b=BMlwYVN93ksH7uCtacHt9r/DSgUmJGgg3f7494A/+bOz55P3dcaQZBjJiNZqL83Bs
	 LztRRfR87P+h74Tlxjem0M4siQvLe6RZxnGr1bSihfKjS2wV0cKexyxnAEz0gpOlyj
	 mprM5ThEqVuz2Ei02xAh9f9P/PhtyQQ/ezLfNXGvDYOF0XPNr2Rq2mCYbmeTZVVf1o
	 8fTiHRnui7qRcRVgrseKr4pQ6ICpmVpG1+clEeVSnqNrcxQDT94zjcfhX1Xt5zMkV8
	 8Oaru8gGmYBDIh6hWMB6w/BIETmwEJyEG+wUGgNhV+DvhyAN96D3JXlf+sxLi64mlg
	 vF4l1KAcexm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57FCAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879439357.22937.8308962914278738066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d0a602a541822491b42ef0dcadd9d09418af0446d99854d1f718b44a1a4792
Date: Thu, 25 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758794393
