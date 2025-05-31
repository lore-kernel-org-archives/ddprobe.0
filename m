Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7B80B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748657394; cv=none; b=sGC9ILesTFtfYzsFrzEibkj0MBENvDwjxlFQInGWcV7PHOsO8gUJ+/H9t/wjMyxLMXh7t4q+eQFCRLk7gRsXGDVPand9Sw6JrpH/RnGEF1nxQIkX9nDG1aC1h58ro9u6XhbJdpCPGVDV0KZt2RbsomziuNbcl/+tLMl46icIRk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748657394; c=relaxed/simple;
	bh=8SfAV/OoGVA3iPZB8ynVrmuiBPXdKlMkjVkwsaMbMTk=;
	h=To:Subject:From:Message-Id:Date; b=dvI8U6fGtr8LyhQ9eGXZ6yB7EJpothNim6sk1bw2AePqWKNWDJOASV3egzfprI9ChzD7h7z285DaYwuJb5/hdk97Dk/TXZzC8nwCR+6+zWmerjV99mhhI8yGGSgOGSPfcmYxpQrx0187PKau1TBTyhlBWEDoEospqVXcRougoio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayAYgJvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayAYgJvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C31C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748657393;
	bh=8SfAV/OoGVA3iPZB8ynVrmuiBPXdKlMkjVkwsaMbMTk=;
	h=To:Subject:From:Date:From;
	b=ayAYgJvJug9RIaSujcSR91d59pZ+/T6uygUnbYjOWgEsaCH1q9HMSqQ/0+UiLZZL0
	 eYjucOcNEai47iHdHF8c8NLFsotp8ACUmzfM/LLcmcgwGoGiZ0FFx8M49RGKi2ijcX
	 mxCLjfrXThPpX2T+feGWLlMFR1mFsr5TKdsPBKwMg5OpEvukGrqnEHDtPUG0y/QQmx
	 idnVXjIr+8+Bq0HbPAX+9RinW1Uhhbc9fpl0d6LiFQfPqeKnyVQFTXBKmd49UMkSuT
	 PWFFy+l+2j0xGOIZ0i0cQubZ5sZh/1kkrI9YMpboZ5iWJIEUYPRn+xGrhsYesdLxXm
	 8idnMOlorLmNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4DC5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865739357.1846.14110489927903962395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd70dd93ab42420e8a1af65858935ba98027fb5dbf6ecda31046604d6a238a81
Date: Sat, 31 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748657393
