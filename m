Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2B35A943
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029634; cv=none; b=WY49SsMrEJnVOLTH62Aq1D+Gi2r7Bg/5uay4DlIBz9rTDAKHAgjC0vbGEeXDV38ATSb46txZTL2V6ricg+xR5iT59gaxL2KHz9/akDIB1Tj67HkRV+8QC0UzyG34uLu4TuwSaPSSW4L9ovx3gPt7N7/vnt/uDXolfBHQTwyM7yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029634; c=relaxed/simple;
	bh=nCwfkSkO/AWv3bZp8TyQipBsKafiY8IlLdQ5zW+a+dg=;
	h=To:Subject:From:Message-Id:Date; b=TBC7Gor8tmv/rEve74ZYVr/Z8wjNwW42qjjKLjWRSxcAo4KHR1eWUojNiPZfqNa06R+m2ENfoJhUpgs6Kpq02kq7OXBEgaCfnzL4GFlmx9ALKJq5YAZF3LxWw9MEZ5JAGquZn07Bk4nLjQpKVp9zcCV+KqSAgKwc89a51DULjlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNb5qoZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNb5qoZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD068C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770029633;
	bh=nCwfkSkO/AWv3bZp8TyQipBsKafiY8IlLdQ5zW+a+dg=;
	h=To:Subject:From:Date:From;
	b=SNb5qoZh9gppXD8/ZIX43t+NU4D5EzjEjs7Iz5yz+VQXGxAZuD4tAUqGrT4Ok5aWI
	 U+iTrLnlqdYbsws89scZMEAWWvPKKq5LzjWjYJcFt2Vfwfh2yfUMD9kzH2PlTRcZJ8
	 q9ERPRMt2a0RqLx0Far4Qa62WOyrFox2xSr5DpbDeWtXJh1YsrswUNcMDVodJjCG4r
	 SI+1+zH+kZOmcye4OrnaPEmT/NfIcFAmrLLBy758HbBm3nlZgeG9lRdKOB/cFtofFA
	 ex2z9HbL9RZHACQyyACbJEDeVfrDIvRPVHXNLLm72zJo0b4GsKkTnzxhjxVnrw8VkL
	 MwhI25BZ4THAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F4FE73157
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002963361.14851.981850422240898796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa80b1bc289edb9bb67f0d02649d53a7a78c0fb5921571f005736766d93170d5
Date: Mon, 02 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770029633
