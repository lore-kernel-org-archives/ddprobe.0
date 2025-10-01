Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4966128F935
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759318194; cv=none; b=W8fqgzJGob38vt2L5UELyNx37AsiugAbqHuBwgjRGza0ZGX8eNKxfjCihKmRnyCztLRwXRAYpw2jssdcixct+a/Up1+LbvhfLlVGsHW7U9B5EaMptt+Kp9To6skRVPVTrZPbT+OrYUIldOi2GLrz0r9EYK/7Qyl4OBgB72cuN2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759318194; c=relaxed/simple;
	bh=ApPRUFQxFNSXhd6jARx8OsrZBWsjzK3j/t5Wbfbjon8=;
	h=To:Subject:From:Message-Id:Date; b=Q05rzpUel/LViU/ugW7OXlYtuje2sEZbg2KoPJd1Rsl4/i7/Lg1WMSkpUBzR9spJrd1z38pCo9CBdc8AXMi7mMBYQiqx+lxGZcGWPhfqUczoxggTxPhy/1W2Xep9epSqrIbe0WYHxEG9lziBdfTYfYgq0a/MQrxZ6aPaNVX8Y4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJGHZYJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJGHZYJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE407C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759318193;
	bh=ApPRUFQxFNSXhd6jARx8OsrZBWsjzK3j/t5Wbfbjon8=;
	h=To:Subject:From:Date:From;
	b=JJGHZYJjO7CGbuWUGY5ZQtKvy+2Ma0Ysy0aHpnXoQod0E5LRuz/R4TqHEg3HG+CJ7
	 kCC7/N5OIN9tElv+aBmeTLLBUsYgUZzJoprLq4nveYZn27kT44Bc31nFjQJtv6QM6k
	 LDIknatfrVJOeBk9uWI6QhuH+EFZbEATPyHr7WG+slvAzJiTTCOvNFM3ZACprs+uGs
	 d4N8orIdurgQSrPC5e1vmznuBBo/jI7ulMEfisInZEcesx1ySqaTKXzk2Tc94hYaI6
	 gjI0uQT1/Fx0H8rcqVX8PRi0WJxQlfvXISFMv1G9GBAA5OidXLTnUYVNsfHMkgnhBO
	 ENHnQvAUyEe+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6B6CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931819363.20258.17825354062857953263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873af9a0e63cce1ae0b6c55a59faffa5648391cf381c866524b2813e115bae5e
Date: Wed, 01 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759318193
