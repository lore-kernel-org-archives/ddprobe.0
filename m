Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9AD4086A
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714203143; cv=none; b=n1pHW4au9SSAX1q7Za4O/IsPAT3C4dS656yi0EMRLVJzuqPMHig+eYusU0Mi/GpdiCTrbuKpFczZ5q4PPKKPRXda9kGJm+4X5RFj+I+k8VUf0XkSMNsjnz6i2LIog6VIP54MJ868GL/tsohG4aHQCp7VcMbHAMtVoEP85AoqhdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714203143; c=relaxed/simple;
	bh=KXcU9jCwJEsSgOeQJDX/kQPDl9qTUgFrZJx52ZBhC54=;
	h=To:Subject:From:Message-Id:Date; b=Jf4Nwm7rQznO04e/riYUZeQn3+9e6gEp94odVomq4Spbe/isHY0J918R8oGBxGvnFiRJaOevH1y4W1e0arwWOrhXebFv2vL1Du5JkjvcBFvteHPucK6rNXxJIVSZKVInUBOHM7PL6WQioIxQjohCqT/sg3uovP5eIrSwNOYig8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrpcHhb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrpcHhb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C31C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714203142;
	bh=KXcU9jCwJEsSgOeQJDX/kQPDl9qTUgFrZJx52ZBhC54=;
	h=To:Subject:From:Date:From;
	b=DrpcHhb1d23g0TM6+hucNvE3ubaVEABIyofFCnHgdFetKOnWt9uxNg88C3VA8uLt0
	 FBE7EtRTPFSxYbksHvouu7eZsAjBoo8UJbm3PrZiXawbdGiaYJSHAK/pE8IWOfpuEj
	 3eHDy0rmyu5w4rlKT3Sl6GzIGRZ36CU6xl7yz5/zWN3HmlYXA4fECbPfwnHXpqIWan
	 xcQxUf6g5S3k/V+BMD4c3h9pPDy5VuvjHO1srspVVZOHzvaK3LflI9GfetHuWjSYGf
	 tsaJk4NcIwU9lbqHTud6bGiyaefSRBfg6ALUJ0oeVZN5KfaDu+hPMLiHipaMFWejHR
	 Muxs4Fqw6V+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD00EC10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420314275.10012.13698101903175385094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84d668a33919ff0b973353162ebbfb80473b6f8d58a94bf343cb848a9ea626c
Date: Sat, 27 Apr 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714203142
