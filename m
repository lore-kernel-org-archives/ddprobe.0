Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248F9EACD
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759903194; cv=none; b=C0Ldy+NKZrINXH+kPAH5FdAXmcL128DFvx03kAS1GqYaf51MaJKBmuehg4t1Cn9BTwmRCZ+MEbIIbLw/CFxL7uacRKAlo1k4l+j5dIHtMcDFWDQlEM8RlVUR3ErnZxkgETRnE4fz5c8k3ZW8JdST8hSnH3laZDnIDSMnqteNcqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759903194; c=relaxed/simple;
	bh=WuEQm1sPr7D9Fnd+QeNoz7zmo0/qBsykKbsPxUp/BFo=;
	h=To:Subject:From:Message-Id:Date; b=m60zt48IQKc1VYlzLzzjzqzI+wT+SBmoqOgEPWSFvmSI3OwpFE/VYH5uxVVRkNN8S1yvJwSfWirlWUqJi2aLj08HtKs2u/GWpKDrKwGt2TB+VTFUIbxUuWeGB/7VgtknTScRQljgpjOXgp1T4YmXRHo4SJXu8VoTITJJ69cHjNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVMY5nMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVMY5nMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD01C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759903193;
	bh=WuEQm1sPr7D9Fnd+QeNoz7zmo0/qBsykKbsPxUp/BFo=;
	h=To:Subject:From:Date:From;
	b=SVMY5nMbD/McGr5cjGlqvEUZvK/VTEp7c6f3y0eW5w5WgtJIMec1DbcNiIZZVFx/d
	 X9wDrY9wag+uxGt63uk0+auzoG6Xm9R5IWeF2yRpla83YqT+qczJHSWPt44tGDH0hh
	 cj2MNmtUn360BU7LhAb3kX7QRrrRz9BQOFIZ2mONL0pKI4Z+BfEgQsWbXZQMNXxdUk
	 VADAE69v1nHkcP8DwToKKlJwdbQXhUdbNJiWtuXA5NqfI1LZtM6Iu9v+9EOQBRc7BO
	 ouYG8fBu76K8rB6taAKvLdXAfJDsDmxZfv6pjopIftkaAa1s/QMD+kdeBbEDbN+gvn
	 g0QEtI3H1YyXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECADCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990319357.21865.12625841369821590743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac17795390dab7b0c308e8d525312bf5d9d917f3e453a28e37a5fdfd7ff3066
Date: Wed, 08 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759903193
