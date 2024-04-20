Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF58A48
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713579623; cv=none; b=Xgft7vvT8KXQjqJWVmvcneYe5hZJPDc6LVDBddtl2RnOcjO6iqcvflKCA3JJxQNdeC549LwvQ9ja8OcNCFsllv89Bgc0c94pJ/rJs9Qx55x+MNOFN3WBHyejKOuIGBxYengspR6h0nMsY7jRyLpqpJ/3bbwWgg68djYcqujG6ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713579623; c=relaxed/simple;
	bh=Xt+4U7o1eKaMlCxbzGL8aPXTUpC15se0UqDv3e1sESg=;
	h=To:Subject:From:Message-Id:Date; b=GfT6McZV0CJ8yPM6AAp4rC9L1/GWAARwqY33VOoFHLbZAiyaqKhYa6N5I1pC7RXiJs4bGuwy5XAKFcHTI8E+xcA0z326DUvuZcQ2G+xaS5aX6VzTxhQT6l6UsdjYnP4fJCv0WywtUj7/qZ6YCeU9/vdhnFKWuf5BCKHCJMbOXzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRnltlCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRnltlCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC181C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713579622;
	bh=Xt+4U7o1eKaMlCxbzGL8aPXTUpC15se0UqDv3e1sESg=;
	h=To:Subject:From:Date:From;
	b=uRnltlCmACmBySEora2f1/iYYfFv5o4m4XRczNzFz5IlDeMlbj2MX0oFN2Y65n1A1
	 h7hngLYjT+INYcXQ4GTUOm00VfGmT5XOb8q/hMRAl57fdpVXYnL+gLx4eoQuHPj+2v
	 N5P0//STDDcZgfsUzZ38+BEMYQMnTbWnaJl2k0Hdhaaj1mEb8Gh14kKDYsiXn5/sNh
	 4m0JO6vS63tG8rEY0bJNBv+jv8SM/tkUaY3n/IlSaKH3HAQSyOvzNSXFxdEPRQEMMA
	 efSxFE+ct0Oamu81K18nQJYI9BeZgeOiMx6BCQu6DJaoW6PDHH9TXv5zhVmtoL6wqi
	 VM0jaBfCJ9Mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D0CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357962276.30778.3774649496013381958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9e09e10c279a11bed9be7cfb3d1c784e5c83328d038eaaf4f80efea8af518e
Date: Sat, 20 Apr 2024 02:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713579622
