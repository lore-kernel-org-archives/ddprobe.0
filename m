Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7352F1EF01
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714851143; cv=none; b=az6Axbvgtuzjaqt6OgHWKsLwnq1DgQuH9tjORPoPsuJlV5ftqGpdYddtFTbsLY/KC7Nrq8bX47cKmUA+qiNNJouQwCj6sNR3GmS2Hr15OVlO45nRoqlDnSo8kVSpX5ouDJO2mMvaMkMODS1LbxIfNrqDE7r87djHtV/0S2IC0VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714851143; c=relaxed/simple;
	bh=qKIeb9GyF17E66eQC+b2s6K4sILsKjWe44SFB9zs4LM=;
	h=To:Subject:From:Message-Id:Date; b=Zl2CAWEWZXhfXANeEj3iR60WYpEuI3M5kfkLbTTyfw85PRIiEutH8ka6NeK40+xnkywvpIzrvZDJECT1CPIyHlxSpUnaQ8hwQzWQW5WbxV3OiOQDyTQBfPYd2X9Doqy/2+UqregYAPt3z+fm49fjGHwIggfcwXoDwzxuwqpc+Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGZiCOsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGZiCOsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43B7C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714851142;
	bh=qKIeb9GyF17E66eQC+b2s6K4sILsKjWe44SFB9zs4LM=;
	h=To:Subject:From:Date:From;
	b=vGZiCOswHHrlZsOjyMsVG0t1h4IKSNwNfMZPJanwO5lRZBbRhYw1WgYfYVzVwQKlS
	 KuxYah40VcwwA/B7Cfn7FS+W4XMlXcFtaqNf/vE5/+rb2IK7JtY+Tk7auE1vJGUQiy
	 SbCOjacg85PYbyV38MgGx/7CUJLtUw9GX1w4acMUM6ujGpXeEYHps87l5TSvXbCO2I
	 Yuy2zrYOulsICqam8fiVmaEk//n1k+HioIKpHXU//RgVw1VOQe6K8MJOgg4WWFqEhO
	 BaZpqKqYEEI+nBWaoS5PfTVCUb+RmRLeGfA0vrMPO+ZJqLSz01e1+Upy+4hEgmFBKf
	 xRv+TFTH2jGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB401C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485114276.27978.16029717954870172443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9374c3284d301ee6227508b2834ce100a258f2caca44a7a4a652d70ee4ac77
Date: Sat, 04 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714851142
