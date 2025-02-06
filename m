Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C00921345
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738814754; cv=none; b=I7em2qroADzBkilEMERXgxkAKfj88VZlchuXbhdV7mn/iIKQgwM3C3yAveh1UBwqVXk+jVedbObK1VuUa+CAigurgnB+gAJArJAp7x5Ux3PWeGYgeRD/LSfBCGEXaIBMkqzaXzwE1LayTkLwHmRoqvBvN4FyJ/QaY3UAgvsnA7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738814754; c=relaxed/simple;
	bh=+a8nF+kVMREGuP7DV4kgmF87krCEK8j/mXxqLzFpTAE=;
	h=To:Subject:From:Message-Id:Date; b=WYv9vjW8OY6WkXSLqnD6SXIK9ipqj67ifM0G9NmyYUCYDZ0pqVeAJYeggiLgGOQ0Nwl3f8oT2Ok8Eh2bEmpJSE2j0WfnuR9oE3BR6IBUUGkhVJSQfFUH8ez9BhTOEjU+uc3ex6rWfn5oLnMxZ1w7ig8MkYidPnxhu+lVKcxL9Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAvk40Ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAvk40Ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6D5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738814753;
	bh=+a8nF+kVMREGuP7DV4kgmF87krCEK8j/mXxqLzFpTAE=;
	h=To:Subject:From:Date:From;
	b=RAvk40IaVkM1tW6O2itqj5NgaXCGEeWEK8yWbKeDuru4MKiOnDotkg91MKIPElDxO
	 YsBKkp5D671wSNqQmzXLfCt7gLqG4bz4sWxAWQVAC9yaAdfXyNhMPX4VWao0i1U+oi
	 CoAZEyokUOSZIV/IKU3YZj799IZm8xVdoxUktUJMU+jZdD8CH0hc/ZsWxUJIVx8bsp
	 zUEEr3INEMmOPRuDFEtBkpmpSv17NFFPqBKa6L0VSGgvBJ2q9HjnsoQe2qqUeoD/He
	 mZWzdWVtETye+xfK35zAGcxqgsEK2MddZcQtHuoPtBTcWpHB9unudW76/P9PfPgzYa
	 WQyw3bNzhvjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8064C02198
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881475364.9962.5587511816325444096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfec4d2cf710b20b06e02cac16a3d4edb4f5f676372f17ff14ebc02e4d723265
Date: Thu, 06 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738814753
