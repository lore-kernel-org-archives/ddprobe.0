Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27C27281D
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759492195; cv=none; b=ffPBvw/tmWwXMukvJkpq0jUR7hDga0PfZHaY/IXRk+Jm/7BHmxTDcB8bMsKx3IxgZ/m9kFQjwb469BSIlopVj+vd3ufXIOBzN0rBVNO8k0yTqZaO6noxcEov78QSCyQQOPJyjnWKwKqd26+RIWki5sOGztxU4odizR8IMc/JokA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759492195; c=relaxed/simple;
	bh=mFIpBJXGfshXmc+LN9hYwVAW0IAsi7+C9sUcVgSNG+M=;
	h=To:Subject:From:Message-Id:Date; b=QUds7nDT7gX/Wy5KI8mS/LT8sIDkpww5mD6pCN+/Z5om2lLPn68WyGKbulKmancz7l+FIO2f+MFWRGWJap+JuOI6eRNU8dvbzzV8URbP74eRxebZ8BPE/0ewSauz2sbzCtiSQb3cQmTzfodjewWFIFhqv8ErL+nHI/DlytXIQls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5xdlCoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5xdlCoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E38C4CEFD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759492193;
	bh=mFIpBJXGfshXmc+LN9hYwVAW0IAsi7+C9sUcVgSNG+M=;
	h=To:Subject:From:Date:From;
	b=A5xdlCoWKdPke4Ng/rw2hSgZX7/A87Gjdy+wVnvGZNgb565k6keaZyt6U4KVl/BEh
	 O9lR+9/FXLnJLVtFf7K3oKufV4EKSQeaOlpHLzD0eooigCnSrU2iT3hDnI1OjUM21s
	 miXynnsZ7edVxsurYRfwX7WXDhQU+OeB422VUDObkVHplDTvDSjJ42d66GUqkosT/m
	 63O7oisEeJBqLZjUmOqGI4iF1OdSK8FQ8/ebIVIxhWfPWY0ieQFjOlaX0UHqChJnaH
	 7owtuMn8YBWEhjCBtear7kgFF3IpaDdkvN/cZchZBwZGA7Vs+gsRhLBjCfbuhkz7x1
	 uJFeYS/wudK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A4CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949219357.22837.6612370188164960015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1819e2d7518131a7d38dc5b232b438cdd0273b0f238439c782d0ce892f74a842
Date: Fri, 03 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759492193
