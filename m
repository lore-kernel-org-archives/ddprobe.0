Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564CB3385B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791042034; cv=none; b=jSnew4xWYauA0HKwL0O/BYC6uBlAuYNUhLFkp9eXz90GJBrqzOl8fBnNcjZGgLlnkF4UhQkx5t1qY8Y68YQO1cuUj+uNKwUdfTxqdTj/Py1xCxOyJ3osNvHoMnJmy2up8TEmK7jq2OAMif00ld6Hqt5Cjwt7eggWFb9xIbEdVyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791042034; c=relaxed/simple;
	bh=Vtohs62BSAOj5WKVKL5YuJIayDW0nohHpatpmcpzNNE=;
	h=To:Subject:From:Message-Id:Date; b=oi0A03tmJQEGUos2jng2acNt5cuCBy5eYup2YM6oEwmPjkZ+FgP9E+3q03fBfo8Ilq2aVn/GoFTOREp3VZwUbcgAs4abp14jo7qfToYaGXugQh/uquAiNIjUyrXUHVnfrnUwaRYvOkRXrXTzsUP2Qmc2G+KeHQ6zlqJd726dN/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffrNrjEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffrNrjEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3A3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791042033;
	bh=Vtohs62BSAOj5WKVKL5YuJIayDW0nohHpatpmcpzNNE=;
	h=To:Subject:From:Date:From;
	b=ffrNrjEwPQgv664FsZ/miLaKsLgJjthbqH2VgLKj8MtbAscISBLcDzGXNg8Bx/fpp
	 YPKqfiDfT2BDxzSTHppShCzawDHY+7WViDABFktyeYoo5yfkgBp2sPMrrRMsfP2Lwh
	 H/fc8ui3WGogRqIcyrbQwD1JU2XPgVt0mGedgWeHenmrp2WSLdeNdDiaDGgdeTow0l
	 1pUDSI6dX9unX4eJNXpMCteQ0orN49RsunroUDqXd4nd+5zJ4XqInzAzxqXKLR7hhD
	 HCfZjRzWRwYtcYkvUk6eUQi54QlQqtZV0IyPY3gluO3pLxetQdVa1TdUKTqguyOHsB
	 tFM4OsBBiKf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4189CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104203370.29645.16255894609396299813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6be2364da4b73a4df28feb932da28e33901b34794655745dfa2ea066223849
Date: Sat, 03 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791042033
