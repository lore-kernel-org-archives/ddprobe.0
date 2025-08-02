Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20445AD5A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754119795; cv=none; b=pNMI/kh2SZcOdt6Y0N59Cvde5C1+uzD29T9Sez2das/2BpqGBl0QjYcMyT3/RuXHxtOCTLuj6zJTwpVIRJAimGnsn1f3+ajLVxCngC6ZxI+OWA5TNZGvflk0wHlTaS3sBuQGHMZyfUSpaDeSNyDIDKcrdZdQJ3xWON5ZpB7MeyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754119795; c=relaxed/simple;
	bh=iRXI06ek2C0R8w1/bpBdhMqCJo3H+4d9+UiJ02a+yvY=;
	h=To:Subject:From:Message-Id:Date; b=SIAXDBB3/EqWdtMLrHkDOap7OVtmgwFsWugbzombm6/JS0WwaKXafj58XYLv3B9e4ymgq2ST362pnRLJekxZerpYdRFqKHPfue3KQEjreHLFT+jUCf045HFfB2IOYfbY8BYqFYm08T7MzgzzIUB3fqMI+OrGUZ8fawbb9rQwlXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy9NSiih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy9NSiih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754119793;
	bh=iRXI06ek2C0R8w1/bpBdhMqCJo3H+4d9+UiJ02a+yvY=;
	h=To:Subject:From:Date:From;
	b=sy9NSiihkzhqdIepbleH3JiMo35M0CMA7K/8hooOV0VcEhDQfwAt7AetSmX2bZZTU
	 L+zk6EOs2n8UeGgl7GjVHx5ulizmhyWdx9aBcaIxqUPKqQsQR02177qRSTcDL8DqM2
	 vKXXkIZImRw3+UFJDuV1q6W+rfvOtM+80ecY5xZWyjb74dYpJUfAVAqCS2d7oAEVuM
	 IESv1YJA5hc8D/+5wzQlt8Q6aOA/QvbGMTIyNwgczLDAmbB7HeQrSPU93NCI2P7S4L
	 ROYYdCsm/+gmvGj9LVyK/d5rbEXe+OtFZNV1ihy4vB4wBaIBjG9VEKqZSz2c1GR73G
	 DFfo28aV3lW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926CFC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411979358.2736.11052734222817014589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b14df32a8f994867f410788c38a4d6e318e10ede57977f00f5dabff6121c35
Date: Sat, 02 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754119793
