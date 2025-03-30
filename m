Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506B811CAF
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743303594; cv=none; b=YpS0tF4sePCsePJnEYroDJTyiuElUGgN/0FIUN3/zlk+STc9F/5t25cZ+j53tWoE0JvG3ZipYXiM//c0ZzRshbsYvHcmdzBp83glhCleP67dGKMYOCEPCTfl39zI7eFzvMs3haIV/jqndOq0tM9lG1KV0snsTeSqh12rhs/axc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743303594; c=relaxed/simple;
	bh=smkYHiCMZbcqjYe7pYQ1XXECEhBJtGCkwC2hnKPB3wc=;
	h=To:Subject:From:Message-Id:Date; b=ZAZt+0wvRboxuXaTAOttkxCVxp/WxSnMRcrecuRqWoLrt5e6A7Rto9JP6vGONQmovmKvPCy6rKN9lWHwtk4Zys+q8eIwNG+3DrZ4OUGBBRjygSEcPimVc/9u5YNb3PJJF9bj4JVmJEIweLV7+QP0IyygOzobFpRux0aYpGZLgtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+f9/4DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+f9/4DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5D0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743303593;
	bh=smkYHiCMZbcqjYe7pYQ1XXECEhBJtGCkwC2hnKPB3wc=;
	h=To:Subject:From:Date:From;
	b=p+f9/4DFd47htvRm6tLnwQvK8+67oDFKDg1GNsl1LVrvITjx+VmJdTa0qQrEOKFQt
	 b7kob/o7iRXKwCbT0bzw7rjvBicya7i3/kohAbw41o8yEOt/jRD9nmPPJ1IfW1NEe4
	 FCt4KnkhlHzgmpztD2tdlZ4zjH+aJRbZAxJQcAal1O2x0pjVJ6JzlWwT0Vm5dLKg4b
	 52MC4aV4AFOMjXYb7c/v6ZUV/mEB2xuwBqXtmD/yvYxhNc7NBfbX0T4HYLleMm2So9
	 jbbU48koM9nRYKUEyjIcHHLQprIQp/YbQvvqGw72OQmFlnLtRV5tu9CWfGZ3tcx52x
	 GZCaaMtaehy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DBCC36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330359362.4732.10830635179723550227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfcfe72c0c824f84cafc30d9d57edec05844b35fbe240d765d3dd6d80cf6758
Date: Sun, 30 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743303593
