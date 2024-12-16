Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21639F9D6
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734330954; cv=none; b=abJz79E1ofW7YZCOFxy3btePyYdwpyO4UqXNuasfzd2nmDMP/T9bmpNFOBK0AYKiYNowbNWthihwDOVomcywlEod9u9lZnlWHuPsdOLxCRHj6WGl/oc1F5MWvL82pzsyARbeUk9KR8pD1Asc9Y7ic95cl2HY9g9/F/EkGzxop6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734330954; c=relaxed/simple;
	bh=RUAxY2f1P/OnJVLE4y+wM5tGxFqIPEZpcfBv4KiAaQY=;
	h=To:Subject:From:Message-Id:Date; b=Qsx72FDbofj7lNmASvo+/VGVBHSXWnO4f8yC72Gf3E1MxLHpLspgUN2F+9p77+PT+nIMhgFI5SbEFWBNPn6z0YeMQfMzdGHuiN0l9tHLsmily1GoRAsACAPJa02Kt7hayED1W6KpvoS1RZ7rBJhiOLA5Ww2IOI/8oxxkSDlkmhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGurR+Fo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGurR+Fo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352BC4CED7
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734330953;
	bh=RUAxY2f1P/OnJVLE4y+wM5tGxFqIPEZpcfBv4KiAaQY=;
	h=To:Subject:From:Date:From;
	b=oGurR+FojmnVbyFn3SOXXaTqway6JRYefcdPVHXQ7nO6uwKTlqATfSkVdTmSc3ys6
	 QtZqQ5vtvgD7GJrpxcCAPhGvvQku06xJE3MiIIuYnby9QHoMUEEVlDWqnGkDnOxNhF
	 sxHPNSEHya6MLKJaPEZ5HW6Dj96x2sLvNqVtENsDgWw9O4dmtIUaDrJWDKoea6YcD9
	 QP/CoVPB/aZmSdz42PdEuVlX8SaXbU2LXdYDQ9VZyqiUh/rYFSQcXAiP30UaeZyXAt
	 DyRjTDlg05tJz2TTNQcDy7JxRZigHLqfDC1ICQSsFCzis3piFikpO5up3VGlr9rZtv
	 v3Kd7YvfJBtRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94627E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173433095359.8819.14511848367083522911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ef657cdc9874ca0985f0eec2e96e27c4d07432baff3591e21a32275bbd9037
Date: Mon, 16 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734330953
