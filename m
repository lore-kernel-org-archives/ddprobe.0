Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1860F23D287
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753420194; cv=none; b=T8d6MgtBP+IZ/dqqpTtpa80okXunO9ZH63IpWMzrPgjNeNlJi5JL+TyOGvFI+F5FyyR7j78QTRhFyB5c2d7iFKIfw7wY/P1Du65vhCyqePEETo1iePhOx5aACk+QB6OrvAhUvUTtG1jA5oiUTLvtCVbQqhe6yWGQ2RJGW2EOqbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753420194; c=relaxed/simple;
	bh=+1SQk29L72R1L6wntWb1znimqSPz9e1GyYtrBHTIYzc=;
	h=To:Subject:From:Message-Id:Date; b=iXIT/pLKE/kNL0o88xhrrONcHXKOEe6P5lrgRGXTL4+0zFadkdudy2zkecBTfMFazvigGr/HOl19C9G/QMNDegoBYzqnuxSi+0drXGY1yBYx3ZZm80xY8z9cPmjmnkgwkdcOXkJZsdxUwteJ7LKWRol7neVZPC5jP/7Yw2okvgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBxs7Oip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBxs7Oip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D030C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753420193;
	bh=+1SQk29L72R1L6wntWb1znimqSPz9e1GyYtrBHTIYzc=;
	h=To:Subject:From:Date:From;
	b=aBxs7OipTvmEu3Igt3v94RTzDdnj75VrbioQgiiiwqvXYP1eLCBc+fUfcT8QrXr29
	 0gjv+kuVHDxDtq90Cyi0fshDPXWLgmEwIq/6naI1A40i+/2+W307rfgvPnU6k04oj6
	 U9bFSCIcL0JgZ386pMZNeZtb0EhsliDXxKPQPwM1SslGo5qz9h6vdS1rWXjmubp8ua
	 LgQympaIPKV5M+DPbUS/INpUIX+mvDTblg7tiAJspXAI3r9pzga5TgtlwuNx+d4rnT
	 haZlccTQj0bFP0sHAFlVYnhtlgLnijmBYfrtwsPhM6poNT0jQBX4qn/9LLikVzRn48
	 iSE8RJKEz0VJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4AC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342019357.16674.17964040033169985590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95361d4f6693fd9599a5913bc18ecb4f28464559c2766ec76187a00ea44973bf
Date: Fri, 25 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753420193
