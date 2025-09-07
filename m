Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1E563B9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757213994; cv=none; b=SwNc536fwH/MZqv6AAgGtQNisq0ve4oweeaV9f+3DIH67gfq/i0yWGIown8tB9k4JU0l6euKqtPEe6UC9XMSazzlDD+kRVWrF2ujjrrYJMBvnDTBbX882c5UVm217yCwjZdL6iTgcqyARInoiNn5dL5F1B0Xexmo6i1jS3mpoN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757213994; c=relaxed/simple;
	bh=v1vkK08xaThXYl8Wtn2CyUJHnES98nXJfcIHBqOkNi4=;
	h=To:Subject:From:Message-Id:Date; b=iQrTu/pnWxSPScQB3soy7EloJt3PZdFNRWR5oseJTc7NP7057CX7VfLstfH9gkAq4zZZg2xbwfurLAHfiOwKQKdmez7V0xkO2X0Wsq9YZg7YmlcuSCRl3AIZ07s1v/xpJTY2nJKYaeD90PJWd6KcnxfqTZ3cpZBmuQPnZ7T81Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPBdQxT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPBdQxT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757213993;
	bh=v1vkK08xaThXYl8Wtn2CyUJHnES98nXJfcIHBqOkNi4=;
	h=To:Subject:From:Date:From;
	b=PPBdQxT7mFiiIQABcNF1vaaRSGAp60CYJdQhiMrNQSIyOlHB2XSV1ilVkDffUmve/
	 3Fs+18Vnv839y8Ht7meXLydmVKKWGNgWujIjNz3694jRRD8z5i8OqwcU7PEKI3wTJa
	 WIOp2xHVd2xR0gl1b3JsYlDR/kzSPHZ26DzgdTbhVZpSpvsci7YiRxKluiyUXJvH1+
	 +VzczLAXqs1IS3vO0maRVlgOC819+6e6LL6yKhZTH3aYYCIeS4E/2cUI/+fw7TQgGu
	 NjVjfKiP5lMrSaa69kCanNrGMWUyV52XAgFxx6htiH0wLzuORnWwjbKj28Xc1X1azU
	 QIQyEC7EwmJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B86CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721399357.29491.15654080051444764158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5bc6d901b573742bd0aa1b34129ee6b969327b28880529812e3dae28e6979f
Date: Sun, 07 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757213993
