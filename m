Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619563033F8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788120034; cv=none; b=S5rtTGK/dTcx4P2rn0J2n++M0JnhUboIQpqNSTGDCZujrntqGN8NuH5pG1/WqMJeoI7Vs05UBmiQd1R1w/e95nEFFzget0vf2mXg49nedW2STjce/spnhtaYO1ndzRft48P0DqNXbMsFNR6F8QSJLW6X9xS3dAV16ASR9+HI4/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788120034; c=relaxed/simple;
	bh=0YaK8EqCFOlEOeQXXbt3kk6RFx6/GWWHUFmQFp+Q1Fo=;
	h=To:Subject:From:Message-Id:Date; b=utPucLyougF77w+bqmKnux7LucfdA5M5t5AXUGmQ973F7Emh9RVSzO7I4oaKRWl/trfSFsnWTFfFdMSkZNtmhrfeZV7R5KOwctExTm3eQ7D23DJlCY3aG7tAdMZCZGqbkv3NG2D1vDJ3J+++0FPGRQJ0YKkzfnFdlHLvukgGmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG8hMUc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG8hMUc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BD8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788120033;
	bh=0YaK8EqCFOlEOeQXXbt3kk6RFx6/GWWHUFmQFp+Q1Fo=;
	h=To:Subject:From:Date:From;
	b=mG8hMUc3HNnJIALCYicmIemvuVlFEgMKZIsYR+hsDmdnx7FDF+kLY24rrUh1BQfRi
	 D0qFPnQu0QQnl2Epm5T5ocAYNuIHxpQVMHy7uVzTWCzlkY4akvib0xxM1KIiAAiWlL
	 sRHnyCCA7ZL04FqZYc8IUWP3Dx2zSVqkXXij6kt7167hoY5Asj0ONm7RMlLtnwyKH5
	 TTKo6QijEcIwPsLAa90BythnrRHok9RYqb5uVu37+fac2Dav6/UfGdLrRhj146/hja
	 hF2QFoo9wnwYiSdcEjIO6A2SkwfpwgMtSllma5hxrrWxIaqjONgxJTxi8jkZZ4Jh4C
	 WpilqZ6OUhNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF89DC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812003369.25571.5026088064556356075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728f19a86a20677842484b40dfae5c549dbdeb3f94ca43fb3a1f68395c29014c
Date: Sun, 30 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788120033
