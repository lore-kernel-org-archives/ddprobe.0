Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E823A41
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761967194; cv=none; b=o2FoyF8QaBQxjHwm1GmyH5uVEy5oABjvQC56vhc6kfIXLeEaZBDob5EM4oBDXiFZ4g2fkfpybAMY9o0/ig19WvhyLiIR7Tajr/3kpL4EhRXI01p0sDvbAOgqVK2AAQQPFrARvpbyk/OxDDL5RzmdBtqDqVd1ZQgRcorJRtr7elI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761967194; c=relaxed/simple;
	bh=tuNmibTh4GpFmdr+GB7EitUq2bUK1azfBJOLhXINxQs=;
	h=To:Subject:From:Message-Id:Date; b=mu8xdhJaTFUw5hwRPA0mylA44F3ILSnx/PpzCNfv7oIw/d++IM8tsY6K1O5ZrWWyyhBIcckwaO37rSDYBkkyF9mVYt/fq1YuXcwcYVzNcF09LBCYH9DsqeDxM5GLLS3PWJA3e1KviovolO3+cP+fYbQ7hhv71S/U8lyVkIxUIeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYF23H4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYF23H4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E87C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761967193;
	bh=tuNmibTh4GpFmdr+GB7EitUq2bUK1azfBJOLhXINxQs=;
	h=To:Subject:From:Date:From;
	b=FYF23H4YJ3jz7dekGqGLHJvHCN8H4CGWyJTDEbmVMdcoL7SenbWkP4CdXXiPUGL/R
	 0lduY5oga7f+KX5cc/g4bxFqX4UheuwMVqPfAHhOEQyjsbgdNrRP/WIqKFzQq+LvT0
	 TH8K1hAaBB0T3J0aKdHBVsB589TYFs0NZrXMwEMCCN7Kf1vAqnx1qn590PhzQ2rsUN
	 llUTxj7xe8pjLOr4AEvsBcuV6DgUL2sJEfq6cwFkyzF5sKXFpEVf9Gp1LobjtALmen
	 L3zR6d5whrRwmnoT/7wpFoSBlX4AKwZ50EBYwb/RunVocn1imAoRz18cO4VT93gMMG
	 nE9d7a91On92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B27CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196719358.4632.8622878780419986999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5528b5eef38970ef49e585ec6bb8641ef3ad097db1ce8bd6e848b944675e77e
Date: Sat, 01 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761967193
