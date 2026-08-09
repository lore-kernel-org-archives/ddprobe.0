Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72963189F43
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786313434; cv=none; b=iFmyTyGrKpVCv1+Xz0oVYV30Nrg62yQBwTBKmhEAwpiyyKoDrI7DJ6Nq9TGUKTKnPYAzDcUbpPj1k6atEd15OMLDwaxV7cY6iIHISaf7OiulmM1//xkzXagnJ0eaH4GYVTxf7uL52fDYYHVXBcG2Evam5GQg1RkvzQNnsASwmZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786313434; c=relaxed/simple;
	bh=7WSV6U9HGV0mhcgpvYH6ZkSQfq6TsAKx7YiNc+K8nLU=;
	h=To:Subject:From:Message-Id:Date; b=AuH1i3QohYNMvUkeLd1cdYr9+pzmv1tH2GSZrJu4Jcn9DNOEehgA57rKh1+p/pE0EAArOHW0xHeIgKp4szPRL7SFUErNL8c8Wgft9ViHh4jDjFIEv5jv5Sjxvw3AJ5F8Q9i1RSihv20FInEgVMgFCR3ExM60SuykFp6xqdBPqtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqQ0oVzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqQ0oVzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB4FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786313433;
	bh=7WSV6U9HGV0mhcgpvYH6ZkSQfq6TsAKx7YiNc+K8nLU=;
	h=To:Subject:From:Date:From;
	b=QqQ0oVzJLDYOGGf48hcmSXd9WIS+W9SMyHQvmAgMiQFlLkEdyCS7tAo+TIBSjvdoi
	 NvuuW5EHmwr6FnWAPiCMCK383Mc+GkpGebewYLni2DQdgtUJEbMB6KYRZLa2tCZI4X
	 T5prSzW4wauDWrmQQ+42egzZc4VQK8EXSIZV8rVW/K7tazZBkskwoHCJ25lPh/Gvhi
	 HG9fqoLFrrV08c0LNl7ybDFHVsUGi8B6H5AHcXGEIBpk0X49Qh1vXWbYVAmTz8lPxC
	 ql0L9qwN+wstOM+2ddVxQmozbLw/nQ9HLni6h75sVDJTmuWXyW4MpolDEbSrwTOxRF
	 W3i3EKXhdq9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B043CC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631343369.17743.2547191447964496329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355627d49ade1f335f8c84fda27e01c53b34f6002d67062a770aabc655cd69b6
Date: Sun, 09 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786313433
