Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EBE14F125
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743833394; cv=none; b=C2kZzDNdXs5c4wlwcZFbtl0uybTyI+C3HC2q9fYi8kvW4rk4iYpCdRKJpSfX8Da53SZCxJdAzKdES3AjHlLaRPnlNM1sgBK9dcEDvNp/OsbfkvnhU92YXaukH7puOf6dOLdqF10h45TZCbdsKOx3yfpftkXNYBpbLYEiLui7hEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743833394; c=relaxed/simple;
	bh=VnkMJjXTYlCxYTXG5ZG2ZQOjyEeuDBe+IUs4uatq8rY=;
	h=To:Subject:From:Message-Id:Date; b=MTgdKFcgMn6gODrVx/6tXnmgweo5CDTVa93Qwjj54XLLSESNWui/JIizP8m0Om332oYy6F99uutO848NE/4KAuLjBwaMcvupOlWNGe6hmLDPFzPBAB7VPgpfyY/6LnIGQ1A+/Di3PwLmktaFB0VSeBsI9bb91RLLh7Rpl08bvgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2UE+832; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2UE+832"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA263C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743833393;
	bh=VnkMJjXTYlCxYTXG5ZG2ZQOjyEeuDBe+IUs4uatq8rY=;
	h=To:Subject:From:Date:From;
	b=G2UE+832OTEO3kPUnhaeNET51M07kCHVNmhGT18Pisf3YQZDaBuuFMrAqsiU+kLIi
	 TbuUfVav5ypCbEaQYGd0omUVIumfpZ2lkoReVe3wPzv0jvRdGsDR5z0EIZwzO40w78
	 Unl0qFa4iWd86l/6abZr2uRjvDhMZ2gvNQpCygaldINkKMoAitJdQi8U65s/NaNuNj
	 n5KdjXLYhctqvewvSVF5/rATeIqYYnQnkaoQSEGCbtqLuQ/sadfVs2S8O2+thVv1ud
	 qzYZgi4NE0qeKmR/T/OtgygP5ZxcWSOuFwerXBmt6IY5ddSUXK8lUSSk5I4E2oxLYI
	 E8pvrQnl0Q2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E645C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383339361.24384.17780262438008242849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09b8355ed11c07780686e15fc3db17bc5f86d25e83eb0997c4b3a517de83002
Date: Sat, 05 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743833393
