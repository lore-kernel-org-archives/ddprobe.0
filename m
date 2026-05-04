Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BACD38B7D8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777935454; cv=none; b=nAcyY877MjoKZpzstYzjSYksaa43ZMfmr07OvUjAppSdvBbDSKANsPLyL7+3wR3zyb2IHdlVsA5ABbr4QboDTT57PNdg8d3PBkXBa5O5ghWBbtza3jGL5qxE7OEv3hyTRjCL9eDUxU4j0XWOvwf8S7OCmibBnvCBnLEfY4jHG0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777935454; c=relaxed/simple;
	bh=lq9AwSeNqv8pEJ5k6t1otYwI3cjOMVbMLF+9bUP1fVI=;
	h=To:Subject:From:Message-Id:Date; b=lys4XPHz5H2xK2vydTsuTXKF+ORZ4NY/0aDxPSHu60FohkUxyYJj0/fh8CwS8Anu/HP2n7eSOIFobAjFwBZdf0myqbzLEbwUIhxWsaxycmPG+RyzoPU9q5lk9lRypGddhjMzO2VJcddG9KLdV0eJGslmjyFYOXLHrrGl5+ZFX0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LexEae+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LexEae+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0317C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777935453;
	bh=lq9AwSeNqv8pEJ5k6t1otYwI3cjOMVbMLF+9bUP1fVI=;
	h=To:Subject:From:Date:From;
	b=LexEae+/R+0nCRuWPstKl7+WhaSHs83xD5gJff4jHGTS3gBVUn1QvmwPxaMK4F3/i
	 ruoxSNyJzqTF1MJRx40hwqw9UQ1kmvLVqhCcmjz3+K9k39onbXo9ps3l5e3Ccw7tNP
	 YrrEL57kjDHksVG4n39iMyXLTokQwXdxQlqV+VY4LaTFYUEBMHOPKCAwSvsRg5hR65
	 3Y1/yDTZxaOBOPYs1xclE1WIXI+9ijpqq7aKd2iMP3BIFkqQTu+z0932dK8f1P/Lra
	 Pkg5RR5QfuhlHwn6UnDBYL9D5L5bRULjOxG2nqXgjOfWvfEbM4t29mnKeSgSMxVa4e
	 mCzr1qYXgRbIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB60CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793545369.25526.1722583393481785168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2178b6a45d300305bd00dbdb84061dd1e09dfce8ca277957553a429b0066d747
Date: Mon, 04 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777935453
