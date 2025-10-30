Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222262E54A1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761854394; cv=none; b=MMZIbyU+1m17SPA2+MubsBbYn32uQ9tlS72FI3vaI3SBfJAs18/7jtBEwC2ZhCKuCRe0TBeti2n7/gi4ys+23zh9Krgp4Ke9vGx24OUxQK46ACNE+eH8s0ry2079ZdLREAZlpYDZxl24s7PJwm+gQEL6buvYspqqkTQgMQeC8vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761854394; c=relaxed/simple;
	bh=QkMbGD6MgpWHCQ88xeIFPVJjHyx0+CB8ge4MDmGyf84=;
	h=To:Subject:From:Message-Id:Date; b=T1HpaVhNsSUf4BIUFnYxJAlOphIcph3ujqpI6uMaRRlUaWWvzhAV7QsiFT35xGNa6jy3N7z171TB3ueXNhStCIayDZC73/I+zmP9DMWRgzlS42ofjp+3iXiRMSNhl9tYabndmaOBVO7u94RbUWdF9387GC+9rv+3FG3rguPV5uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8om8tS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8om8tS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D46C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761854393;
	bh=QkMbGD6MgpWHCQ88xeIFPVJjHyx0+CB8ge4MDmGyf84=;
	h=To:Subject:From:Date:From;
	b=k8om8tS/IsXFsGGMp7brcLIVdamlNqOtleTaSgS4cX4nFtEaoxWm3UuZeVN8OEbZc
	 sW/H45A2gvDKgeFCAWCS6039PDFcz92yhIaiwagoBcCC+DQX0ZWa4J9GfAlKKfTmdr
	 m7ZMG+4PConP3GF4+8E8tO3PAcAFHYdU0nfBwwGMTlNrBDfjKYuy72Fw/BEMphex6H
	 xh30/VXa5bl10UQoNjcH8BrUGvgHJJfwdtQUJyb3zCQPIyE9mtS6fQ5h4oKEomyrz+
	 I0R1SbvZK+gKbs3WpOsVbhhK1tjxO6S7etQIafXVGCVJeY9uMPTK6iCtZpIkGVJB6W
	 TndghIL8eQjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989CDCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185439360.17016.14947507128497930884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c847da59c77e2758554260686acc8797d977d6eca58e771d056dee7b02fefd6c
Date: Thu, 30 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761854393
