Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5A578F58
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743630595; cv=none; b=hIfbfCu8Okf8JRJvIAwNAX/D+ltZ0ibw8pYUX/MI9OEiRyW5IyLsoB3gpZ44MW0c6sefnDCH1AVpaHf2M1o+N+nnPNKhE7jDZW0zzexT5nEnGp0+02e1ZKW96y8inIhcyPnzmKu2lyWMU2/JnPQtVoiwa/L8SqlVUAdxLAE6bbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743630595; c=relaxed/simple;
	bh=/Z0poXUcnIaY6C/sSrBvuCYXyZEinjmTM7MM5fUeCUg=;
	h=To:Subject:From:Message-Id:Date; b=s3S0NhYru4AK4mXKfkXqNiI/cQ9KU3dYspT6PboG8KwQCze5ZfUVTqZK3xDUMunKoApTdJrvaPdqtNld+B6wzRwipnFugBMCDk4/O/IfCkxD1/NkUxP9UfwGHiDHQdPv5Ja16zDGQSVCNxNt/dB/QPmocdYtbxmUo4zQSVAYbDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xmuc5rnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xmuc5rnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEB9C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743630594;
	bh=/Z0poXUcnIaY6C/sSrBvuCYXyZEinjmTM7MM5fUeCUg=;
	h=To:Subject:From:Date:From;
	b=Xmuc5rnr4oFb3cshjq4BAL/tBH5MzaRs3jnDKvnX12UcE3rpWPaRtH/0fn2+Gift9
	 hcLRS4FX0uGw7SinN6BXl38PyHG7EGfchQxFTqGQXckxFlnOBqz2xu0QV/px9cldL1
	 sYHzcqEHC88ItcBhtDz1mCX7B2ABHZdWp0mqzzXXyYf1FkMDDckrprSxqiXexDSd5z
	 X8XX1IA8nO0bLfHFi5gZ0YVhFeEp98gMfzZgRxKf4FTURHXxeLAaveRVvR2EuuzQ8d
	 7izS0+/C+X3FeKrII+PIk9SCOd/mil3M7Opquy2mX0/ZuFfv20syYTpZI8hW/zJNLi
	 6KXuBEOEl/wVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66FEC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363059364.21771.13236058097331175402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc9ff398950a645e2c6cd27ecc15024120399204c82c019014c24939f5d6461
Date: Wed, 02 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743630593
