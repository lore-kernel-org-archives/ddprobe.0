Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2223603CD
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776078454; cv=none; b=SY9t3YHWQq7zOwI1/k0H8pZQqk9CMKfaxqOiGw+kZqE/aB4jRrhCc1LJkV9GpyzsRtg3TMo7RL4h2y1ok3caggfDtwVqJojp/0/yBRPGr0ltQ429/ATjV4HMrEaoKS5lx5EzTCsU9A18LbY43VVevVGw0qJCidz0FLf1uA/sNnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776078454; c=relaxed/simple;
	bh=B6paOBX4GV0gD7oksm3HfaNpL+g58AwLDcrJ5W+uy7M=;
	h=To:Subject:From:Message-Id:Date; b=MUJDbDu6gMKlezUUzR7Wehpr3oU+hjPKvTseXd099guwebcRRdRP14KL0zRqOV91JY/ukHlcgGT2QKnDzcRer3kOFFFV1wcneZUyCVc1rT+8ANCr+gX/Ei1DNQZX22lbe7B7Le4PUl9+sFS7UGQWpgcdy2gIEXEHlkGWS/WMYY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4nAAVwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4nAAVwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD87C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776078453;
	bh=B6paOBX4GV0gD7oksm3HfaNpL+g58AwLDcrJ5W+uy7M=;
	h=To:Subject:From:Date:From;
	b=O4nAAVwnzIyLYjTqr9T9YStV5M8ZOkCnynBu96PgmAXseue58On7zpoT1BpBkfI6E
	 fiN9/Up+8wN/BNNjSLse/mCuTzy8WFQffaeGZDOv4rNmHtP9mCOnSQTWGs2qyJJbmB
	 VlWFQRFWwq0cCMmSr+yTlPmTdurj3pftWK2WOenMFSE3yZZuInJj1nGpTMWnIZc3Yt
	 WujqydSeHKeYV+rSo1dN/0MnkRkgIYJZ74eRRLS+aP28lHfzwIt/DqPi91kxmW47pu
	 yuvKaRMokncaIAo3sIc6p6yKx4vgnU7wBRMnxhfiaFQfuq0fq2PAouISj5aBdSYc8l
	 CWQwoWAk+5p+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF55EBFD38
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607845369.27586.16632520264858215217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f78d74b4bc98399f8affe9283f33595bcad29c939d0df86e8bc1366c47b75ea
Date: Mon, 13 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776078453
