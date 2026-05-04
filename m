Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2378917A305
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777873054; cv=none; b=mG5KcvR2pU+kNnF7TtX18La8i8/YCyPJU8l6SMc6Uz0PRoJ+fvGXQdnkXBtwV/AP/C5IneFfnpHO1ltaGGtiMw4RKOWvA/EosZBMDzH5lmVx4+SR6fkLq5Ng1xQ+pV6CLn6+9a+YhDHe5rGxF1v5JA2EdjMKS+amu+MKqizHnfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777873054; c=relaxed/simple;
	bh=qnhcd97qz/BJh/Zk0CdWTWkq0jq6NII/KypwyNh0kzw=;
	h=To:Subject:From:Message-Id:Date; b=rcAxxuj+2+ZbMVtHHLsx2UOsWkUq5U6B2so1YpgvKxKJuTD2tQnIox7RvBODpDJHAqXf9B5vCU6v7stQ4dLt3cP0h+bb/resUrp22/apoCiM6YVS1ppuhvN7RRLjFhZTVDOQOuQ3PA0LOZ/a8CkYtfEAu1aGhYhmsQtjD8+NG0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA8UTr9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA8UTr9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CECC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777873053;
	bh=qnhcd97qz/BJh/Zk0CdWTWkq0jq6NII/KypwyNh0kzw=;
	h=To:Subject:From:Date:From;
	b=CA8UTr9LsvNtx4ZieSxYpvR4SqtjvVTKujOoUmH6trTik04kaJ5zhQP2lOJADETKb
	 83fICJIGk6VHXkVufrsdhsu9wUtPi4IWn+hZ7xqtQkYAzDl+4RiHPXAsphOf3vbx4S
	 jJJ5wa/9ht3L/CkEm9rD5G7TxaVlgHMM3EnBnMfBkZDrARku1GcHWdZ94jz5VUTjIp
	 1hDDRu3zAd7S6kvT9caecX2czC7AzsqbcFJgvaxyBhtng5wIbIbmqZfheV+QV66G68
	 4HDqgyoQHyY/LI/qhsxJ+uK4bKQTwwxSK1A77SeL1rQYrzd4zEXv95r2veNwleQAMu
	 XTPAgN05v5oSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F7CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787305368.11534.2327228154219626929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e7d89ab6406058548aea637d6018e0de1ba5c3aa53ae7ee8ec9ea3427de55f
Date: Mon, 04 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777873053
