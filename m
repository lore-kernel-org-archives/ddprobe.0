Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CDDCA6F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783825114; cv=none; b=i25SwcROQ+Nd2ueSqLdcEd7ai7viH5Tr32ej2OQHApD10Pn4fuFuGxQg5G8R7N2WE9H5Rbx3XJpuVcGAL49XDLOjhvshFCR6vIHZuWHL0Z5kqSRYSUdEKYQAlCJ+chHg/4kyo8mYfINCK9AVVFoID4Z/jvi0oYYIwfi50Qfqxlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783825114; c=relaxed/simple;
	bh=kVRH9VZS1cIbThapoXA9IYjDLQXx7hwfdgfzDJE9QQU=;
	h=To:Subject:From:Message-Id:Date; b=QzWfZWUNL7/2EcTRViWYRorl9FaNJkNaFbanM8F8f7aD7w4Mtyt20bs7qiib0Xc7RcNfySRSRkeEzK5UHrVy2Ouv9RjU+06zWHxQ3aWWgO/ynyM9OAGqy6SfvbhBvOmtLwhiR7RfyG1eGojf5Z8hdzEuDwjAO0oGN1XzpvWjFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYfnwG4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYfnwG4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED9EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783825113;
	bh=kVRH9VZS1cIbThapoXA9IYjDLQXx7hwfdgfzDJE9QQU=;
	h=To:Subject:From:Date:From;
	b=pYfnwG4dhoGvf1KI6wXT1T/ldRYhokuWYx9oT7GZG4RtrtgDffUEbs2boUhabAPGK
	 mZtJcJKS4Tfvrl5qqO2va9v0VKxUQla+wBe0WrIy3Oz/ZU979ItkZM35zenZ4Bcnfv
	 XgLyvB5pNifa5FFc4XEP+5gY0EzP8M9a4ZI9DF8yvnyFsnx+NCgBh4VcU9s5AVroWL
	 Ik6BCtrakLk8H7kFvNPeWb6aPvjNrhjqfJf76IxrfqtCI+QeZLEC+heLLW6k19EJT5
	 3Yls88o0jc/jUl9qeVtjjDxDJP2mDN6HcEM5NItgfySyxOZTdO3sly9sV9lbnv2pOr
	 ukexxGAAOUsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE39BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382511368.22073.1332115274900087179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b11d8000d0d221ae7265502c6a2b8a45afb13ab3202d2ec076ddb6e4719a32
Date: Sun, 12 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783825113
