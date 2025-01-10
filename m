Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAA320C472
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736513754; cv=none; b=Nm+RzTWc9isjid4GKDfFbIv92uAVRvEVp9jftNC17N4FBde6JXBZn73eFD9mfVAlX0Gu5zcRUvQIxL52a1ZpAdsrxFNUGh5a6f0C6XegsyD3oVkiYpX9IsnTwL3r/8NVuoh5PcN+DYiWNvR0Cki+AlAnIzNflQFbZNrN4sp0yqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736513754; c=relaxed/simple;
	bh=iyNtj9018acv6cDwbjWDr/K64+1maFbAytCpIeM1Q4Q=;
	h=To:Subject:From:Message-Id:Date; b=dNBcLgLDCJnRMZPHGBqwu1fiVbKilatvD9pMFHZqmMgsNTqKr/+R+ZPkcVU38bmdfIa8igt6f/WUJxA0UVbRDaqR+QgOlnqCU4FDufD2fzqHADKmcE7363E/QbgDefERdn4grOK4SYQrOlz0MfeLPSCYwIYvd2aWpGT6eQrh0OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeoKbsXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeoKbsXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A757AC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736513753;
	bh=iyNtj9018acv6cDwbjWDr/K64+1maFbAytCpIeM1Q4Q=;
	h=To:Subject:From:Date:From;
	b=IeoKbsXsLEk7LbKsvvTla5tvvsxVpnxsO9ml/VbqCS8OcZhZPaZallL8A1k0IYbwI
	 VQvGPbEcJaSg461Z/XTovtYxvIfZ3KzoVmqcB0ZDeUw85teQlKU6w915sXvQ5IkH4a
	 nzRrH365EKsbFJ4hJnFoTgs/aDfsOoO5JN8I59/B6qTtIvs78o+4RhXamX4lS+Ds7f
	 QePhOqEoTEQ09zlGb2+NDuNSCoqmf6IBRLLi+5GND1z2UEXbbXnpMk4u7C9lV9UDVL
	 RoGyMUzubv4yHYWaBLjhhK6j96SSotPDItFGdNxkRPwA2JVmxyl8Q+qm8EtwYLD3mx
	 is5Znig9ZneDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F15E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651375360.32112.13516441809588610586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b7fa2b80fd13d77980c07de09752c86624b0108150cd272a78910be6ea6458
Date: Fri, 10 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736513753
