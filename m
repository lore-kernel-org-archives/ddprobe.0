Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FD343AB0
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729254354; cv=none; b=czUfq0TCUkI0MHEsOXC9dnYljDZmkpyAQ/IoKrz76r7y4oyJBRYIWLKhiZF2K27c0WSxc8MoB43yuTo40rZKTgL852KYTdR1vyqZGjbLD+ZSMNuvN1SvSqa1ILNfL2AYbGgV7/5kZZWNNU/AZHEYeL9bjvIGgx8ckuNePX3xeDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729254354; c=relaxed/simple;
	bh=SltMAY0bP116okm3RKR9R0+2fxpjZFEmnaKDtTCVwBM=;
	h=To:Subject:From:Message-Id:Date; b=skY9D40lU3oqXNvTgdwHCLlpRztYUYBtCcaYA8Gv0ITnVWqXhcEtu/M2z/dxFUSwaSZkfUxTrTekkX30hCQTGdtrL8hJwhU0doeqjn8gW7DEryy5Yob/V8UVQk+6asdwhfxp3vpRJW+Jy1LZb8Fg7kOtuN8/0sfBKHgCI/1QbCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okteAIRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okteAIRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFDC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729254353;
	bh=SltMAY0bP116okm3RKR9R0+2fxpjZFEmnaKDtTCVwBM=;
	h=To:Subject:From:Date:From;
	b=okteAIRhh7YixEdAEpMVZSzA8xUiauW1Yo+4MG3aEAE9qwZYxvqPNcd6EoZi5mJGV
	 LKcp9XDkZIR6tImBx36l/X7yYYO7eZlz3XqyG7hu7N85hzjf3Os5bUaMUOoG3QQxV+
	 ATYaaJQ5TRanRhaXcacVJyTpb8ZFE6KNCrn1hAsKAWQag2tfB8dk5fPPLiWaAmrpZd
	 O7KxQ5VKmp03JUbx7yoQz+A50izqTJMK6LyqHYQnyps2/vyTJ+MIXU1+97TdFd3r+4
	 Z6UvsfCMyVgL39IAMRDgLLjobPsy9u/hGTh5RpO0qrSYPAUf+3lm5OAQg7TYPfIEC7
	 tZsy+ji8BmZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91088D30000
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172925435357.28577.7799973757262520552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a47340c0eb7784f0aec5b4d1e190aa12f1906192915257f8c365e097fc5955
Date: Fri, 18 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729254353
