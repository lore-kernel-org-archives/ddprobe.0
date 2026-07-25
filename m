Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6955C188713
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784943034; cv=none; b=s6YkiGgh4g4uigtKduK+lBH4z9PXhCRPSzBeA6YjvurTlUnTGaGkYGXvFGwJ6jjztG31f2pqUF7iufMkHx1WUAQuZT6Sc7e0kn408xvAmycIfCvS2rGgcDcS2BAOYUetl2CYguz9ptkf5kx1aWyU84dZ7zaqz8+ZRkHCVqaSWgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784943034; c=relaxed/simple;
	bh=AbOINBBSLcCC82/5dCBghV2xlxDRrL9C3LCtFRhGbXM=;
	h=To:Subject:From:Message-Id:Date; b=oOrbUhJRvJ8lAKJyn85O5fSj5hVtCFyvtE8yJee/p2DOkh9By87iBvyngLZ5lObWq1gSBfyQnM5fq/EhTymK5cJoo9w3hWJUhBANYp9epQzwCqL59ewO1Nu8FdaOn/XDIEYFnjTWqliX3/eJirG5mamzhx2672Hk607CxMSF2d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9w6UYwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9w6UYwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F27C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784943033;
	bh=AbOINBBSLcCC82/5dCBghV2xlxDRrL9C3LCtFRhGbXM=;
	h=To:Subject:From:Date:From;
	b=H9w6UYwJ2mOOstPTLRmMI0m1xkKf1H+RHRfkKDIcglwcIZKr66b4vFJv/cp3sqI/Y
	 HsRJ9+LJaPK44gkpGGyTi8ko5yZC0yVsR9votjCWXoLPqNqvdZgqyrnRQ9txGzHULd
	 Nc5vV2ye5rThSy1vTQJ4tYxfstHeoSpYQqHrZsPwg5yajGUgh0OzLcVYWf9tKowEBn
	 hkSmPHvsnfSFi3OBxDIaVGBENeW9frDbRPm9R3Yq74ScRgGghOp8HA48yFPFnkMfwW
	 OLqeH8cd95JgmGdvz4eqka/GmhC6RYOX5OHNi7guRhO1nPCmPsPmZbu2PxPtG2FYd9
	 SOMiUfi86k02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE14C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494303368.4780.9552146415134041953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daf61fd536f4e58a895a4706d9ba7ddd6c5a809dea0dd7a01b3a0b3c8f7ed06
Date: Sat, 25 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784943033
