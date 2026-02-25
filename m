Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD11E5B7B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771987494; cv=none; b=WW6pXsDWYjEpbwsZexEHzqJ62X5k28v3zhAQvGevDKsIcXmQtpYJ/xJnC7ep5iOGBkTjh9FO/U07+Ee30t9qck8AN+Zt7Tg+AL4LdW+nh9WsYT7hgcDtOtO6WOmCXWKzbsLDgq/Awex9tJ9rMBYkieuRknbdXb6+UhM7l0OWMBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771987494; c=relaxed/simple;
	bh=WPiyHkix978hqeC4C+E8Z4s/8hbu0C8RorphioZV4Hw=;
	h=To:Subject:From:Message-Id:Date; b=kUe+5qyRHvRYJCm8O979xIbfq0HSo7JlY1f4qQfhaThPMBkZuuLgjtB1rZB99gyCyZncLVx6K1+SyjldU/9uUEhDN7cFjyE/Camn0z6PgPjVSygQ/B4f1dRInx7MGcdM5fIrQq7n9AEnxCX0PlfXsfJHUS59B3re+tMl6ArKCCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J24R82Yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J24R82Yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF5DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771987493;
	bh=WPiyHkix978hqeC4C+E8Z4s/8hbu0C8RorphioZV4Hw=;
	h=To:Subject:From:Date:From;
	b=J24R82Yn1APpQttqNTb/ctoQNafVw/SDYylr3JO00Jt6b9EG7cJJeiWxWgvG5Bl6X
	 JFj6pbOxAvYQDZW8PsQOgtbDAwkbhpTD8+KPLvHdJbtPv+4CD2ii87IZVLXQNCBDd1
	 K6QyflDpffJJyknpo+6/lfCs8Z7yaC0bKaQ0xvYK2D8i7tJfZVCzNzfz1ggQ4Yl249
	 3p6VPFGEJ+ngduyb/XfpvgVPAGmQDDwBd3uPyvFE5B8ud8mRkvoeg5qFLnhmoRjPxx
	 luZfiWbkALfF5daqxnRv1MszIJvyP8bzTzHC01Qo7tqTRPgGxDIdKVmKSBYy2Yodtj
	 TxpqjTAaaWT2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A22F5543F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198749359.29223.14501002206085826177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e497d5a95493933d828b504edcaaf607652f7e404db37468ef26360880b64c
Date: Wed, 25 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771987493
