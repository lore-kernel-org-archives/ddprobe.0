Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F21545561A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789159234; cv=none; b=INpwpP+WsYM9cLZrHw5C5pA0Ao3/iaNDiB8gsuFmG3XA0rZepMo0a0gRNICjW5/SM08ECaUfZ7aIYyY+pqF35+OCZE2bhZOV+2/2UGmQEf4ZYcWp3Mu6u0JPXAas3CjtN3gUBnV6sOGi7qoNpJfxc0CtJDPoFyNjrLyIPCSvpQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789159234; c=relaxed/simple;
	bh=KS4HKDucfsSyttlCziBosFZyPhJCIabqY7G9a75fD54=;
	h=To:Subject:From:Message-Id:Date; b=g9LxeBkSaWJrWP/XFNARxPFoXOG6TrmJU2lJKlBa4ODlzKPj2xOUhJiWMRAE+NpIJozfNgpQiDtYlEnk41eCn+hivEiKm5rMFNGfdTkgpP75I2iKQpVbdJL3PpQ9EVDJStVaQvC3NYH7GMptkFmu1+91UrU+hvmL8pS3iY0tbac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUXPxAo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUXPxAo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50FAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789159233;
	bh=KS4HKDucfsSyttlCziBosFZyPhJCIabqY7G9a75fD54=;
	h=To:Subject:From:Date:From;
	b=iUXPxAo1sLpy/PKRpQIdiPU/lI+oMh8+mcgIrGkL31z6CzNUkmuQjvPyzn+VtBoXw
	 /CLbbOlp987PYwHEgOwEXbccYdCnmtin6cU5/zigY+rfFzQZzoeGuTx4pQVTxlArdL
	 /VirsAbWNYbv4pH7i6OQEEmGlsG6pNdPqnFfLHenLEBCfPUVIYBKSOF+MdupG65uUR
	 k3PP284CwCo41nOV/tFfHihGS7CI5cciEO+9Fhxnp0U8RBC21ZnU9scNgGjbW+epT0
	 EpQuNTDMI76KAvyB+eFtWHFvtjcdO2NS927bCChH7xdk7PNwAIE2xGZDttVyP9Nt9D
	 Ef9hLztj4M48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C81C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915923370.29868.18371012150780549175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3c3874a35cd614c9f506a2ec2744eb4ba82e99736f90623265032154ab1634
Date: Fri, 11 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789159233
