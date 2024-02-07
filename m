Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180583A1A0
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707298697; cv=none; b=hVvCWFm3yOhRjK7PFDlJ2fxRz0BptIZJXhXYszTE1IBq1dJhEHxnuA43A9gL8RCENKPF2pCitwBvVSj/Km8nboEa+Ry6JW0LF2zY6QS8bLL/l/qQOiAbuIdwVEBaz3p8FENCKGqd7M4gazlJ1uYut0hLpTFdN65lp5dEJWbJ20U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707298697; c=relaxed/simple;
	bh=CgzO5DtXONnGF33nTBvyl4bOQ8nOtGUTzJ0QBVNumgs=;
	h=To:Subject:From:Message-Id:Date; b=b3zIn037D9IkhCyVQQ/3K1AHLIw6c39IgAXk6dsYM/WAAWrENkgzTIGr4hIDhQQUuIuUIkYI+E5HOW8Z83ewVNEKXhj24KTtvFPmW3DZw9oQdNL+OYgqgT1yXufjFnOwEiDGVfwNCn1Yq6CaH8bFF1mPnRQUQbJEnIt4J4DthCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzYFVwtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzYFVwtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5B1C43390
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707298696;
	bh=CgzO5DtXONnGF33nTBvyl4bOQ8nOtGUTzJ0QBVNumgs=;
	h=To:Subject:From:Date:From;
	b=OzYFVwtOhPzxEZqYqwnspdkZHjnGAdl8Rtf+zYUZAADCundW1RSGUqbjK38qndX4G
	 aZFFO4mvE+TS0vzcCKjhtzkZUocbcCmAiMvJiKco5sTT3Xdgd/zqG8lxZX7dvLPzAB
	 EjhZvGbD90BOWRkWR2GMk25sa+m8QYKAf1Qx9hJs//GrALZRtOJzo83PbfAdi61Cbf
	 CgCF/CUGxo35BsNtjn6+vGVJEU7YQI9zxpteQdym7kgrWgM8R9unx4hOVyuF2auzqf
	 FQ9VHG4QqUiZrGwqpqQHt3mO2ZjfwuWdGPlvAHE4+xGfsjZtTKoTaqoZDjAWZJudaV
	 yjp8IEnxPkiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6621BC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729869641.18324.6347767756975153700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc8f0db6ea97ce4936aa85adedc3bdf9c8baf4f200a0f36b2570f1e35ec5ade
Date: Wed, 07 Feb 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707298696
