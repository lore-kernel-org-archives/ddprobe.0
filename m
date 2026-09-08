Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F6F332EC8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788910234; cv=none; b=ZkL/YKo5oIwLFNrE6WSmF9ySTKgTWj4HyPxr9FCL8eJ7UVZ9d0sh/sMwTssiJSaqI3KGvjxuF6VsvTpAoN+FyBWsQjyssFuC99ia0HF8H3b1mEFdbmarG7K0boFxghW54oZjwYyE4I7xeh/Pqi4qYAaxIEnb0bETqpMpagaXfKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788910234; c=relaxed/simple;
	bh=CloxGTKz7VyKv0og1iXE+qQuolZHTQgc38OBnq9XJ2Q=;
	h=To:Subject:From:Message-Id:Date; b=WR9QLlsjQlbwC3+fJdljqlXyxEo5887qJPPFAVI45IdD9V7sdR5dLOF8tA9Hr9/mhj8NVxGM3xDpupem254RKmWXqrqo8yMUT1pxELv4fiTXGtHpvsoeLrVltYW1nnPmygICHIQCPbg+sB8p45B+UX+WUbv9TMzk+VGy2n/oeSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iP7kU2Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iP7kU2Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B6EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788910233;
	bh=CloxGTKz7VyKv0og1iXE+qQuolZHTQgc38OBnq9XJ2Q=;
	h=To:Subject:From:Date:From;
	b=iP7kU2LccHgOhwL4QglhL4+NUB44miF6/KBMZ2IpK/n7SuoEzxJXWIIiPMYFMAHBz
	 Po1j00VZOB2LeMkhWEr4yT15H2lIK7aJSN0XgAya8OBBdNcebf2jMdN7VP+JmqDbDv
	 oegsxzOfazUbvKRtYkibxK5nxZdwiEVM75zkbzrV28dIatLatjjEKvQksXJ0/8xgJ/
	 ygxW10PG97OrdZTKL3QmbgqI3yR0g+oiA9I6ECdPg2LKpmuWQLUA5l8zgFoIfxq7Zg
	 1OSUnRQLbzA32fIJa04HI5T9Hwk4a6aBMTgq1Sa3mBSE37HvWp+KAQzV60x/174vo3
	 p72ZVDp+L72kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EDC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891023368.25204.11989493170585417083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2707f53936582af72ea4caecbd932fb7106bfaeb8f54f723094fc76a4725fb7e
Date: Tue, 08 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788910233
