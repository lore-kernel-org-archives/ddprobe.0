Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D5A495AD8
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791057034; cv=none; b=a3u9pDpX+r94r2LzCX3NK+EIQzU5nkoSArZGYwlLMd3bH/MyOcrEih9/rPIvQ9LI0yj9iyIFQ2pVUJij0TUznkb1+RLBjiIXCXgqV7kQLWChWWphPlFWl1TNSxYAWFUWZe75wki68On+ZCY3RlhBd5D0Lf5b66PoL4Fl1AYxJQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791057034; c=relaxed/simple;
	bh=hFjnoSs0FZC41z1Wd62BbVpE0a9dwzTIMdf9k0XDfzU=;
	h=To:Subject:From:Message-Id:Date; b=VSYeerw4WFgzJ8ePggf3Zq9IYQ5fesmIlc1+LtCMmiZK7PojiCU8MLCyBYCNDdsFNlkNHqbBqvxACMkF+k2Y5W+x4Pt/4VQU1QjeDEuqgAq9R1ComTP7vO/0InvfhWth3jTKQDiJeLYlSq4qQJaDWwsN2HAGpwQMczjh2qOtKoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeziHmJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeziHmJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE34BC4AF14
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791057033;
	bh=hFjnoSs0FZC41z1Wd62BbVpE0a9dwzTIMdf9k0XDfzU=;
	h=To:Subject:From:Date:From;
	b=PeziHmJYSNNZHZkbPA3Ia7dPjQcHfW5pYsIq4Tnb5eNqUcYT+hRRrqT2LJXnUNAB9
	 Ns11St59K4QN2YNyFibuTl2Q5W8xRI6KQNFmvf/PAuUbKJ44m+Yr01xMCPVUiiSQHz
	 suGGTKNbE9eEjKGrM4vm0EbQSe8+PZYGXNZTCOJGuviXFFLmYerxDpmNbQ+uQiinvZ
	 oRkAHfSRnnVsGvdfE35Br4dwcfgd5ULfC71QZeK2Bvvtf6MPPW4pKGE2Jzz8TPvZab
	 PYLSX6l2Nta1c/NpKT1ga8PURnvduL2cRTBzloQGgDN0GkZ/wEoxUWoOb9UaRl+4nH
	 AwnAAw3KwpYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB935CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105703369.27437.9925523373700789996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23473f0f15192c94437580150148dd8c4ac1411027c0a90a47499a48e4733ef6
Date: Sat, 03 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791057033
