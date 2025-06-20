Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C681CBEB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750446594; cv=none; b=jbetMr2wVmt5rnxHvLtcNRQpK93DkL3AuDbeqvAkG9lo2uIOHXe562/+goERtowM8roDzGhTAMvFpU3/msbUJxxVxmpPi8ExMTf8XlM5jxP96mdVcU6eqA+BJafNDYdB0WhNDKSSjmKzEH52YhS8zQF97Cc8YQVbvc1E1f3MzG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750446594; c=relaxed/simple;
	bh=emzS1vpV5vsVf1/m9BkbN91/BThj+c5VJ4N2PO1VfQ0=;
	h=To:Subject:From:Message-Id:Date; b=KP74uoGm9ctlrGshprS+Wdj+Fgl7ZMZl5FtYXyEQsbE0iA4n2Ql626YKaAgQ8IwQrkP7ayUmfFSfcNKuipxhDbNoZPKPqVj/UpmPW4dpJP2VHikm549PohtMWqUmv3GixTDSQGXT7oQZ8gdxiCWSq8T9Nqk0hyQ2em19X7quvbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+ljWQxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+ljWQxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0309C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750446593;
	bh=emzS1vpV5vsVf1/m9BkbN91/BThj+c5VJ4N2PO1VfQ0=;
	h=To:Subject:From:Date:From;
	b=E+ljWQxbZT6xXA6veX4VpJKAvelvbgJevVdYjGrhOQVyWCmxVKGonuLBAPh/WPN+0
	 tDiMj+wjv01yPE0OTEw/GTG6QdlsZ02jkYNcS1ly/7Vo+SDdGPQUEzBByWMi0Zr5S6
	 YQxD1Fj5V480BwlriaEA4OEJbxNdA4nRIwQoE4XbnV8qDTiN2O3k89COMvag8LxxCa
	 2kGLtHGYjwK0Y0FFC0VDm5tJZFj3f5SgAv1robCY9jjJMOPRM5sq6RfxAX4kQxlF5D
	 27mqk9ZhYjh1QDFHuXv+wZU3KoHi8q35mdecx5+Dm2ewKa4+FJjwu8dHkoPg55hwzB
	 3rD9oHDKIS9MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BBC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044659357.15641.300428588558491590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9203749e12760afff61711e326a796d8248e7e6768df0bfea0d954fb00e05f
Date: Fri, 20 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750446593
