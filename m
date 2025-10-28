Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F102DECC2
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761695394; cv=none; b=AAPLX1uPIq4Bq4T+i4y5S5mLUupA0Lvg/UmIN8aM5yFsEe1WLecbYS+8bFnBXBTx55gkxr219mugtjxw1CcnRwM//genGZrmFdGEtB53C73lWnZLlHr069BgzGGjoCFD3gA2/4n7k0R+ysEaBoWj6KGh/hbfXIM5aohzem9hN9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761695394; c=relaxed/simple;
	bh=G8Y7Gq5UCokEZzXcQ6QGh/g171G88vocZQbPHz/h5dc=;
	h=To:Subject:From:Message-Id:Date; b=trDLkEk4WtN92T53kdYPdyKxtcZ1W4VQDhJ3DgLdk1VKUfjXKL98Kl06nzafEvTQ7iDQf3gk0mBff/W5Bqt8zTMV5TbhOl07sCqoa/qjS0rpRzNdLKEZqNPqWY/1hoqNw1QDtDClNDTyDfv6A6+mhHypk/6u1WfCwPeyGnSAMO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SThdxOTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SThdxOTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A488FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761695393;
	bh=G8Y7Gq5UCokEZzXcQ6QGh/g171G88vocZQbPHz/h5dc=;
	h=To:Subject:From:Date:From;
	b=SThdxOTlu/vxOhaycLMlUhtefIXdCC1fc0XV4y5d1kNj7UZbbnd/t8gncYMYVCcQi
	 ywy6Uq14p4ocoG7mIV3KsWXtOYPl99RYbLpdw8wYX4ifXo+uMuZwxD4oNlplJDOm8V
	 eu+4/kVNbHunhu5qW9ZLvUH6n2IDBFrtH6kHGJ5i4v+2Y9vx+zXHjCGJXbGsipApsz
	 HeXvZ/JSWQVQqBwH1NDpNj5bmKHF87rAgXBxAHpeLeoT5obfk9R8dg0wkjLXdIs5cZ
	 wskzVb6KUg3yyuxc2M3NlewkG7ngz3LXS10TAgWrZxISzvZ9fx8fJlyDh74wnAyug4
	 XoZj50EZv0mxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE4CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169539358.11003.5398564638822502770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a42743fba01468ce91f9ec8633b3a4cda9d1de19c1c8e17d9e26de9c85548d
Date: Tue, 28 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761695393
