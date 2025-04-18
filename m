Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D7F1CF8B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744951194; cv=none; b=Silb1WLitRdDL9kdaxpYXE3zoY9LD4aR0aOS4Sz+83J56vhuoLD0G+gyZztT4OWqYhjv0XjNlTwA0DtEowFcAIoA33zThOp1ti0/1qzec01KVgJO4M1ejxpyLA1cAh2bDdFMIO8Bdt4rS0NMCUSY0LtXNmWg3KnGPQtCeeR0rWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744951194; c=relaxed/simple;
	bh=RhYqRoq8VR5BMS+Wu1y8K9QYYPm01xp8uaw7/KevJUc=;
	h=To:Subject:From:Message-Id:Date; b=nBhChmKzAYbPYL1YEz9GLKEbmgx/GADBG5lzz4LxjNMn+BlxT+UllPBLLl1KImKYB5I7znr2/g5v4xi8a5i7CxtMr511XxNKRb43x/HD7FdxS5kvSW7dvYgJeRqmv1JrYa4tYOpOlxXyiVu4C3opB/uy/NJUfjvX5W52TZeRQTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrYilDDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrYilDDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC927C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744951193;
	bh=RhYqRoq8VR5BMS+Wu1y8K9QYYPm01xp8uaw7/KevJUc=;
	h=To:Subject:From:Date:From;
	b=DrYilDDLsz5prNGTjPOHSTJw91Ltih6S7l6cPubIPcRjHq5lOAyfRyxvYyx9s5UvO
	 xZXlOKXzTS7sgbOh0IMX5DTPHsQyTFC1kfnA+iEp59a6R7lUyUa/nSF2fT97PpxskZ
	 RrkymJEDqjTohQLwwufop2NnwMhbjFrtscnKhgygsXQIB1kavuL5kLg+pZzE//a0o9
	 z/5YICMiDfoF14epT59RZMfZpPNJ3GKtRr1aZLjbJd6LwR0uZBfAPEZilgW9UxPlfA
	 2zn6iPy7QmB87w8/cvu13j1Wr730Wjzxau+LSYFUIgB7P2jw2rQR+STPJGbg0EnADi
	 Eefe+XxcwphwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5385C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495119363.8665.4211480055830626155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5921594adb64cc6cae17ae8659e6d94cf28f678885efa7529682c97e248c15d4
Date: Fri, 18 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744951193
