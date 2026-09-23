Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BF44756BA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790202036; cv=none; b=aMW2srvpS/xQJJvp2lJ+wteGKzQ572k4iiwWp/qRc7OxsLx+f0cI38nMcLtVwdS5TMKVBMFl760rGOwQpvSKldfM+MvVQsn1/cXnZ6eYPeY8V3jACEycxtp+lYKbieG5IJ9H7W8A8Ly7w7Q1z5aMvfqjpYkyb+MMVQpWP56gzxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790202036; c=relaxed/simple;
	bh=WtYOkNNwbShARt59JesAto6gj4xHLPsfgzyxYl+Zj+Q=;
	h=To:Subject:From:Message-Id:Date; b=DLZCYXkHcAc0KNhXJry2aI61LJKkCKtSOk9Sh8lr3ZC4x3PlPs8yEvhVh4MNvK9SbwwPbgDVkAQfbjTNUzqKYsPjLokyC1PbgZtwuOWAX7d7hkIgO53p70/joGNgfkWzhfBK38OjLo+cYU6JbbNBG1VZNAjefi6r1ejcjiyiVBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+rxx7tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+rxx7tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DF3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790202033;
	bh=WtYOkNNwbShARt59JesAto6gj4xHLPsfgzyxYl+Zj+Q=;
	h=To:Subject:From:Date:From;
	b=o+rxx7tgOy1tcSw8sAG5EtJCJ+a6vu3Dft3lE31qDYX0f4kOyur2GxyTC7bG0twnC
	 FA8kMsStGAlMkAhhm7mcQQlCPA4vh2mJ+sZ8MOCt0bGsT212+78Wkj8kS14jc4XS9s
	 8BdK/qfvqNpWH7nFwpAQbnM6XSdTlCMZo61j0OEwdyDtNwIYtBHUFXfAPf0+k8pwBT
	 zq3ZRvISz0+cRqzWB/crvx6aj7Zed5Pl95ys/+FgImaV5poXCfn0qnD31jU/Com3dF
	 j/KOmTYMvCFORHuDvqEx4tuTgMfGgX5OIvGYSOYHJokLvCLMHQDZYj/dkIkpZn0S9Z
	 sq8XVGU5wnX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B63C9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020203374.9624.2614473519736110591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a09e3262278067577c8a23b75726bbb455c9a76e6c86b1a1286506bee85a6c
Date: Wed, 23 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790202033
