Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E10623E336
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750772994; cv=none; b=dorLCtSkd+1UPh9uxeErPACuqNG78y+BqM9QzzpVfYYBWybo7eNPRJzkwD2PQPyOUFKsIXcxoBTGqNE88vQ/cru7acW+sUGN19NO5Hqi1gUyJbvcIQtSapHnJBQJfC/atZKepoDfUU9KVhOW8lgnJYqvhwvtymNwOz4goHMxrYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750772994; c=relaxed/simple;
	bh=JVkEmNFURfME03aCJx+uR4uRQV7Vcgr5a8m5kdA/4IE=;
	h=To:Subject:From:Message-Id:Date; b=l0RVLKCuWdN2v7mc0fHNf+XuCXO7un6ibGOuhjqu6uLjjqbtTTxfY3ARATrL1KnCdy8zZwkGxvTlBcGTxy4uY4GOyyUvg1wHYz9/CnY/1n2+Wh1T///aNOa3Vpnv84Cy2KxJNi4Jtwif+W1XSZbOqv9aEo4teSc8fgvYVIaNk3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXZufljG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXZufljG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3699C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750772993;
	bh=JVkEmNFURfME03aCJx+uR4uRQV7Vcgr5a8m5kdA/4IE=;
	h=To:Subject:From:Date:From;
	b=kXZufljG50WQPdWVcu7srYZGEGkXpk+ikuK9Iszc5CZFu507tyvv77m9RaekY19ve
	 /cb+I2iEkb/Tv0fKPyjVjO1G4W3XYzpQtVGHCtzMkgl719dRa+gzSshgOP0gx9moOP
	 4txFjM3P9DcPISOXyaabJeXEbMna5TKjwcWBSO7dpVMn5Q0fF5rsOcHd9H+jzIimzo
	 sL779rKtT62bv/oedjwACW31SFlhy75I7swz8slMaih2qch+87daMEW6C4rMLo3nXC
	 q54WuFPf9dk55yPD4Hfl72HBMNAIOGOdr+BMapnCa3RThCsLjJwiIFv+XIx5vpYU9N
	 2hGYfWtNaY3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DCC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077299358.2754.2792700422518005593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143f70545087f054414f75e137421c8f6a6dd88ddc878db7e2b1a37db06c6c97
Date: Tue, 24 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750772993
