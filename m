Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39358155389
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719576863; cv=none; b=FxMJHvjPuQM7yLV8oPJHJ23Tf8aMybjDCcplFHhLfeXRcISxSUABuv45+5i0J4dgtvvXkHT+PFgsmuDZyKw1yqQOTXGNMKITDFezRwz+88RGWZj4Xrad8o+7O/81S3isx77d7jsYJwwhYWn5dUEfJprkcqOUejh0rBILF0gUQ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719576863; c=relaxed/simple;
	bh=tEw8nfpYatHxbjTKj193kwiYycnDkCnuaoLDkQkYeco=;
	h=To:Subject:From:Message-Id:Date; b=MuSonBWk70dySZkSxZINsNqpzdkBb0NQ1kZxy3JclumVMrrIh/3+Zk11L0y0HrUT05hfuOyBzsxkFgw7ZqHgi0GRp2RDZWszbt8baPWqSeS7MPTJbEbeB1DQCYJ4lt3ewTHNcKznLiO+7GTT2rle71FleNbLSjtR6ok7PgMVYSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7oiLSD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7oiLSD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4801C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719576862;
	bh=tEw8nfpYatHxbjTKj193kwiYycnDkCnuaoLDkQkYeco=;
	h=To:Subject:From:Date:From;
	b=N7oiLSD4pnhWOPT/hBUMHkAthHuyMb/b0zS43brl7duDPSB9biRRlWVKZu+07b250
	 VIGQkrXW6MvdWo5vD9LJnwE6YVAzynlKNlbVxAwrCckwuLectimtKuFcFBWsoJGaNC
	 GBxObvFX5fGjSSctkFwfahJThPwJvhELpgwQUpjATYNdfFwABGxtA+4FT1TgnQf/D8
	 OWmS2V21vXX+lA85hXzxHyzBcPrNgHnbEnY6SeNZA12/DZbn5TEujGEY44AQQ+oGWL
	 +b16VlRhOvzreO12TveL3xoTfljew6ZTkzsR7F3zanRTxc4vp+8kfHnLAvf8RmMghP
	 vqs6Wg4kWQTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5081C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957686279.26452.1256503171655135372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a246d9cc699f65033845dd76c11ac325f92468460ea8ac58b20004f0f89fa9
Date: Fri, 28 Jun 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719576862
