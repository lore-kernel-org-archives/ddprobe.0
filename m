Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388782914
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728868554; cv=none; b=YJIaWrGH+G9Jg2lkUelb+D6BbhUmIiJnJ6q2YM/f3sRsTMvlxjeoaS31jA8ZFutEHJhn2ulettSEHVlpwZn62uR9j+EM8+zRHWXdr6yTGyJBPYv9tjtRgjzayURZ2gEGZ29/Fep65H0uxIwdi+OOvaED+CIaAdXBujaKH3qjDYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728868554; c=relaxed/simple;
	bh=wYSxQ517BYjUTCvKD/8qa96EJDjTi9HffKsAGcMwu+E=;
	h=To:Subject:From:Message-Id:Date; b=I1EvLyENg98JR0W9wSrhf7T9q3tWgOWP5Niqh8SEM4bj5t91eJaiZ9evPnVbPYHgkL6b207peo/g6PnXxIy1gJzRdZ1M41hY5jZuoi1H0D5kTY5VJEIHtGWKU+o57J8rafenLx70dEVs+1zn5IvMi9pwGophLtxXzD9k5GyENeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfQZ00Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfQZ00Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FD1C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728868553;
	bh=wYSxQ517BYjUTCvKD/8qa96EJDjTi9HffKsAGcMwu+E=;
	h=To:Subject:From:Date:From;
	b=GfQZ00Icra0kMhsrVuCsgqrisJY2BssM+S3voHqIV0lY55rsAH+dTV1oza4FaRHBe
	 vDmf0UxyUIoOJMuuBcY/DRmoxsoPTmV8KgKB2rZ/c1tzEd5PvvUE7y5omhVoES66pc
	 UlL5naehGuYGV0XBItRbYhPB9q0IUpKp+fJ/KyXqaVBwXlhj/J5XHQBCwntnDOs4DT
	 BMIcVssjWNGrBVuB253pZkHJFVOJ4XPS3KRDwL7zSGampXggbWe+Wfa/WA5Yk5YyGC
	 XZ9YCtFOhyocJLwqNXFnbGI0miieAOXg9dgomqaevCqghtP/PgelWdKZJ78R79dpbo
	 ISCeSYO1Ax+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED9CF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886855364.25318.6133944476171846383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a729652e1feba1461924cac54d3892839d13650abb562fff4cad36d7303b8e1
Date: Mon, 14 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728868553
