Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C08A1DA60D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762492194; cv=none; b=r5MXgYd7AhYUJKgzPeZVuvrByT8thZ1AbQ5TzE2R0feq+9M/K0fE2irqvHkn8RK6B4GNSphFpkYd7wR8lvfqBqn50fNFVWMZ+yfrZKZoS6w24hYjPGBEKlYBwzLPytKa6pEVWxxZsw92MeqqFGLQzaM7tQihHoKv0Yy5UwazTjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762492194; c=relaxed/simple;
	bh=9eLCmUK7BZszHfkbfLMdqpxSTR8zagVREF+qtqrcn3o=;
	h=To:Subject:From:Message-Id:Date; b=pdk0Lh0NYMZWsO+DXO9DAfrVHmErew+z5yPi6CEtptN+J/VhbrNJkCtF6bwHZrtPYf1sbYBs6DoCLLqL1XQ2duDfFocvXUJXToC5MWq2gSDNyuN2nRnXABbExtt36Ku4tXvXsnuNjgATOpdK+vxRysfpGE7EmIUTtzDBM879+Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOFY7nao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOFY7nao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B603BC116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762492193;
	bh=9eLCmUK7BZszHfkbfLMdqpxSTR8zagVREF+qtqrcn3o=;
	h=To:Subject:From:Date:From;
	b=vOFY7naokxH8t+OtoqA4GtFWYxbZVn8rQpj3g3xKa0LlGE9bjaabljg+F6BG12r6n
	 /YZzEcLPm8CDNT07vgPQHL0iZGLziZzaq2BmK/Jr1HBW5AUt348qLhg9qbEDZ14Fj0
	 5/3nhTyb4KRVCLXQWLmY13+vX+QL+OA1FYmOyVgLPbi3bYXh/bqmq7ZouA0xbbqy1N
	 V83JXYaBY62T8TDzxxabNOSoDlSzeMwAvaISk1247KBPp8kgYXZCZ+uHgGxI2HTDrh
	 VnGqUrUH10Vqnk2gxp6EMRb2kWp3lqJtJ5msrONu13hkWvPoC1rJr58bslI24JRawy
	 v4ZpD3eeVHORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADCCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249219366.13206.3878711969532985126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb030f36bb51581c6875ac1cb8a54733ff8d32eab024a5a3e968e2d98196c5b
Date: Fri, 07 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762492193
