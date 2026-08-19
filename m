Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E691B4138
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787117434; cv=none; b=nD5Ja2iZi4Eel4rm5OO7mbdzRdNaAXoYQe9gt/ZejD0FAes6uqlMnkvoaYhkhcS21v61dm4KUEZfwFwK8kXjbhF/uaocC649135hwi4yA0jdmOh+Xepy2KAjPcreOLvYANkIuZlSZFmdEg40G9tsXv5VtOgaIBCcZshfV8hH6SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787117434; c=relaxed/simple;
	bh=UrRgbL4A1lRdhw1RHDhkmNsKhUddwCYKqLDz+wmnQE8=;
	h=To:Subject:From:Message-Id:Date; b=GNURuWFHLEb2Iq5RaRYnVaXAh8uwavvXZBalYHVEwCN+OLcTKTNG7unoz7VxCURJbmwUDwSMGrlVpd/zxRqx/1cnauq9hHXTLyT/XvaJb+gFUOcRcPzGE28xxoy9m69mnHqFcezRY7GkrMTytLxTkJ1CXonq07MR1Bp0Th2kFjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1ok0/XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1ok0/XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D430CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787117433;
	bh=UrRgbL4A1lRdhw1RHDhkmNsKhUddwCYKqLDz+wmnQE8=;
	h=To:Subject:From:Date:From;
	b=j1ok0/XMuq5IZ3x4Dp81dQbZ9sfnY/M1NbKBvmZ1M/xusQGyIwamgdimT0nbHmjVi
	 LomP2bQqrAMzJmnyINvma/L9RoPbZuuAHBD4gbD1FWcZUKQoJ+D3nD4igQlAMgUQrG
	 VdoexbNTY4EK9An1XR2QJSw6aJPe1ZqhEgs3MNkx+IXTXtij2CMR0n1P3Jnku9v2QW
	 CPT9lGslHhc1l4cGVx7EfiZtSGZe9U/665143kIiluhURVwIrLYhmHLLO8IyG/5Xgu
	 353vQO23Zqu9eah7GR6GBTXiyghcJdXh4gpCWrefpEKDefKvVx+nvbnRKcsqG5klUX
	 4MEGMVHszZUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9891C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711743368.5918.14043892049131912105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cef34de14299366aaaaf49f5f9ebba2532248c0709ff03726e88733fce77a1
Date: Wed, 19 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787117433
