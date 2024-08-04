Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F98F1EEFC
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722815154; cv=none; b=fKTKzgYwQ84N+UNbGJ/3kc6k/jzi8cCK2z1/NvXaNPWnGGPS5zIIsU+nzWgrHMwbhP0yEOt2o0TtTQT33wDaj72KWdkQo5lUthz/Hp0/+/h7hfPXbF9m4JdNhYdu6sdFlw/nHduakZ6oWMLy+38roj+FKKH3eVM4b8FAEE+zB6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722815154; c=relaxed/simple;
	bh=oQYafjUxRqY8AsQzncfy7+npd3meBdy9mmEv+X7pngY=;
	h=To:Subject:From:Message-Id:Date; b=KIt5SpaxkjQRw/G7DFnQnegtZ2sYV6n71LH3a3af+tkMKokzTVJAdp1DTWAB3D0dv8zGiL810U/JMw/0CVB6KCVoZOKNqZS1MTYwfsLc4hKA/NZnx4/q1mqypnhOKMp5xm+Ikxm9wCJvbOxem1Yig+MzGtkFQmXgTdtYxTtaFso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPdCg0La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPdCg0La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B262DC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722815153;
	bh=oQYafjUxRqY8AsQzncfy7+npd3meBdy9mmEv+X7pngY=;
	h=To:Subject:From:Date:From;
	b=SPdCg0LaC69gebGCHJ11bhY1ZJCfFimGehHD8FreGlR2UhPI7Mlt9ZmPt48ow8BnD
	 r1QscyJ7PSL8pyO+SX3KWgN9T1E+fJ9T4PZa5GJGQdbXUGyOP6C1aNVZDvuz/q7ni4
	 u8i5I051k8ePT/j5D040qofR1lTsVbOh6Rkj/Qay6EYNvDRbcp4J/bAWwIDp3aZwXb
	 0JBCLkkntQ/GkbGIvSMdfBnBK93aocicbZmP7pddqr9Y9VqqLoCQtFkCXJSs2z3sso
	 GPiqbdAECmYN2fqL34WGaRYOUhxAesekuzNdXLr+2mvYUDhmut1V90LrD03fwTo5Yq
	 SmNh2zQMTIqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBA0C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281515360.30133.12244304734477050004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7648ed8953e5b3560e688d17132f6dce17e5b7beb6537fd4061e25350a1a0b
Date: Sun, 04 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722815153
