Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406994BCAB5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780594474; cv=none; b=MFMqRLbYtp/fmPLqgaEsAWPI8FSgRj2ncCBEuHOj19tTN5M27kgfnt8/AjNYzHkRPflKW9RWBbnidHdKjTqvwOWOKvIJRxMyK+uCBkNtptheaqgnG12my0QI5CoSPNO5jx7SmfvxSCDZdS0xBd879VWxpM70UNMZdMtNI4Sc+6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780594474; c=relaxed/simple;
	bh=AzcL7Mch1jbrm1mp3TPureBjSZxs08G3QChDT1vojlQ=;
	h=To:Subject:From:Message-Id:Date; b=lEoixAolKDXmYAMz7VI+tL2gJ1MdBxmQF1+t3+3d9uApIoG2lLUSb4R2sdbPaJ+NK1m/I4V8hMaUQ5ZfZRqPQ0XGSXor8JCqVyvjJp3C8s9TQ7J7Jj+SVxmhDFa36cbwKx1yVOgxkwpaWYx6ZOtyja2kauu4ygmRv1sNN8b3C7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9ANas+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9ANas+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69E7C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780594473;
	bh=AzcL7Mch1jbrm1mp3TPureBjSZxs08G3QChDT1vojlQ=;
	h=To:Subject:From:Date:From;
	b=Q9ANas+H5yBiVBrdviLEvG87G60WBZLI102k2IeYQwtiV+YiywwYNqnC1st/2tIVq
	 QtKipS/PJFJ5EQI+AUQnuF0EN+ullg8eGkPkb203g5DhthcWhPX5dMac3imxKfUy8J
	 JCmpC58+lJatT4PaAHCApWuddBaPb969GAhL2IkeEd3aLhNwxL8hJV7AiY2yZat57P
	 LPEy2l0bA5Y80XHKxw8p/x0mWttCXB2+QIF/lRIusLTW+9hiqI5EG5Nj1YtIOW7IkB
	 vCypsxNPSPlBtgX7R6psG8yW7FyYXoLn7flSlKN+KPZ3cfacScCZ4oeuRf33WghW5T
	 qUj1UWi0tXmsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7AACD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059447369.14199.7514885466150570837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c59415b502b8f88f6fd2d7845b39b31db7e5eb335599e679466b4104f0b01fd
Date: Thu, 04 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780594473
