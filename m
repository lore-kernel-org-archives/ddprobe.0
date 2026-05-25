Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079B4219FC
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779670354; cv=none; b=VK0XHznFHEHn5Y4c1wtqL31QSAcncUbwUZhgDftHH4bNf+SbZuv9NcKkyN0xIseJfqhMRiQbXb5p8Ei6rzXSMjyKLRvdeUw19gWBdhEAqon66Ejtc2KXL5DrKSM/dXvah+FxxFoGu7gA3iHw5BfhlBNtpYaHMicwpn5K4U6x+4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779670354; c=relaxed/simple;
	bh=iAuYvxBQe/MD0UMOdRVdwHa2BHmzJUhtZ+BsSQIfwcs=;
	h=To:Subject:From:Message-Id:Date; b=pvWaYdJkAH/Dj4bA77EptBPhqxMfqPIJs350uqsH9dTukjKpA+yviUQm9jLm7W6hDTlGgyUwY9nQ9bduLIVxpj7rKjFFPd4jqjKv2Enf8bfRocUJ9IJsoz10RhX+JMD9n+6ZqIfkTtpwuFgy+7KTBTaA9DkaWFE/RwcZ4HDxgS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHxNDao8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHxNDao8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CD8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779670353;
	bh=iAuYvxBQe/MD0UMOdRVdwHa2BHmzJUhtZ+BsSQIfwcs=;
	h=To:Subject:From:Date:From;
	b=QHxNDao86lwzrEBFTfze+H8vdrI4E4TUq9/aTuxxZKHXnfJlmP2qR9EzDHrBPYukj
	 XtBVl5hG0cnmFEh0G3qAlq7eF8pBvmACvctWk2NWZcwYWZYzJqUgQHkdvM+i1I4nfb
	 FCfck3kC2cjDMiqzCmyOcpkMdMVYfLXFGZf2m161BdnQxHhxP7ComKnonPVuzaeYFV
	 +lmQ/Y/tyvxiB9pBHqYyMZGqdVenWLD/rB1zMXQakwSyZpbq5Rqazs6AyNRX/bJaxC
	 gjxW/CxygbrOvTnoQoiF4WYNwl4oQYbG2I5T+FenkrCkkj2SfMV5uelP6cVWRvg9mx
	 fb+Ou9AxQcPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB76ACD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967035368.20355.4079443781633907166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a192da14894806cf4d20704779259550b63fd3dba5ffdabbd956f95146ca01c
Date: Mon, 25 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779670353
