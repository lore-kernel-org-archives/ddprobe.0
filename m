Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065EE1EA65
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768358634; cv=none; b=WwY5CtdapFV5YKcN+/SJUijM44DdyidG3dVjgxhhi+A/2GvbEWF5RqnNfvE+SKJq5X06AiazSlNEDnZFvKVAcWse1qLncOO3CIQxc+jGn0s7hIiiBlgGX2kHE9He85/sEFu2vPOqTJaNhjGtHO3/EarNcHiDfnfSGB6k8xtkPWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768358634; c=relaxed/simple;
	bh=F6vIzJmwc6IjCB7C3HV5itYTzauwYy+JIG5SFSNQslw=;
	h=To:Subject:From:Message-Id:Date; b=E65QngM4I6+RU/mzVAhTNQjoYmpI0Omp380Bi13klWjyEZodPMJlCbqcL/eCpQDzVJCcbmaoIgI/ptIWHSiQJx1w1a03+9AuVVFzcH6Q1966kZTX6yIG4AN3QbQm5w5/YYpbF6DRqUUc0bPGI/Ifrn+bO9vG/zNel6d/KxU6fX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoA6Ny2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoA6Ny2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BDC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768358633;
	bh=F6vIzJmwc6IjCB7C3HV5itYTzauwYy+JIG5SFSNQslw=;
	h=To:Subject:From:Date:From;
	b=EoA6Ny2S7Oqweyolh3zE39ywkQKDCwnD+3L5lGCAW+6XReTm2NbN+Rg3pNx8lap1q
	 27iFhVp+KFSj143Zo5iGtJe4iR+cUZSMrUX7KM5XbBL4p2ANAcUEnuTu7GKl51fYxV
	 VFMPMP1wQ/m10EoZOUub8uWKcgcc/1bwcq3X6Ow5RQIEDTk2cOzbHV+Ks+8iFanSg0
	 BqhaId2oYYwjwM6UGS6ynMzWGV36C8Vo/g7Yp3zGM0F1jK8JSsyi0PD9nAc5RF6nz3
	 4mnvypkyX0JHMM82HqSsW9O6Ke0llGPJqlAG+P1k8kagndcWnHdDl/kHsDag+lLGXa
	 gIAd4/HalYYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93092D31A06
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835863359.785.2623702292721760719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3983885d078f6cc4fc674f807c249d7e289de7ee3110f199d902a5f4e8b442
Date: Wed, 14 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768358633
