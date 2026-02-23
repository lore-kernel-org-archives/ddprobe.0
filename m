Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2766214A60C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771808694; cv=none; b=eAU0cu4IekhvPtVt3M7IqVgrugmb3kA79q8quojw9KuJtJPYwzR7jGlpbhILal61o5QAjwDpuyYdyl8YfKxwhPm0QZ0R+OcgcBh9wzSCIL1ewTG25fyLOH6CNfzDARHr1O8TPF61il7fxl8wVbiO4RXsSbO8mx4o6a/zs7ANXm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771808694; c=relaxed/simple;
	bh=YOWBLCp0NY64K1+hIny3jd+PW9jjgd5syniFz3y4pz4=;
	h=To:Subject:From:Message-Id:Date; b=RPnnsGXkca5CF2hZ7tuq8Q9TOXIMxfsVostc/IguXR6Ay3ytW67u0Mt4NZVTGliUQ9YCt+8uj5U6yVKl25vlO3nRrZD9M/l4ylKq3H/nnLBKeTnUQOgLzmWwCkUciPD3Wu3E1TU9F730Qc3jGkv+2ZYuyV7649Xpymak68KGa9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SodnxfFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SodnxfFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE229C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771808693;
	bh=YOWBLCp0NY64K1+hIny3jd+PW9jjgd5syniFz3y4pz4=;
	h=To:Subject:From:Date:From;
	b=SodnxfFar0GHqPRsuU//GOnKtM4HuoPAx75fWBZ1fG3mRukRv2WVPUhAKaoA6/PX2
	 uy8mdJJkSIlCDjjPsvSWQzZCv/PXiiy0/R1Yx5cuF1AmiOELHsjwxC+UPkm09QsYQk
	 RX3fCneAHfubtzwxnrXyFyp4TozpOKQ4xjUXtXe1etGELyCBzUQnWXqNA/l9AX3McI
	 eyqTyK1o8ZAeJC/F95jrrzn5pZEAyR4RONrKpOkeQqkc/spJbvIVbJvvIECchYdP5e
	 9RmdkQSTNP7td/LOxRnTe+1kVt3AQztK7XYDNRaLnZMmQQgbd+706VjrGlQaLZv4YN
	 jADAumE2KMtXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B527C6369E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180869358.11475.1802658138299569593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bc7668b20369a71dd4b828a9a5e194dad10d0bcf7b6e17c9a8c45acadb28b5
Date: Mon, 23 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771808693
