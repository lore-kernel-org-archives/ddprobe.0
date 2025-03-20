Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F71121CC55
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742491194; cv=none; b=BiiEk+J4ckrJLCpF+WcrEaIIOY2L7rBGcJZsVg8dpueiRQITm9rthAYEgDzdCKY77HeW5W2mKgXP37YtFs5A/wrBFXpcK6XrVnm4ykqzLfwpbzYDFozl5QC7KcPZue57HeedZDq5cXFDdB2GJ1DGLDqQPWH/tDQ55oYfqMFqE50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742491194; c=relaxed/simple;
	bh=5wUC+nkZCjFkCyQZLEf5bHABeuGuTzgj8D+2m5w7Buo=;
	h=To:Subject:From:Message-Id:Date; b=Fmqk4tz7Vz0autdEo6KRIkg5YPmmvJ/hU59wfh3QupOfC0gZLxzwj6JFTM1lGo0roP+zQtmp9PkimiErnq9SqJx3bnx3bbG3m6Xml2sjMkITNAoxW6oaF8QsUKnDTDl/XFs9owzEAzYGBmfDCFqeCSeRtFyjBpm3SVI23JW9NdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoQoDYAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoQoDYAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DB3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742491193;
	bh=5wUC+nkZCjFkCyQZLEf5bHABeuGuTzgj8D+2m5w7Buo=;
	h=To:Subject:From:Date:From;
	b=XoQoDYApFA/dcNvYOuA246KCVk61y1wM4gI6BdU/0EdwPD75fezS1u6zQcWb779o9
	 HRzObFHrZh8XscIiiYm2PzDl53v1avfVZGhcjbdDI0Exirsft1I8C5skSNNn5yZn5T
	 PEjP9ad/wcvRePqCmKvnGLJkDFXT5u+6GsRp0Uimtp7QAEKC+Fmy1Sjsmnyo29aMlq
	 3Ni+R1GXPjLzkoHIfVIYePI1vF3Tm+q09uPvw+wixvEAC8dLvsUIIHLM1342s+0v7H
	 688B/5ORScimOCqtuB5iQYzC8aBjukDbB4sZt+/7YiypDr/pBSRvjTBzikVe8enZqc
	 YhcZ+rj3lNNyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789FC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249119359.28438.14912279598785370771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9360092bf58e822a8dd97e7085297e3d9fdb3dca9dfd39d9f0f8964c60abe7
Date: Thu, 20 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742491193
