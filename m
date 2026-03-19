Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDAD3DBD51
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773932094; cv=none; b=I6bT9FqHkjZ37Nb+VDLS0FBRYuBbnzh4ho5dgWg0HxP9de/+zkdSAygVeI69V6Pq3SqDwzxqDWHqGnX+sE8dEyaajD+FBav/tAQC8JiWn7Qr0LnShsG4XJ7MAoVznsg5f7Lo5mXX4AcJ8i9xcNhNUAHmRU678O8xdMqexYc+0g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773932094; c=relaxed/simple;
	bh=xsG4a4NdiN3YpG0yChbtCQCkIGfUBtFrAlgeeUFk4yI=;
	h=To:Subject:From:Message-Id:Date; b=YUxlv7jb+0VL/ZssUKEvDfpAghuA3XltvfxoCd5DUj6wduZZLE1Vtz0q2jLE5LTPnd7dwffoYIHTR0/g8qO/mpv+lQVLk1S6M1DMbXsK8luRhosT8cEdsPOt3Gnp67uKqYZN9WqBtx0on/jLG8/UVAViAd6CfDT9vjr0BHWZuXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdvLUltf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdvLUltf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F344C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773932093;
	bh=xsG4a4NdiN3YpG0yChbtCQCkIGfUBtFrAlgeeUFk4yI=;
	h=To:Subject:From:Date:From;
	b=hdvLUltffRt2VgadwihaehdUeziMiYsOzMWxo6zbePf6cCvAzsWzq74TAyAvlT5fG
	 gtZ34PeziqAPZ1HDc/YfKhrI2+Q67hq0/siUBu9yq5RkUCyLjk3ptuHotAPJAICjoZ
	 kH1Ssq+aY8YQMOT94AMpckfBV2TkhdCvYgaZCXyou3+KGrgh/8qe+FjkSrAlzuIG38
	 T2a4zRfBLj1WPS2Qg3I+JkIfdvzyZWXj743ul9PtiokATvyyDuyij6TreDSydzZh/8
	 3SXM7ljL4P3fTETn7SfSaZEx9MI/F2UzV4DcbhaurOxGSiTmlUFyBvLuJNtcy0x0Td
	 Rieov7zD7RsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BE1090236
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393209357.25188.1970000690733446457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6815d6ced74d1033a8a12618fcbdbb261ad73aa741c4be390e9d8ea64a98f676
Date: Thu, 19 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773932093
