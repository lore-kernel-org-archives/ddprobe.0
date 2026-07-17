Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4436EA84
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784303915; cv=none; b=uViNGOYcpoDhGcxDRUglz+Fz47l97cS9CqiQ8AVABMJ+fdt4expT1ThScJZJDE34PiqPIOMnyrMEf6hDQb1ZYSnG7Q9MXWyC1v0d06IN2N6s8EMh6ktSiW3ZdKQDPRA0u5os4TQMOEABy36KCN0aWBdTisNUhMuqMfxK2IFU4JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784303915; c=relaxed/simple;
	bh=ayEUQGUa0sChEuuKe3BEhvuOOJnB765g9AA9Zti+tV8=;
	h=To:Subject:From:Message-Id:Date; b=XdxFW0MV7ryt5+F1G8kipsm1Rj9IsCZVEuG3mUQDrhiF7OVCW6JzTsxpq1Ok/RoqYPZ7eJyOiz3pLDq1j0sero4FmmnGi/SQa+M0MK9ZIlGrhk6uu0MiwJ2DRYKwbEKyP9KA5RCiBkjYmFoOh2V0iVgiZh+rFXd5B+NVqp4vlio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4tekX1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4tekX1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29F8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784303913;
	bh=ayEUQGUa0sChEuuKe3BEhvuOOJnB765g9AA9Zti+tV8=;
	h=To:Subject:From:Date:From;
	b=G4tekX1rxfOyCQYQHodryszvPNCl4uCli0j6DN39viFiP7xWeTipDo3/z+eRPwh2f
	 W7nkaoyIXaHMK4sRueNWVtF/qYWIb6BPOr/FtTfAumJ18fqFOpOblBNcuqhhQLEjyh
	 GrMEXngFGEY4vKFVenL0yljNvJKfX7x61iFnBp/3tVlS5npNNhmEX6lJgJb0/wxCjZ
	 ZmWn9e99MW+jpZ5dd12Fd4sW8Ih2fQrzXg2lpGhoMRmI5QLzXXJfhwEZ3drjMTxZF1
	 BKG1PK+9m2b2MkPBoXFx7yHjzqcCwQ7fKnXpWLwKDI0DyzpFsWskWtIwIIhlFpleX+
	 3eCgUgAs8ozCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9738C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430391368.21102.2344490536636679557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e98c9060b864975514ecc2887e823fb2a936f0afd9224405ed1ab29712beb83
Date: Fri, 17 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784303913
