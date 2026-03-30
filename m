Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3E42E7F3E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774881294; cv=none; b=t4sbsYgLPHtJYEjjTCK2ycZ10HCb7RdWGt55nsIyOL0nUEIZmln6BmQHgR6n7SaQrzcTmbd9DbzOQHShg5+2IBwiJEHtGltOjPLoxFgtav1SeSgy3B/njmyC+AgGqMENZzni/tU6v4UJn8rHHF8WAMyiue+J7PmRK8JS0SkhZtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774881294; c=relaxed/simple;
	bh=REmDDPN3PSDG3CkVSGWG/UrtW04gGouZvtmr+6eoMYA=;
	h=To:Subject:From:Message-Id:Date; b=FwRdvXiNWC33CrdxjzEfPTdCxQmJx6UNivaZehAUzu9JSFEyA5OKsBZmS0ZRgDbt0o1rCpQq6wlDcYh3uYN8v3GBbR1cqTNjvgcXukOojZyXNT8AKrjOQ73fM6GPh8K7DoSnuS3dExmJfO+f8UTJPq9G7mbn99y5qLXG5h2tTzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJMpqfcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJMpqfcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF5AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774881293;
	bh=REmDDPN3PSDG3CkVSGWG/UrtW04gGouZvtmr+6eoMYA=;
	h=To:Subject:From:Date:From;
	b=XJMpqfcgVZ0XmL+4jyCvlRhDjDYSPa98UhDyMFuAPLvPvH2U99PtfvU8FypJk5+sm
	 3idxZHXD17fjpubPaiIeaZUQufSxwQ7HmKfvDd2RGILH7PJyBQxCl7ZQqillCRGxn/
	 qzgkbxm/OezWQJCtLew0JEP217hi6uCWv4BXrkMF26RfjHcX5cDPwPwSFqLGa2t/4t
	 YUeIeS+XwEa60ZsrrreedAU+hWlxj0chDKs3alOQzwptZl+i3TZEkw56HvV+K1slFt
	 mjI15C8s1ShRlVVcHd4nnxHyjuNZTGRv15Xd4p3lu8EjHbYVM64QA17uJwwFIO6M8W
	 mExRyClOXCfrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D571061B04
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488129364.26102.3336190946953395016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7192cc385bc99e16a9426633633938b60f9d63ebebbb8a8283931b95da3ec2e
Date: Mon, 30 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774881293
