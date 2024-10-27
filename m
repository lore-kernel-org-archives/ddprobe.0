Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328684084D
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730022354; cv=none; b=nhYbEhlZF8URvt8Z3Nm2lUtSnlrlMv7WJAGS6psV354Fd6xOXY4Pczv0NdnNS+Bbc2QSwf/rc1P8JCEb8DtfOA3grO5VvLxIMvRiYqXFsD36PZy9SpsK6Bs9Dlw5eprx4I4ugJ80uL2K2HixSujNkC+tYVtn9KbQkVdOujGaOPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730022354; c=relaxed/simple;
	bh=7GP7mtyXqyTOHh4OwZvSI9DBT9TYId2QtT3gk+BIj+8=;
	h=To:Subject:From:Message-Id:Date; b=teCykKGVzl3l3CcyTenMT0mBA11JfCMlve4qbfoBzGSKsomO/wJ3DS4LUgx6n88p31iPzUe4FKbJMtNWt0jU574+d7N19p4nwvRUZytk5GgJQehdXnab4fX61EqfmXfUU4UZDvemQS3HBmjMnbEcrQTc0Ba80ZljR/yySw2PYjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6Y/zrJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6Y/zrJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6811C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730022353;
	bh=7GP7mtyXqyTOHh4OwZvSI9DBT9TYId2QtT3gk+BIj+8=;
	h=To:Subject:From:Date:From;
	b=O6Y/zrJZ0N/Hyg6oDwvpmjjYlsBstGKr6itNrHwbnEVe77U0ttgJCpdf17oW2iOhD
	 j1g6z/j90y+9GBLBxZVcDMUttTjjY9F18BVK7fmh2ddDcyoFRVrcmsi4etRsfJU4DA
	 ASFsyAu7GTCHrPWG8wYFbDWN+DCo2/hRcmoscPmgTaecj7dbjrSNQus9rH/kLQEQbf
	 bY2xWkUIzUIkTY6K6PVxakVyAI4Jil5d4o+1K/5B26MUDOBbBfo4y3iSI8Ht0/qfZS
	 EAXgCNGhhYZsf3LdVjqZhaFOeUgvs0mMwIRdI7YhzTUwVDB688SZ5MwSY/HzYaWCFN
	 kYZHTAMfeFg8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A569DD10C16
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002235366.6403.17998854755144765693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063c877a92cbacee7aec54453c2ccb3dbda98f9a678389ce5a1227d0a623add9
Date: Sun, 27 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730022353
