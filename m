Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB6C1A267
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775373334; cv=none; b=sDXFxzwGi+GooJQk1PwGYf/eyf5tNH12J3SO3MLNUAcc3wQh9htrZtZzw2ZG4tH+u3alx+wjcPptUMtJtvMQKUvVyQHyebcz23IY81v46Xa0ObEwa2u4ceSa2kf7+lqFu5jHKHkxeEJaSTz71LlJuTywKJIhIxcuQbDlAkT7Nbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775373334; c=relaxed/simple;
	bh=4a1UTDhSb4kDBsL0yK1hR+9tt0T1eg+qH73ff+6V9+w=;
	h=To:Subject:From:Message-Id:Date; b=LC16tM2MnIy23KK6AEHcLDkPaPRwWpqeFJWbuu7Lxz/FrJ2K4il1ZLiyfHd421qMMHAJq1RebP74ziLTaf1WQxgDvFat7A015JvsNALinwe/IOri1lW6L267pVjlmMU/leggVCUvaZt9tBJL3CvzPuCLxRymIJ9t+aD2uhXjdag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVP+Fq1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVP+Fq1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69FAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775373333;
	bh=4a1UTDhSb4kDBsL0yK1hR+9tt0T1eg+qH73ff+6V9+w=;
	h=To:Subject:From:Date:From;
	b=QVP+Fq1qt5HNSP68BrRU/GXevDugkMwm3RNt4Z/6UdnhhKxx2GRczWQE8RzNrtT1B
	 Ee8M2x5epQnb1DmpDT7vhWPtE/c7meJ5GXX5W1QX8NjpUrynkJQf2TVWCL+xSRB9o4
	 1IbhVGPAdjZ4NuSrECZtRhupefr7wkb5ZweUodOdkwcVa/pfV2g/yutVM8taPvJgqB
	 6M5gYpcTfnS5D8wsHhEPHPgdnpLn9sW9oBIecWSsNGlHpEEsl9RvAGuHWUamyQyGF3
	 zBGu5Zd0qCpJJu8oDsvkmAGqN1HrY8PZxMF8HuokYX2FSeQd9NTOYSOi//inAHEzd7
	 ccxC5xgs1ttlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF911E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537333374.2272.7803560255978448237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910df627fe3d91ce601c0fefcd77a4ecd2839f2d6c0b34ffc5eb48493d734da9
Date: Sun, 05 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775373333
