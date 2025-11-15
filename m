Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1857617C21E
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763171994; cv=none; b=RDjB5O6pdKLg9BL9QebLmVz7lV6PJDXffXLUxljN0qoyyQCXKHJSNPKwQWzuuXmempCFVOmI1AsZ8QYZEe+n41ZpIVgRwXOWURIHFCpD2qgux64YGFmCJE2/HE2gWtlk4zl4PPnmYSB4lT5QJQwfwK1yRALQzR2Ur/l1IWpkd4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763171994; c=relaxed/simple;
	bh=y3d6W8qef1RmWXWOX6ZcefteoQNtbHyDvosbkpG5kJs=;
	h=To:Subject:From:Message-Id:Date; b=Vn0MedhqUaDZV3wuol7NV8fNwpGE4MF5eGl95iQiHA+By9eeF5aTy2CnDkQ+z+HdFeQJkUJdI95r/lhfcbh8F0qXrxCowSk4zdt7XtiIXSJHdHPlRv6BT7StAJDKm6yrmhR3kqzGB+GngiflVGf0QF3b5XjqhB3SXjShrYqQTaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0W8t7+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0W8t7+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2D9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763171993;
	bh=y3d6W8qef1RmWXWOX6ZcefteoQNtbHyDvosbkpG5kJs=;
	h=To:Subject:From:Date:From;
	b=g0W8t7+0T/SjYJmNcKxyB1Sb4DNGvTJeudNh7vUB7IljVP+3zlGYBfC4MO6Doa8W+
	 ZydD2fpRdHLBlV6nWKQY4YHh6+xmUih8nuLK3knEy6zTsnqxTfLa+H3psfU0pyhH8v
	 UQGAyHySYS7feiPYghtYHquKvTRqGsqWCq2uC+tww02A3boVsJ5Iv25JFtvMbvrT/P
	 11puFbpS7ZhwPOdZwx5zmH/DPVTwdARisowGPe6e1fhBxo8qPKkRPlzlI9eU861ZvU
	 gBPkuQD+oh8M0NcVVAKPmoSlf31WQKKIZMtEg+BvFla5lqbLmgLi1VvaL6NX0kPDXS
	 TWHrKcFZMllPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005BCE8D7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317199358.21782.7968273797827797257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aca32fee4c9b460dc64a5b0eccee91c54656607513e87bf8b6c38925bb0bba7
Date: Sat, 15 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763171993
