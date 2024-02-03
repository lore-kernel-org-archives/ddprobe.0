Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFC280B
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706922497; cv=none; b=NSpldM6xFIR9u6aGD6AHgwSMb9aVFOZzvF5FtfBpnN6X3BpzmFPlxfQFPQDApT4dlqMW8/v0ZVXqQlHt79eLx18QIKZCm8qT8hzsfELHavMQ9H+kDOdhMXWZP6IqkU+d1U3ZAHZuadNZKu8JACQI5CMPRb4/vV00oXzHtkGUn+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706922497; c=relaxed/simple;
	bh=4veJApKzzzFpfQ/peBCXJAt1VPdnIPOVW+3h6Un2wl4=;
	h=To:Subject:From:Message-Id:Date; b=BZcM4vPwEVMMCAiqB7c5KWN/tqzw/l4oFqbbwdUoX6h8zmIMAI2DZ8k4dtwn2dCL4nGFi3scDAkHwzCjCzleDfKvuCVmL9dkHALkgGPyhinzn75pdJYUS4JyxzjR8PzcNt5Wl3J9vLJYhOM6EhR0hce7/rKxCNQJXf4pGeOH+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSgAg1Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSgAg1Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F71AC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706922496;
	bh=4veJApKzzzFpfQ/peBCXJAt1VPdnIPOVW+3h6Un2wl4=;
	h=To:Subject:From:Date:From;
	b=TSgAg1YadKdVpqWTEy8as6xRfwAElkgZJimjPYA4qtSVibFbx43Kb8+kIxSxmuYX+
	 kmFVSu8X40EhIeR2fyWogcj1mrgp+CjMry7EfntkvuOVczNL1Hnkq7eZQQ/yrxR3HM
	 gT88QO6my6v/kxE/S1ieTh/RTsOAlBzWWc+qktlM9yJ2qzI1ocCDFZzF1cZ5EyW5GB
	 uLQUK4yEOVO7gp6X9XG1zLCEW7NbeoyJ67JEzz2osT9C9WYAEULL+3Wloeip1pl3b/
	 TieKYpzTpeZz5MEZ8q5Bvx7Xnid+xQ9bDrCqN9xiNMNHeUWAPdr+kdT+ftQtR2Mz0e
	 VQ8Q8vk4x9MXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E50C48295
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692249639.25726.13829792994141634541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09b76a7f97ddbc5090d9fe35550a2a3d047b3ec0afff9db1bf2f6d8c3340390
Date: Sat, 03 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706922496
