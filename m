Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4501B4FD7B3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790675434; cv=none; b=maqnsmTt9isou9aZNC88T7WhpZhpoAVHcm8MFM7qT4JDd59KG9V8axjT6Tlrpdy2Enrt//bY714xnq4Amf3YQG6dP1JZWCyeUpQsCwYkcZXLcgOwI+ZDGhv4SlkrG/TW1Pcn7zk+yJ4EilTlkHY+ePsYEQj7BsXHX0IV5Vp68qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790675434; c=relaxed/simple;
	bh=8SiLRGy47LkMjWbioM3yY8IfxXQC0biuO9KTWuG5b0w=;
	h=To:Subject:From:Message-Id:Date; b=Het+jk8kkntXwbicTprGIYdczbrMRyiUmsKcW8X45dSwcqkp+fuxKuSK53CfA1qyQEi+T6FVx3c+0hT41ZXwF1V8TNzo4sKQ120MUwYx2pLYg1++tf3mJWYLfBC+U01uuj5SgKFluhFQSiduclTCZqjWN9uSozPU6mtkne76p34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0Pa2q3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0Pa2q3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFADDC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790675433;
	bh=8SiLRGy47LkMjWbioM3yY8IfxXQC0biuO9KTWuG5b0w=;
	h=To:Subject:From:Date:From;
	b=m0Pa2q3u6BYUhk1zuTUiMCRs1/PSSlQKyNyuFrf+57+s4u9ev1gvPw9QnxYQ6mhHn
	 /cWwNYo5xYfGMcl38ezpD+eFJEo82EnrqzbU2pLB5+NlqOZw73yn8D20YmQTc/q3mg
	 G8Db+Dz4jUa0yItBaZgotpz4VD2A2aXiPta/uxGYkn5saGz1tafZLWosCuW69BEpjI
	 mTkktRqOXL23Ent7hdMC87GGJmlHtb3YHuyftQBpVYNz0UXd6dbacZut/EETQF1fOo
	 JNri4sCYmHA7QOk61E8rFlXs1wdPW65Uu9YLFkA0eYnm74kf52DbLAJOzdOW8CgUDk
	 VUzoPFqu92j6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E8CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067543369.25050.11193786451083752231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90303c2e4a0e698688f74b95743de964f40e4ed3bcfa90f2548eac7874306fb
Date: Tue, 29 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790675433
