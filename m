Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27B81C288
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710625697; cv=none; b=Qky61g2HpQS+lYc8IchpG6g89q3xEzXI0WygxdqJNJKwrPhWyIk6hwTBF3NFLvbs0bka+QBsPPk8t+iu4TOxWVs+p6wxtEcU2urXZG4sX6YuEH08es+vhKk+BlfQ4A/xb8k9HKhgeY3uYoHM+dcydDwY75ayPEP7jkJlMWkzO48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710625697; c=relaxed/simple;
	bh=NUfuwbedbMvVvLQp37wWEJNvJNllHMBccwVDeMpKRLs=;
	h=To:Subject:From:Message-Id:Date; b=ujB2nNkLt2MnStKCXqZUSsAxm/hlNIake94qOpfFc2/ufMp2jWNTfE2wfFcXaahMmu5pLLqjBmlMBwoynmZnWCkZ0cRWajUf1Nr78U5MfTGNI+Frcdi35Bw8ppoCwpJgT2/n1+qquaPNZGS6jiZYlGEOwxpMvM0uBwHmQ+dyLVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgCUSICc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgCUSICc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81621C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710625696;
	bh=NUfuwbedbMvVvLQp37wWEJNvJNllHMBccwVDeMpKRLs=;
	h=To:Subject:From:Date:From;
	b=cgCUSICc9gFOGslxddSagNWxByRBn8Vpxxkyp0qrCkNd0KUA1zpbTbMF7Zoanoc8F
	 Qcn/M4NBkSWHSlzBRYY6a3MfUBO+OYhs+d1MIdJoxaG4UWJd7/E7RTChuOBso+Diga
	 oxafkXhPRJz6+G8T0qDURfhGwDVjpbvS4Qj01MCLb+L58pyPbd8/sryvtSz7uOcxFZ
	 qlKaydSshviYrRdnLB8jh4QR41OmYjD1Eu2EpiQL8itXXwNxxKTNkH3oVUy1JM4OJF
	 H1Y1hSmtQ1z5VQq8KwRC3x74K7P4XWGg5utra2nNxVeDfhAiga6N/syHzRriEN0n1l
	 f90uD8q4TACyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEF7C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171062569642.3825.8863225195456059407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0330c2cba433a918e6db2cc8e90743f3ec49401e41fb1193135b7c11caa41ec9
Date: Sat, 16 Mar 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710625696
