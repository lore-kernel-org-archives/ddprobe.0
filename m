Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B59738838F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779181834; cv=none; b=rTucqf3C/W5mZHT5kFSYASSqhXvn9ItZmyJorJu/RyNin7SqWU5j0JppKCD9Af/F4d+zKc302W5D+lKhGkChsWvWOYyDTgc4yDq9FnImmLC4ytaBo0KJVAcDxrwI0S4EPfjI4F14GJlgC5akJoF1pdP/EAGTVtR22SgA+AIj+jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779181834; c=relaxed/simple;
	bh=uPvRQspwyjlX/h/Hnu6d64cTN4DF9AjO4XZkabov6Ks=;
	h=To:Subject:From:Message-Id:Date; b=cqBx4KbwWVY/z8iNgTaX7Gmn4NuUb2pvo+7zZPdF0t1aeJnljKlesK7KWwUo32jL9Kmn+sXn6VPDj8BjeFnj/PK3AdmfVQmTnEDicarRy2G2sEQcDhF7T99ZkHvOglOQ6x1KCsMiylC/JOMo2QC6r5yJmqibQ5hxa6t+OmfC4eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5Rm6Qh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5Rm6Qh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5FAC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779181833;
	bh=uPvRQspwyjlX/h/Hnu6d64cTN4DF9AjO4XZkabov6Ks=;
	h=To:Subject:From:Date:From;
	b=N5Rm6Qh8LdXm1ZPxnwuRlafwOFYFxcFLe8HOl63eGBh6PbU4yClghAYoEyUyPBzl3
	 CpKgKzj+jxhIzA++mIttrxKh8YxxX/rlZ2DN7FpbQg9SdqKwCUN4QxDVevSlbTCTbQ
	 DjtxQexxELP2KlLPb2qyFzoSLC02e7nolly/BTnWtcEKxbZ95LIV8DL2HUz/SNaOQ9
	 3wgUQ0DuNLdNIsbkQWUuNcvbXXF0CxmixHwOWjYJSRE4YpB0miRLyyJdFHhkAGia1g
	 x1zaBJGMlkkwaHFQOGU/mcuKdtKbYPzk+N72i49yCRsY/oQLGuVe/JSYFeQZwrqxSo
	 cB7K1kgOt+OKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D9CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918183370.12440.1022298446553304103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0d584250f55cb5319f4bf1f9df44b74660ac8c51613a957438c3a74b096d8d
Date: Tue, 19 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779181833
