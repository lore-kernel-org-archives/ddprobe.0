Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D70418859B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761041394; cv=none; b=r0t/rY2lk76kPKCThPoLvRhLKgMwsdNEmcAF/VQhlNn/SQdFMD7u9IEeTbnT68WpgLoeF3fuaVb6u1nCMZoJIPbt7lnDFClRX92F4o4rsp7RW877VYM6fME0/wgYAJ4sYC86Qdr7CgAOKgpYME5aIoZpx+Aecxi+huCpAzEX3R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761041394; c=relaxed/simple;
	bh=r6ZDqy0sVGkGbPaCh5oEoxLH/FCn27wW+m3JMuMiKHQ=;
	h=To:Subject:From:Message-Id:Date; b=fa1WmKNTB3mZf/BhqUSvy/30xg3POUN9IdNvfGdpBnUfPWceJTt/sRB1orLZBQ6JPJKD5w0Py3dndNum5nOn1UdWa+6NuBAZMlw28lC6cftwIWVHoJYx95h8WmClkUV259OJcTo5fEpo20xk4Fzvs8Zegnwmy0GiE843myIIxqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYnf+8EL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYnf+8EL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761041393;
	bh=r6ZDqy0sVGkGbPaCh5oEoxLH/FCn27wW+m3JMuMiKHQ=;
	h=To:Subject:From:Date:From;
	b=gYnf+8EL91HTueJtfgAqRV+cfzyqyegndH6QK/Ch3x5HEnalhDdlXlwu96R4FeqCF
	 OtU8Lcbti9QS4bytB+WPrumJagbYTJ9BDqfG3kVQ1cI2/vdXiHzJNzBc4OHpkvl3AM
	 Z91Ey39q0dwcoLwOqX1LYZH1xPni3ai24+3mML8/4ZTQqy4hIulqyruamUGw/qfoCo
	 OT2ublooZzAssjxffBStKaoOYkm6AIEDSg0ApUm5l2BQhxVaCXNAeRi7jjLjTObeTn
	 nZXuJPQpmidr7N7rC9rXVHeHrTy3zYYKGzflcDX5pAdrgC4SnhsI0Nued7IvngTJUX
	 5CE2HXYYa3JKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3DCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104139358.19208.5384835216691242555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf1b319ea5047d7edf00be3cf664c0427f30b9dd8f8de1bc7952ef9d72d12b3
Date: Tue, 21 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761041393
