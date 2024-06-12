Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C86717E8F3
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718202503; cv=none; b=TR/FZBV5lhtHmUHuNKUYCxbjSwVzv8dFYRgccqYDs0EgY3Y/NPR8KQ0R8Tgt9Z8WgKNqzV6MdwtoQoKiN+wPKzUKxPSGcGmuuXGQQqxU6IUtvxvrTQ+mCknbC0DIdcJ3Fe79+WsfcvjhAz1x9I2OqtJIjYDtNGq2BVGB5YbaO2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718202503; c=relaxed/simple;
	bh=t5fQ8kGQKr45LCTgxU46HoSTmHq+TC2OXu4RcfmA4CU=;
	h=To:Subject:From:Message-Id:Date; b=H3x6zilX7ftLliGzabPIMJkAbwQr6tmPO130FNHgHyfBiHTQJSxn6spoxDcVdp3iy9T6emr4fKJ9ZTOhyyYKMlM6m20ucuw3shy+mUNtz1l7oy898HC8ldcDfKhVDe2rgF0GIwl1pdf9H+z4tVWHa69d+TSJV3iAEGScu5pkQmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvYXA7J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvYXA7J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D30C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718202502;
	bh=t5fQ8kGQKr45LCTgxU46HoSTmHq+TC2OXu4RcfmA4CU=;
	h=To:Subject:From:Date:From;
	b=TvYXA7J+DOG62NQX4mJ+D1yH5UyjPhZ7TxGpOJGKfP9Ut2WGxQwgIYnos+lt/Cin1
	 yBU8/yqHzKne08Ph7LcfIKDxl37quy9BMdSC1DyUpyh8wS3DHNXAGmIpiRwq5wN6xj
	 Ig1WcSE+oy5bRWY3Tuc9+c5lkYR1tAnuglxdy0eC5VRn/kT5A8ba9B6tZwnJ8ELm8l
	 WlmkHASZBz3lsGcOWiyIO4AmM0c001i8kA2ra4y4x3aly/sIvfwAuk6FK8dVFQ7WkU
	 vf3J4brxJ3kFtiK4Q8g0bMQssDkGAcV0QstK8UPmYM/DvSlrYDfIQmwUfVAG0+Dk6R
	 iX7UrmOlXf1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DCAC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820250279.8422.1334486220741191987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab81007a47a2c136bc152d03aadf4c4dabd1d9221a4a86685da358c1e77cc9a
Date: Wed, 12 Jun 2024 14:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718202502
