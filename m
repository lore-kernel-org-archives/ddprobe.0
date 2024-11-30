Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356408468
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732986354; cv=none; b=EM0Rfuu3GKYgbfwD5QzYBnGShAwccgtYHeIojgZKIYb8/mPttuDv93DTIY6vZOlUH8BVnYDH6Qz3bb5syLS1tGQprZJlYn8puEJ4tX5o/dome7F2H3TpGNsEqx3Lcj0xiAs2ZMCtZHtuTzIVpTaKlXHYzebKubYcjaAQ+igjkMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732986354; c=relaxed/simple;
	bh=RVkPQr0arhas9gYm8OMME+aywYe5pl9pG5vOsIfSmWQ=;
	h=To:Subject:From:Message-Id:Date; b=ZLCRj7KomSFR6MsH6VkOIy86TxozmhptWyqLc8/5vckcoyXb8k4al7gFi50XnfZgyKCPTQyUUMcATVJJ3ukC3fZdwi0Xm9ZG8B3UJ6DtJ481wYJgL6qqVeqaLhfC9tEXyCu6WfyvLcGL0/hjpchkzlSqr+CI+dhJnDh2Cd+KLGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCRRyncR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCRRyncR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCA2C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732986353;
	bh=RVkPQr0arhas9gYm8OMME+aywYe5pl9pG5vOsIfSmWQ=;
	h=To:Subject:From:Date:From;
	b=PCRRyncRf2oelfeaZqsARD/vz4ZDvHz4bmY6LzMU3+Z+Lga+PfZQB9+Q2MVv+LubR
	 bhg6rJWgNkJlhwI5dU/HKWlYo5yC/wGNsHn8EcJizxgYdfICLeOpDB/gh9OyzXmhpT
	 UCV/FNSvVoZ0ELXNCrQh1MzIxzfugrg/dushIkGAs+UdhfNr91Jq3SmNnICDDaAyTq
	 ujzvJRE3drQK5pv+UGVzoFG5tYo1DoOUNYyesVQlgPgEE5D3cTAHthYFrdPmaGnq2x
	 bKP4kogmXvk+P8FX7pl+OzKVnv882yhParn1+dxO0B0vU92G2xqMXpwRWT4bXfo3yV
	 N/Ktxnpyta+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94121D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298635358.21389.17541280673740453304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859695ca87326f1fd609af0eed23b5a282d69e8af245d1dba9cfbb886d2ba4fa
Date: Sat, 30 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732986353
