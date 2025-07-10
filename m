Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D3C2236F4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752110394; cv=none; b=QgvOyIXD9G30N63DalZyLY0VWHrudOW7lYhPtKZwbye201av8IbAYbrc67dBsaVXTETGs1EM5U2d8kTSyioJna3EZ6JnY/dZjd9QVdUxe1jKOIEBjPvj36DcTRuFT6g2VSovRzFm90arzjWrLPXyF6F1OUDezVCp0V0pJouJ8dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752110394; c=relaxed/simple;
	bh=m+SJTcxSvuYKHtDOkBYnQwW8H1ceLkMoePC/c+I+LUk=;
	h=To:Subject:From:Message-Id:Date; b=QcdkiXzzfmptnWOp/ZBZO38gaZ72C1hd29vgIXT8W/qIMmEEpBp3N6Us4AJTkrDt2lo0GU8LxcpnW81GEKFC6AQoqCS7ppdp2bYQBiBuUbjDbXs93DvyfOK3w3Q393ZGG0rwFcT5oIK05FNsrqcpR9K5QFjl32KuY9bpSZjRLmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7LPPxDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7LPPxDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752110393;
	bh=m+SJTcxSvuYKHtDOkBYnQwW8H1ceLkMoePC/c+I+LUk=;
	h=To:Subject:From:Date:From;
	b=R7LPPxDVInx+QnAx+bQpXYqYjwF8VPrDA7gx3cgs1Az+VWZ4vS7rBKKOFbRNfik7+
	 gwx4QGPrHjHwCyow86QRTG8SAt/BG5xGalbBgTvrZ6tYZPc2oTgJL0iNGOPNbkBX/N
	 mRlrbE/Vn7GR5vAE/x4wCN0eBhqgYuyqqfk4NDvcDV1VG06KMhuHtt3t/eFkQrX3PR
	 0IFnvkFkCkXk78S2efiQYovjQ4B22vZDSFwek28w9qg7+jymFNCf5zIwnpcc+OOcyl
	 G4tNH8ZpKqF9my4QuYpehpTOVYbIcb5RoqaqbVupdfXnqByrJYut71UrRAM8g0S3xk
	 wynwovr6ZQ3MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13AC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211039357.22135.17360523884008100292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1040296ffe14c815434ecee32a3f513143c898d9a55ac97fd23b0e25dc9bc8a8
Date: Thu, 10 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752110393
