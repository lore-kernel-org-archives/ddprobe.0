Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC9A298CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774160694; cv=none; b=m262Q5e4CniJucthJYCeKFsEti3YxjAXbNRCLd96MNRCVSv3tqLiFYZaXStVtt0B/V8sI1JwXEjjSqhIWr++ZJuQ9NuoZAqC67FM+n/o5MLGzj0DqkKx2f1XRlNrEOlvGokAegpCTEIFL8tddzovMuuFRa3XgiqV3/0QlaTFtoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774160694; c=relaxed/simple;
	bh=ckmAffYZ4j8P4rlxLvZxWqTdDmqK/XyZZC0K/YAHSx0=;
	h=To:Subject:From:Message-Id:Date; b=rGyDHF2oAX+84P7iwamfpndF+Txzf7S3SkybinKc2tfcowzOTzlv8XnuJnJO3yAMRaPkskGDeta6WLacOWGPeeibqO6ssae4RJmSyLMl7LBgfj5T6FJ87TRLj9ZMREUyQkBGfkiAVzzVukoWZGg9Lca7dM6DhiJOB6DwmuITOBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKL3RQZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKL3RQZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774160693;
	bh=ckmAffYZ4j8P4rlxLvZxWqTdDmqK/XyZZC0K/YAHSx0=;
	h=To:Subject:From:Date:From;
	b=NKL3RQZYNDwRdBpGT4IwRjTYDG4AmhOJs+S4ZcBV+Zs5JZ1NKXhiKU8jdCWBU0uJf
	 WUGZqlcVQeFa9ot4w+2L3eSjNgDjmOnOTOL+FriZyNRVoayEwkliW9HyO8THTELTFi
	 G2QlQtMSmlMrWJ4SzU01lqGRQeuFdeK0h4unKGuHgrCvcuM13km8fg+Umc+XhAKJde
	 DTJj1YdPRzrRVTgrAYmLwumSSZysU0QbEFb4kfr2iY+3xLm/PbI1lfsBAwpHU/9K2Z
	 i66oTZvEh2vpjR92wLN1+A3k+mmdO7e8szOO3P4MNqKy13IvYlV0VSR+kwPFYv9rQw
	 92PNdEZpxB2Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D6FC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416069357.23756.12633313681124132162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4167a6f98e4efd4e44265da23fd439f26d22ff1afa8b3b7f09fb1cbee652fc
Date: Sun, 22 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774160693
