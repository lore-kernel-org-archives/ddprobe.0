Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EB5399368
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786085434; cv=none; b=LkU2EQ2gAlguvg79q6AXAQRXytzEPxQj6Y/o8U6XpjF3tjQOyMPVHQ84fFQ//G+z4bIaU09pQq+grVvjvV/2ZqGhwfcAGnA1f0IvDTLlIeIg3HeCNGQjfIDPJjuKh/fQT0D9PgcOqQDZlUXT0zoMbOLcu2NF/UjoDe9pLDMNCXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786085434; c=relaxed/simple;
	bh=f8b9uY8uIw+hlKzwCUVtlB/0KkUh0Kx4bY9OY5dRbtg=;
	h=To:Subject:From:Message-Id:Date; b=AxJ54ph/rAIUPc07E6FC9NFpJPR1QR0fIsH0iGwuVHXzMI93xuas3AGI+y66yIw64scmMIbJWlWfWAyBF1Xp6XQPg3nwJVVzi1YzLD0V+TwjN0LP7YpLTeqZZWqaxgIOoUZRyN0e1KAHNsRmziBsL/QYF6FCsLdR6iLivZKh/Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAALSa4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAALSa4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2737C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786085433;
	bh=f8b9uY8uIw+hlKzwCUVtlB/0KkUh0Kx4bY9OY5dRbtg=;
	h=To:Subject:From:Date:From;
	b=eAALSa4OA+p7jB4jBryTL0ya3ptN+BPM0ka94Q0Qs51ju6zrn3y84WzxrXX0EphpM
	 kTRs93wCfQLbdmEoGxJ4ROrW9s3MZbi44eN9WytuI5hcMDRs97rhwdJhEaJsTDX5PZ
	 I09t7tnQmgIkUTWdkzh81w16TxFYqm9x+iwY0EtfDGglLgOSYYEabgc8IoWrPr7bWC
	 bjUK60e6tAZKe3T/7RUzzKlM9IyhffKbbKOgNe7nSK4iJrC+NanAxKNijoUXOPru80
	 cVOLozd/netFuTkT+u3Pe7N3iAQyctofAQr/HqiYYGvl6oum20gE1nZ8cv5eSTvGdj
	 Sej2EDpidmKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD42EC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608543369.831.11538255049134713650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37aefeab3819a1b78fdf9cae19bd90609e5af606637c0aa7e22a584c0daee5db
Date: Fri, 07 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786085433
