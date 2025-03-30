Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9C91CDA3F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743362397; cv=none; b=lfzoCe0XRuipEXra83ZnRPUXCri7GAkTD7Evw/3eXKuGbZGHR6a5CBbybtedcd/DhcEcKmwMm3cpQn+gUsOrWjIHWUzCQSSd107pOJMcfQ9O8zwhfFv6U3WuvzQF/3pc5qPjt4AIkXKdvJFPCJS9kH8bwm9RpOLhJYi2w5jF3EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743362397; c=relaxed/simple;
	bh=U/Aqfvo+MJfMzbWurqej6UQwV7leI/+qh9RElN+ndHs=;
	h=To:Subject:From:Message-Id:Date; b=sOdRkUsXl3ILUzlOg4hoDMBFjhSkGBO3izRVzbDDJZQxrhRQysejuVppltERsG/xv+RTaHvFhdq4rAyxEW4uR5pMzzaP9Tl/NT9Arx56BLgVQPmxtVXzDv8+CIUrkE+8iNJ7+TXwpB1GMwJz5CaQVrpjTvoDMHJTLbu+MYuO8YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxK34ghL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxK34ghL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CE4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743362394;
	bh=U/Aqfvo+MJfMzbWurqej6UQwV7leI/+qh9RElN+ndHs=;
	h=To:Subject:From:Date:From;
	b=JxK34ghLj2hSXeSERXDngj9iDEcJiExpd9LwLzSXNIwaHGIHmkL8W1yMVhg5yphIm
	 Y4Hh2XsGsUz/9X0SNBw4twGxnbCbYopY2V9Ha0Q1GioARjpjsNxvS28KD1gej0AE1L
	 SqzJLyTpYSawXtaf2Y4xFgd7PPPE/59zPxFqX6w7tCMkceHB7NvW5u+fCQPr63KidF
	 aPyVmEocjIYXXugeb79MFPpyDN9XX+kI0tR3QVv+77rFwrJQkM/Dv4TaCKvt4gMdxg
	 Hj4L2ToL0riFFy5jZ0Bc8TRSU1g/jyt8N7EVhrb7dogau2K2qyzdiZVyoCevgD+dSk
	 hzU5qX6QcpKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BA1C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336239370.4279.7059913187038071324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739bf9d1e2c6d45e2a042b25ce599fc6e109ff75e6418faec18345cd3991b325
Date: Sun, 30 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743362393
