Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6049C13DDB1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716982463; cv=none; b=lUeK0qHrV0HnCtvlaQmNlDehsGhMebwY4xsbcOIJ5/HiSBbdmvii0irV7CsrtC0EySOpgzlm0FZg8JUcYwF6L+A2RZwZJSxDlRaJilfi6G3qCjiGdvw+f6DMJ5hoq4YcG3LX2xiAKWGugynhvP2nN1+Nbt8SggMUnQsDfWgcDkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716982463; c=relaxed/simple;
	bh=yM/QmruBTaL4zMIFhgGPDW5Y9GRkWcbgzyUE79uQYS4=;
	h=To:Subject:From:Message-Id:Date; b=SYH/vjp7upoMRERJJ7xsJ7f/bqI0vue/vfiDigNwm5zLjMZvxifMr5oy8vvowbU+h7A5fy63DEeDPO1lDtlAYqdiev1EHVJhv2SB6y6zYzowpQ1mRkzkSTp1FoBz37VrdgugXfc62DzFB8fbdhNSv6x8i2xZ+k7C/ShCbC37rfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXjlyKEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXjlyKEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C2DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716982462;
	bh=yM/QmruBTaL4zMIFhgGPDW5Y9GRkWcbgzyUE79uQYS4=;
	h=To:Subject:From:Date:From;
	b=eXjlyKEA5VL1R5B/85dDsPL2LRNcnLfgXl8vyCs4iYO92SzQbhrAX+1qkdr2c4SbG
	 3XlRXVPPZXpHneoVaMdi8qzhxMhoZfdFaeRlZN160rHWhvHuymFWfBoapFRQkp0v2u
	 DwYEKHkqV4RE1DvzBHcs7OOvnrVQa5F5tHaNLZc4TReLdLFbVlCK0aEZPV+Avn58go
	 hZRjpHE5UpBwjerBMYF2LX1ZC48CBLStA0pqvtsFB/vNmYhujfJJFnHHkRd5oN8Up8
	 juhwTdsclkhiPC5ShpEZW/YXPjexvjM+NZN/8DcuGKKWcmt6hPP5z35KAjVP6cOzaa
	 D+LWykXGyTxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD03BC27C43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698246276.25094.17381377996658701920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24188d502452878d98f1a0bfde965699a2bbce99708a307abc21e39bcde3c36
Date: Wed, 29 May 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716982462
