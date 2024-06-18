Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F04182DF
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718689163; cv=none; b=D4g54W13W2gcJr0K7aLTARF3Q6gtXQxCQgM1jOtePv3g0qzeEPTCV6djYUedEdQEkn1f7jmEQUGUWlw7ujTkmbdrKXj3Xrd714qCdi2qej3aYa129LQW+cIpQ75yypOzldDy9SZF/VDkUFp/UXkrrp4mN1xZS2w5scnluqRssx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718689163; c=relaxed/simple;
	bh=QfChGNl9VDtKAw6I4WhdAS/9JHzlY7VZMg4VctWBnPQ=;
	h=To:Subject:From:Message-Id:Date; b=dJ3B7s4XL21RZ87nw2d2RKtHWqi8XiJSYdya/pldCGbngvqI0pBiVeuMg4tcdGuGCXdh9Rym3I68Nw+SfkxFNoOr0YIY8kPSJC+gR3wX3nlUmJ/zOxwMxIS6rufTY+MACvDva009UokGTQVxDBPYmbmuhCIdYZ+Osb2AQZvCP1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iq4RzIXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iq4RzIXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D659CC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718689162;
	bh=QfChGNl9VDtKAw6I4WhdAS/9JHzlY7VZMg4VctWBnPQ=;
	h=To:Subject:From:Date:From;
	b=iq4RzIXBnCKcF8aGQtGO1F4Z+Nl3Jz8HnGHFg4XeR2aL5uXQ/IDGweHP6aj5x4IwK
	 F0BQ+b+/ENW5Wkk8WdVD/Gy016CjyzXh/lM7jgZBnI/6rC0vFfMruJ3ceKTod+AJE9
	 hw/JpTTZWCQwTGhdyG5k/1I26+Xfv7+erejxNTjvIT3E1mPmiP9tqJgqMy1XPvn4WO
	 tCef0YXWvgx+vVbDd8m+ccepSt41uRnqVfN7WIzVFpTTTTWCCQTu6d/HOo+Uy+rC+Q
	 xOIwSF2Io7xugMkwcRyRLsLNQlF6VUQuDa9TggzDUpDcLS2hWuJzZYbcNFz6Hd2k6+
	 zzPGpmb5WDfMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E9C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868916277.11246.2776785014065565077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d6ccce6f0c24a3141ebafe1b42aa53281d9a1d57e0eae61f5d1af384cdd6fd
Date: Tue, 18 Jun 2024 05:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718689162
