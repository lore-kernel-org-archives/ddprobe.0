Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316E6429825
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790053834; cv=none; b=hT7K1Ad0suVCMfcBEw8Yj6W2xXBk9sd4W+vSUS50NruBfWgaVn547fnMszPxsUgscOHsg37Mxuq+dL//bA3yVDlAhqYdREbBXtY02Nhb/cWnZP/eWD5ZxIEamWc2UNoYEThC5b5NaE9PjdVDixL4ge/kKt59F0XtXlBAmAC0BX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790053834; c=relaxed/simple;
	bh=Yau8s5fV7ZNYXUeYGhkdE1gvLCJ1xHdwBHVUw00IYQ4=;
	h=To:Subject:From:Message-Id:Date; b=A3AxHbGV5WYv6mgoanOS34xMbC55+Y6jezGJ5YM22dWn0r3WchCWrNyOTcIIXJQ+Ntrs96x6dICPg3tDfwK/gNSjKjMor4Zjv5y7J2RJ9e4LUc2yQuUYOcTYxexNU7FBQ6pvbhqRkP7rU0ZBtVhCno1piUxPdIg6LZLfhyH3/Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uag2ldwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uag2ldwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9022C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790053833;
	bh=Yau8s5fV7ZNYXUeYGhkdE1gvLCJ1xHdwBHVUw00IYQ4=;
	h=To:Subject:From:Date:From;
	b=uag2ldwvbpIHu7FtYrik+n0yC0YqiMbxO1KXKyZYm0DrAovyvmZDTGwGr/vFAyrzF
	 19YWWlA9/84dNxIh2eSUQ/n6Wc8MyW+5LksyAD+FfJOPJp/yFxqU1hwVpSVNZFb0E7
	 AsqwDAZc4HgBCe4ONAWd+NF8DiM4rnAwoCfpxvhqQxuFcID0Q0T64WGIAY4hoi198N
	 vcLG4RXDI0H4ji1HZGvuy4XQANx/1JXwfhDKW0jzo1Hvv47fd27jzvkSCkx8E5lvGS
	 A4+lQ8nMWl4gwvt/ho5GhlhRnzlHMWHOFKIBb9Cl+nkN4J44TlLRJaI5GjkSCaEhbL
	 gghZYQi4LNvvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B300FC982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005383368.22160.15144839927498935568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7ca2852ab1927e06d67f822dacb185b71ad75745b00c2038ea98a767bf9eee
Date: Tue, 22 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790053833
