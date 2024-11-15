Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1933E16F0FE
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731704154; cv=none; b=sHqqWt0jdjzioeK1M2yimfAzLaPW8DKh9m5qgc4tiocBkiz2FYQPA9GPgPpaLYbWC06ILuLSxXr9a/TOkNGZq9qrTtS3mD6/KTHcq6acq7/gmiLmT8K3nutxVPrjo2e4M/0XTnKPRmAjdTpPmQ1TQR4K03tghsgov248xz0fc9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731704154; c=relaxed/simple;
	bh=uQcf8CXcLymgsEC2IdD/UYz2olkgzOTgCvaS7w+36oE=;
	h=To:Subject:From:Message-Id:Date; b=jUHRIHC3rfGuZ8OTs6gadKV69XEj45p6LbGZEv1ka4+AsV64fwVJm2PKvr+W+A+I3V4fvIE5q42j5gk/PtQ4Ec0Lez8QkTcFcPyaHQ7OXyt74vyAqlgZHhDqOOgYH/AS9XWCz9ouMIg+XLTrYQ3PzpF0qdRq4el/th1iUI+0GI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKtoBs1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKtoBs1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0367C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731704153;
	bh=uQcf8CXcLymgsEC2IdD/UYz2olkgzOTgCvaS7w+36oE=;
	h=To:Subject:From:Date:From;
	b=sKtoBs1/RbF5/JgOsLJduM3bJWrHFKF1Sr/3hq3nmbnaEbBc43bRLOmQ9Y7BKJL1B
	 BLiMdTHu7Bc4DPJ7kJN4l7vfvJXix85JEOjgOZhv2FYO3o4VlDfQ6RnF2BbyZpFhdg
	 mud1En8PhcNm+U5nBos9VOtM1yrY20E7Utph4qBkbwwvHa5lmI79h0YvXebONEw//5
	 PuX//17MTk+mq/sUqit8JA+pqRRR5A+ZLCdDWKvDNa8Q/oXoVTyQGoyT4JGm8BZjMu
	 I6zv8GQTWuka2Ukk4CfMI/3a5fepuDBoKFGRNEcE6yIlkTaTT3iCv3vOxEIf91pjod
	 8+YXUafT/ifcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E5D68BD6
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170415358.2631.5437705971044676440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4d7dfda3fc9d2a7dbf726f79b4b6d6035ea36b3c231cb91f02afec2a3a085a
Date: Fri, 15 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731704153
