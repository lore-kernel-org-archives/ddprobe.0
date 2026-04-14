Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9D422CBE6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776197254; cv=none; b=P86kjK8SN+frx8/gJM6CyKCo0Bs5bjEqvFz0YjPI9h++zfmOk99uPHw2jI+cdihlgbxm2bIXJMi5k82olKHBTRtS12bB2iSjhOUNpcdZeCHf6sSrTIrfpEEihqooARyqd/YVitACnEx7LJj0pZ0Hb/fLWX23zFO2X4G2xl+pIgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776197254; c=relaxed/simple;
	bh=1raccI7O6N3byHTA/Wuq+O9wFVvXvBCxke9qiiXIpzA=;
	h=To:Subject:From:Message-Id:Date; b=LhKf/pWncP8WHi7X8HN9/6WIoT6eLAzHPzIVFSQHmEFEyTaXbdtZvuHYZ4/bH7aWUL4GuSwqqFOTKvpi/k14k3Q1WvZCwCmlOXmgCUGD1QqcEQsX7yt/Ozdj5sYSHVD+cA8uT54MhLIVmyDne9hSad5av++lBTzMqCPx3qriGgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjWrdEtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjWrdEtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B21C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776197253;
	bh=1raccI7O6N3byHTA/Wuq+O9wFVvXvBCxke9qiiXIpzA=;
	h=To:Subject:From:Date:From;
	b=tjWrdEtVNJyzAjlG34EH0WO8aTK0KmLqN6i89XjQ/irpG0URvl76FlCJ1FEdol4Z9
	 lEp+aGPm54aaz3mauXJBZwahl2ov1MrZDxCDZBNBIaaceICPo7F2xTwXyhemp25Tud
	 hXLmPZG8MK/URtbPhUA8dWd+vFpfuMyhzJd2FKdPlUjP7y8XTfZiol5feMeznSYN3O
	 n+RbL3x+qpKYHuEDSbtnf0CHZ4s9DEOP/xEeUI9C1AMopFvxw/+de6YHOJNsE1JCpK
	 +tBOX5o26R7oea+mTlq9amrfYfRD9XkymyEgIy+FGp1I69Rd70JN5O7uGZC9I9U92D
	 3RB4oBan6NeAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2992F9D0F7
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619725371.6503.6508207556106832054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a22aaf7381bd90d73179c38cc8592eddd7c417626407d4a22d48133d8c1915d
Date: Tue, 14 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776197253
