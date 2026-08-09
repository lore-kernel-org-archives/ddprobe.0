Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547E614B950
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786240234; cv=none; b=eYOwmJE1+oQInj34NlX5dh273bPbkvLHf08AyCyrJbPZ2umvUT99riaNvecKOtYjB4gM8jdbOfXXY40rc/zrEM0YOP1BE38iLZQ/T7hSQ0B9737jSO7tZfEVWuItzLXtVSil9sBjSEEOPhmKm8SR7if7kw07Xzfi+pXaioYDj6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786240234; c=relaxed/simple;
	bh=6Ds/rdFhkYhjpDRIuHEKhjPIQOxEcOlx5McdoFlFgGw=;
	h=To:Subject:From:Message-Id:Date; b=nbJvQBDhjmh483i9yx/XQIpnDsIFLvFrhlrR/N55f0IklvB3kLn84MMPOY9uF7p7afLc04ggqUAaoNVPBH3hARgCdjKIlbrLm8EKt5A3cDkE4FQXkpQ7c8tCOiOhp05qM3htQHwZGpIEr1Qk37YYGJOSxh64z/XD9oTUdM2ax+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7/EbKSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7/EbKSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D408BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786240233;
	bh=6Ds/rdFhkYhjpDRIuHEKhjPIQOxEcOlx5McdoFlFgGw=;
	h=To:Subject:From:Date:From;
	b=J7/EbKSuTCorvjhZuYRUMZV+Swf62XNvPGOmCWO6D7SaZ/VAfkLzqvisyl/llfjAL
	 P77cE5WiHvvxriCArV2KdQjVmYilrt53wvT2nE3X1pLUDxMQ1mX8UDcXwAxy7dqrxR
	 b8+DkkpnyD8CqD8K//6h80zQa78NDzMnSlJrOcoER0Rf9DM7JUDOvdeux3nuydKAZC
	 /jzufCICJEmjhENM87iu39KjO+w2Al6Ub4csDeHyAGTBNG6F5N7GN84B2yYTv5XL5S
	 vfTDXKPEKXKSrnk+i8/QBmuVJFjfbpqG+Ar4OloSrTNLyyi3P3ljag9iEZdBst2CP6
	 T4hHZ5q3AGFUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFDCC5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624023369.8969.1588281057532249737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340cd0404e06441eeb95578a0c605cc23661ee7c61ffb684bdad7358fcfd4b80
Date: Sun, 09 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786240233
