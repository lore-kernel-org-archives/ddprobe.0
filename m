Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE03DC4DC
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777309654; cv=none; b=Mg3gcPVuAYmY0vZa8WM/PRoWMlVduSsu2iyC/oCvA++ModviuDY4tm9uX4L5LJ0eFuZv0jf5XzIv8Oq99mRkUlvd8YcB+HiXsMavHLiEQP5eUV/3KvbcsMyP/6yRZVOrc/HNPt86Jz2ODqRCbH8WVt/QiQeC+q95NhivTrdFGv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777309654; c=relaxed/simple;
	bh=I21kugi40Dx/CbSYxzPoR0ucl/8qdgW6ri/TI9vdYc4=;
	h=To:Subject:From:Message-Id:Date; b=GslaTQb90yRrKo7l5lkXaFCHgad9NOYwK5gExMVMhlCXxRf8fWzmblv4M3WpEnnCo7GYBd1TONFpaD//nW3z71TZ4n+iOSOhHcUo/YrDFWRCXukNOvFleFXNxoXb7rQgJTGgE6K6HX099q8XnQFs7NroJThudI0xcbze8MoL/jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cha6KTc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cha6KTc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5555C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777309653;
	bh=I21kugi40Dx/CbSYxzPoR0ucl/8qdgW6ri/TI9vdYc4=;
	h=To:Subject:From:Date:From;
	b=cha6KTc1ayNR26GGSvpVXVfC8TPxVWxXN4odQvA/0nVW6RPxXGZD9iQQxNWMYTXjV
	 aBQY/KLPJU4c1lbOrOWHnpMxQqbbRb93IDUU6KElU6cpgBfgDeZQkP/EKPy3EeJEv6
	 L2Yx+HlbVCGad/5jCwWmDJ5LnHERG6J7kmPfekMDthi7tiisKFwE2UjeUPj+8vM3sZ
	 oIyAAUkyff26V1j5t8nBMykzGt5JW2kcrRKk/CJEYKiEyPVj6//GqKkMuH8xj4V3At
	 Q0urXlLLe3lL8TyCxqef/jqF990Rh7DYlDRXZm7HnHqScAVLRfDYBRPCZpIWUU2XSy
	 hxs8Uv3OHfLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B41FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730965371.28550.1226789680744935611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cd403251526b461eee49aa5140a795bcc2373efffd22162b71e7b9f3bec97d
Date: Mon, 27 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777309653
