Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8A71CF5C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736111754; cv=none; b=KTPWmE9OHYecKbKZkB1vAxqhFg7XoB37H9YIatwcdOQaR3AJjrz0RxkMqapCcfIbIrs8EXbxKvrwTaI/yWN0sAatcn9uBn32401+lXHDd1nIUJKHGw0lKiPRRQUh8ZZx9yo9dmuriEDJZwQ5Ko5+ghUxZvz7nsPwfh7/B1+MF7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736111754; c=relaxed/simple;
	bh=ZEaU8WjEnYj/ZYojZSTip+Ss87FGYcrRkf2s87YYZRA=;
	h=To:Subject:From:Message-Id:Date; b=d4YATenNjrGG5So9cyIU5uHmI86gIPBqTx0VWeMSU560FydJymwS87dqmYP/Q3C66AMpfRYuKYbDLuCc2mDdQLIvWGXlcyATqVYNQZPMxpLNr2j5+tTYjj9FdeMO3+G/aPDt6da9FjdmwhuXIuDhqQsO4C9mo5NLy2d08GOhmq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDqCRZge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDqCRZge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1D0C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736111753;
	bh=ZEaU8WjEnYj/ZYojZSTip+Ss87FGYcrRkf2s87YYZRA=;
	h=To:Subject:From:Date:From;
	b=nDqCRZgeECeK1WBvMOsgez9JDQtk4WskaATqYzqT2O0XyhrmTzIOBXzttXAdb0q7p
	 5XT+q45sFNMafqIcgrs33HZekM3YOBtlWRSs6smKIGnmPVOSjxtgl/lY0lzSKgOn2m
	 USoqccqn5W/QF/KK3qcXkaTfoJOcnofzsBQ1IdbMoJClOJdxYWzEU83+erJtzg1n1S
	 PTBBUnzg9QqbdDd78pZdRKQruA5KPhg2jmwuJgpLZIPQl70o7qWZoU5B+5JQpEizFj
	 C6I/x+YDkUcu7iVqTBM3Ark6hFg/Ws1TjEDj229HhTDfPRmCLcbiimTd1SmOEoR4mN
	 xH0oX3rObIzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B844E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611175360.18656.6596817211638366353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c4a155a584ccbe7984d5708c1ee8281ab36c45a416c53d15bd5c86a2dd8716
Date: Sun, 05 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736111753
