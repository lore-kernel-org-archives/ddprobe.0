Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD913469EE
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755536394; cv=none; b=jnNbkVsOLtauei9it0iGVioLghCzXs6ZMEWpIWFzJ24N/tS8fwjI+Cmjl0Fbr5GLzyOtx8XFeUt5+XnevYZ+s2weLHrev0/jHQyMD+Dd0aUjMTgg4ex/4qBLjjkS5udOhvjOV3Mds8St1+iWfldeD8zMV45gSUJ+QpfT0zUR6nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755536394; c=relaxed/simple;
	bh=1IxI+2ksfnVYRLaX8wB7UmJLsIKqoBSd9w1HeWQUzEo=;
	h=To:Subject:From:Message-Id:Date; b=A5eUR5qvsOOOrOVrIVVwzPh36mAovwu02IjMI6zvNX5HiN2XEQ927OJ7NvZhg6rZokhIOcF4IKLElWnryxSl5d2+fuD0pd+RkQySf//V28abDD9B46d+EnHwxWtghrKckHrRi+86D1jwOzkG0rlwaUyTdMa3iAs7VvzWCfXcDYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLcRQ1Si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLcRQ1Si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB5CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755536393;
	bh=1IxI+2ksfnVYRLaX8wB7UmJLsIKqoBSd9w1HeWQUzEo=;
	h=To:Subject:From:Date:From;
	b=mLcRQ1SimTyJTYzP2uXxYG17OPYlO1WHGH+AQp8jjpX609sBYBvL8rbV8gwz277Ik
	 GdJDxCbVTHY6DIe+mZbVo2L47nfbrc7byNCMzVlA3HloR0e+lYWm5UfDNBmfQU6mRg
	 24+0339b0RctSTcxnYG0HegmVr5ZDAHBkis9QrAv4GUfDJ28KxFvArd0tFzmIpBgTa
	 xIugig8daiHahY0oV6n9gGHDyTv91rj2ghsU/dEooKSAr9GaMKX9LtTGeMX+r+X8zg
	 Tk2vfesrfo28D+MZx/W5dplayzQk/Sg+n9OBgRZnDDKYe3IM6HUGRIT7CQf8/qnC47
	 yTIccSgGxKGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F284CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553639357.21327.5280091051998482254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a58877ecd6fa0592c3c0162787fbc867169528ef860796394939e99fce08053
Date: Mon, 18 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755536393
