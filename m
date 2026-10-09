Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727E9397692
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791516034; cv=none; b=dkfNEIM6fy7BGufbX7cYxrGzIKZWaapUJxdZX6dDAC362K3tLM3y0iBwmKYPvHFX/p8yoXFcNfkeAnZ1egc/jI2InIBfpW34oz4vSQey+0Xx5mFM9ZhPk+vhP704RqchwV2rmcMbcRIzD+fsYZ9kj+YnisJfK3JG3pfFxaWz/Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791516034; c=relaxed/simple;
	bh=ftYXg2pNfhRbFOJIUW/BcIq1m/JMjKrKeBflItMsdLc=;
	h=To:Subject:From:Message-Id:Date; b=A6WpBbqOu9K/ZyeAMA08uJZJP8LFYJuYghrDEvdOkkUsH0+pEtVOuV++VLUmMaTAr8bW0N/ByTDJYUiNPRJsD5heukAYjuNOn8egZcZa76SH4/qelfRQV865Muah4Bqkvz8ko89UOHs8AJgHgO2b9+bid9Q11XmtAeMdhcTA428=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=et69IrvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="et69IrvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC651C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791516033;
	bh=ftYXg2pNfhRbFOJIUW/BcIq1m/JMjKrKeBflItMsdLc=;
	h=To:Subject:From:Date:From;
	b=et69IrvGDUbGPcB3KLboVVySFfii3XJ6ZYlMeAPev5qzYo/a5maWuiQ4bEaZeTGh7
	 DI3ioXXBPPwh/MljzBgvasTJOod0G2BLz4ZdKxEM4EJucaYKED+cQSmTeXa9feqhfx
	 mNu5nPP/STNp5FLqXV1HHK75ieBd2XAVTXTnqva7/u5kWtif7bqaKKxVJHGBZG2YC4
	 JKH1K3myZh1+KHMlAy1J3v288LWEOfQnkddVM0eUZ2lKFVzbQuXaxV0JHqRIt8SHwB
	 A08Kk1elHJOnrKNIdJIDgSCkBNYwVJNPYjEmK4Ltm9C9Vije/KYUTpfNZDU5Ec9f9u
	 UVbHrJoqah3dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA282CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151603368.11019.8214335635059867043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07883c61df3b3b21256f67fdd79e5528c40753cff8beead7a3fbead7d6b402b9
Date: Fri, 09 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791516033
