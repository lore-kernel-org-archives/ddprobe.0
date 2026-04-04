Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D2738F225
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775319334; cv=none; b=MkgcsgzoUlIA72+8JaBzHfBexRGjCZsw1ZWpIORB8VA/Z33dcX1HDkqV87Hrv7otnC8P0DckRYsxXVdpnmg0D3+XyAFr8HKtg8ewBhaU/z1xJuBupC8K8pQNd1xRbo67+4DwDR2Zz64nKsI/ZJN01O/k4fVM4OrnyupqZZToTUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775319334; c=relaxed/simple;
	bh=/KT0f/Iogp5MQkZKfEmuzUM+XqsYH1vLzAdZn5OeDeY=;
	h=To:Subject:From:Message-Id:Date; b=iXPSSc1ubyIE6x2ufsj0StnkWJ2Y90CV8XmGXsycGjCnhdzo5O+KwDbsDVwl0Vi54bdrxqv7sVBnEfyv9e6xhe+Ml/j8UHxH/IoL/TH0oYBPBAnraBcldTWUe81NiDlLqWqZICcwos5ZbC2l1nkfOpZFZQZxMkIfOn8PgzHp2Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1EjFmbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1EjFmbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0E9C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775319333;
	bh=/KT0f/Iogp5MQkZKfEmuzUM+XqsYH1vLzAdZn5OeDeY=;
	h=To:Subject:From:Date:From;
	b=F1EjFmbBK6oTtiQGRxx+B2kvKqHaE4H+hTdJxCFBcPntde4M0Baeil0nSGoo4DrYV
	 6F3GGhlN5AL3Xkp9d861XdVKTFEX66TEiiz7Vo1OTwB2q1HsnQssg/AyFWCJKBWUZ1
	 iVIeQXoSDYeu+/NrKFmR96I1ZD9OQ5W5Fb0y7rWpJQCeK4teGLbupcJfbk6Ql8RHT/
	 VuX6C9R8XOP9BF/ICcQ4VkDkETFjZQrGbq3m0oPvHBI0X7nmi5QLls0ifJCEsspRfC
	 q4riYGas/gB6454TBP+Qto3k2H9sgj/e7zGH+oG8v4eG4+zZ4E4glHHKvjztQ+ikpS
	 UqVW0vdZ7vLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B676BD7308D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531933371.28878.6508411917029286728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd4fac10fb4691a730768bca64c894a735d558620e72bc6275b8582456d0486
Date: Sat, 04 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775319333
