Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2051865ED
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763904114; cv=none; b=QlLcXLsk7NtzI6weBJ1wIk6eyW22RkmRhzAJOuT2+c9eJZ5gfVtak8dUsLLCjjAcC+YYNapB2YNxQdQv0eYdYb578SjOVHhuhUH9tQT3/A9quc8WvCyF5chJOdEJH6t7ZgBpX5W/9koLfys11n9wkYNcBEEZuIdVjQvLw/G5iNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763904114; c=relaxed/simple;
	bh=+ntt11Zt7vcOOdbJEtjUrvwO+/hARPkFUhV6XY0cFFk=;
	h=To:Subject:From:Message-Id:Date; b=INOVCej8zwRAqiMqJH2hZWC1o8FRywWsTtfqvT1MijhzQvCOszqDr9CtvvVHuibhIJ9UqjqLb21S5mslF/p3yJFDakQYHWg7tSC0l1nbW7BWn02wz0AtwXs8NPlUEwKWUC5T95omkHPqbxPdeA0Yrn2WlVLgzPife4wTyRoqsZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEhUKBj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEhUKBj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E3AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763904113;
	bh=+ntt11Zt7vcOOdbJEtjUrvwO+/hARPkFUhV6XY0cFFk=;
	h=To:Subject:From:Date:From;
	b=eEhUKBj5qmEMN1vf/u1d9388Gox4+CU3feRZaK/s2Yqk+OgNP94s91srlagbrLYpV
	 sgEE6fTT8vhwi04W0c5wzUfvJMdEJP7ui9X2mbyH+8b6MSFGWZ0hMDS8bQIWV8Gifa
	 DxJdSLosWd43ulF26gyPvnvCyv9s6nHa84kYE24zBIp3IxHuL/enIxnQpZmf1GbjdB
	 7/3CYOFBCDYbF0a65qoIcfPzTCR4cg9kctl/SkgWq3RMjMHI2C/JjnmpoejheYAIVs
	 joKzmQMnJ838PkXK77YNYFobuJQT1IINP4W6ugGYz7ZIh3fERAaY++mKmbVeR0RtH/
	 5apYEM7kIH28g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B7BCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390411359.21090.3740672106042713452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec3c2b80a739b86d71b527411c4795f6a69538f15a06cbb76c9cdff6c919f7b
Date: Sun, 23 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763904113
