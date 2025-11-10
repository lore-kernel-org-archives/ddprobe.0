Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E926F29E114
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762796394; cv=none; b=OkFIIte77NjDQFf55TkaxCndprn+rrPf0fpzqBiE3ryU/AphvQkKyMYVVyQLBS5N0ek+jnp85mc/glH7LKZL1xh9W/S+YRafFqQ46hgakUPHYRx4hoqF6E2eu8H4XnID9aDjItEclBjNObFbuD9Lu1NKq1d6KlitR3V4U7pZeK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762796394; c=relaxed/simple;
	bh=7Vdju6v37N9mCb7Wq+/X0lmBiw5OmiaXFJzVVUkTdMA=;
	h=To:Subject:From:Message-Id:Date; b=ufVzmThQMb6le0lvng4lDGIC13yUxk2e3ggPsN84Es87k+YlysJG4dEEXSTVvpitgB56q6NBWvDWw0TKC1FLKwDf6d5Ed/MD4pptZ4mWTSl+e8tyxPpDoVOlozyxVa3ox5AwenzKEifMj5EOYQef71vUDbX0smcRdrK0CwuqUcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNJOUW1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNJOUW1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF1AC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762796393;
	bh=7Vdju6v37N9mCb7Wq+/X0lmBiw5OmiaXFJzVVUkTdMA=;
	h=To:Subject:From:Date:From;
	b=gNJOUW1b2bHnNthF/phV150Fp8XVwAvskgSL9W7Ev+o3wUJ0QemV2u0O4a9Yv/m95
	 vb2hxc0PAVXVsETYSxgIhgRb/sbNsqK9zTvjqkZyJ6YE5by4M5hugarjG4BmLH6vhj
	 N1Ls8LU7nZaKAnYjMH1bZrQ/L0sRymhP0sdv+FXIyaPdEw1mGNPLYL+s/xIkuy85pK
	 h6NltalIYigh3Mw6mVfECW0chBfOGjQy43OjAE4LkgT03QXzF7QNqq4ojDp/5BHEAe
	 mRTbDH7lqLxz21Xt9Po1DWX6o43Mn26W0Jj7qvkfhipbWp5oInm3BHOptr6CTZZ2jA
	 Mv1Mvrt6BoU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91474CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279639358.19774.15902265596327666484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff5e89e41c3cca57ee530ef390e904740728046abea7366cc4b2f8aeb92b0e5
Date: Mon, 10 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762796393
