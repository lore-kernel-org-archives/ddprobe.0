Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CAD322B
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748189394; cv=none; b=E5aTZ23ad6uU9YScUL+UjBTi5fR1zEKVx+lPLpam77pCyFAA/5i7NjEWfDiwbcPNy1h5cInlBuGO0wWnXn01gp4mrnhdbezYMRhTYqkTfrLUT2BNsjaSAgCQR6W31kxXJmFMUjvxtK+hvZdfJdxTydoz3HwEPUWKUWhoUbF3Xxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748189394; c=relaxed/simple;
	bh=omUme8NGktD85/ydvV0vr/f4w5nD6zfVJAHp3WfM0a4=;
	h=To:Subject:From:Message-Id:Date; b=c7q8CjEtdu6wQVnP3VYcFIJQJGcPiSR6cmndVlu1eqQhNVkZzk42+0dZTnWzMS5AyB7ILT1UDIi51CFoA3F2b9CEyN0XZL3eQOLJuT0MmFS8ex7rFCnWRuBgaxfqFoGwv/HjfDm8Yhdi/bhq3AYKgs5zQM/kA5ott5LLIkxDHwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D96kfgKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D96kfgKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2488C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748189393;
	bh=omUme8NGktD85/ydvV0vr/f4w5nD6zfVJAHp3WfM0a4=;
	h=To:Subject:From:Date:From;
	b=D96kfgKxpc6feXV5qCRSiIaoVsGDefprfw2DEtWfFcIFFDPKmC2On0xf1Iv0B65pQ
	 2tCbpqetZvd7gCLn+L7Xt6Z+gtpzB6Q5Z0kAdsNmuj1LEWctG17p9yQHf+wIDYtYoT
	 J0LJpGYoYBNLHd1izp09zI+t9k4wgXv9PdZhyxu6PAMA2tsYwy+JcE1dXcjaR0HRGG
	 8OOupve6dv3rg+aLSPESsF3BRnW53X5jDV/Q+5na9/RfQMdTYs4DHF3jG5laFhVJV3
	 1pjZuMRrQnochpLpxE5PpFMRyv5ptVzjO53t84eRC043zFq8joq335o608R9xDl2N7
	 b1fM6ccUwuOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F491C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818939357.15863.2791451040096752175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab301b17b38743dc7e9688cc3449fb077c5c949e5e765ecc7725a28a367205b
Date: Sun, 25 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748189393
