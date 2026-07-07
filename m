Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BF3395D8C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783451314; cv=none; b=PZ7jzYP+ZPszlhNBDT2LJrLFOQSvtpkf/Ftlrt+2bLcGGk4o+O6sRugytOk0YS5vbA/3+XzMBhb94lIVa/q+KGntq62eqW/O8VPWtJahAsqlun8TExXkk2doVdO7OzlKjg+4QeFXh3JsxXDCjllUKBpcVfdWWzjhoiYPbfKkAYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783451314; c=relaxed/simple;
	bh=wf6QYiwhBXvCad8IlahujJGlr7Ab+SmN4U7AVokYm0g=;
	h=To:Subject:From:Message-Id:Date; b=N3mJ99y7NeqFz9NmW7zT5vodDusspYc230lLJXLMtUB4e+PkGq6fNLFHIzv20IBF3qVOUEvv5/9EhUD70gTQlVIgwT/KnhITu6wGGoFux5siyZX+ENcGoyV4MFub/H3pugo+yNVWJ1+L4G2s0cB0JUDLqDIzHFrkTAEWNam8Cow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjUPJxlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjUPJxlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA738C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783451313;
	bh=wf6QYiwhBXvCad8IlahujJGlr7Ab+SmN4U7AVokYm0g=;
	h=To:Subject:From:Date:From;
	b=qjUPJxlDYhtDfJQpX907uLdltGRbzIwoVj0mfrIIcYd8kbpN9iyirgOvue+t5nRXD
	 gfvl9gl7nMdp/C0Nk0ODZN51lRkn9+kEdHrsK/kvWv9rjUPNhzVdYYX/41IZ0xMwYy
	 yjyHrAbRlGs57fjZxeDeS18eTb3taGkgOTTk3eKz3rWN+eNbCD9XIKhPARcanpIsMP
	 1i/1RnPOdfGCn5Xi1JkaOXmkfSLz9YoSt7+ERzFinJSPoUViYC6gSkEa8UUOTXj4V6
	 /UjFBlSe6/dlzmoKSyMLiCymfEcSEqnBkQ49Dc5SjFKZpzJhIkhRXqbr9SAHcZWE/G
	 FdjcY+egs3ZbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9037C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345131368.8797.6936197557765041761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6c9d8f6d7d7652846f5bdfb50c73e3b3c3d650d24ea19505e9a116069c9e77
Date: Tue, 07 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783451313
