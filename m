Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378151E25EB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747782595; cv=none; b=H+rdhwUcSsqwC2nDPrjOZgNN39TP5sNulXaR4e7nGamI1uHAjrOwXuxeNfANbJzw85zdOnBwD8c4lFZGXitMVclCQA7LeJMyxpAluNUUC0M69PMgpPXRPqV3K7KhV4Ff19RCuAZg9r75Q/cdetnNEYxC87QCcm55xYWuoMnHdLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747782595; c=relaxed/simple;
	bh=cH3Ejwtvkto81dKP65AMWyvWfU0BqApvNRyAx8Q7AGw=;
	h=To:Subject:From:Message-Id:Date; b=kpvozF61es2MWY3fFE4SU68nvFZbb4ePWLCENfTTfl3+fL0AFU9DUFe+AqSPLX+9Memg0uVYX7s9c5Lyz1sO9LqLUl9r16s8N+LFllq61C/ynz50Kjb0Wf3WQGziCbu6DdLgi5Bm7MouHtz/b1MfQseLFDy4/pJbKLPiG+S+DHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw7tSmLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw7tSmLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747782593;
	bh=cH3Ejwtvkto81dKP65AMWyvWfU0BqApvNRyAx8Q7AGw=;
	h=To:Subject:From:Date:From;
	b=aw7tSmLfzrPLtK56M2Fbu+V9OHk7+tk1HhguEFJXt+GCp6wNOGTyWYhO+VUvVF1tw
	 kdEADZ6ZL56Hj4jqm8i1v70OzUnLmhV0LC9ric4iKPt/b6smCLF/bsfzJ5LJsFQ1q/
	 2geoBe3Lc9kEtZnNnyePPnVMlfXR+k1hcxhDfYJ21pylLTkAXawA9kEMxHTIN/Z7be
	 DY0Xt1IYZwFU1y6mfSmiagwl+6csV531Mk912AKS4PXNcGtavhQbq8ary06RS5x0Ei
	 Au6wpqJ4MjhjvI9+V8mQSn3/yuDLNzYpLwMpg6Azt1XkQWvqEsmgwr382LZR8M/mLj
	 YRY+m9JEEo15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D66C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778259357.20549.6279529213944042032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f45ab17bcece25d6e956a379b644f9c24c2f5b05e5f80fad3a013138e910d4
Date: Tue, 20 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747782593
