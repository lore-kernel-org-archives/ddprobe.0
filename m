Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3773815687D
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742290794; cv=none; b=b5XSuEmwN4xro7EQTXSY+Xeu0RV+qW72dR8/Gi1b0RAsDxTREEicUoZKXViS4lQNhCCGY0h7NIbu+261PurmlTOBgy8FN/Do5wy+Aq/Y6Ize15sPh67d3Vc+fCxTW4a8AtVlnUwo/o0nOAV8gjGzWfoaqDFFb2mr9t3pBf9tWp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742290794; c=relaxed/simple;
	bh=MqxRo0f1o3XySs3P7L/UekJH5VUornVHj2tEv0IeLQM=;
	h=To:Subject:From:Message-Id:Date; b=N3lF6/v2b6J0BIQnLPbJPRDgpAS5llCT+DT/uAlbexdUosdYXYd1Gh6ZGJ0rX/2CGh2UlW5JCW+WJzwsBSsirmHAAhl8IgSZaeh/+8szsodITLLqZbz0gOSwTTYvjqWsqDKK4n2dsLz3a4tvtCD+uTDbSyRAttGwQOig5K6VdLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGz9JJOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGz9JJOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A8C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742290793;
	bh=MqxRo0f1o3XySs3P7L/UekJH5VUornVHj2tEv0IeLQM=;
	h=To:Subject:From:Date:From;
	b=aGz9JJOua0ZkdAqS/qnWs2LW57GoJxxOCC4IwiZqNmL7DSrEacwaMXQL41llAVZy3
	 866QrpucptljqiMKkUi1B+hqeXcVmSKD75C9siF0No0mlRjylEM96cYuXqCgzPEsiK
	 Xi13AIg9YW0ns36sHSIJ5YwsoYoc4F7fb3ZLLCTuMxKfqvKGPZUvKt84QfTaQBTqnv
	 BWTRolsExCvQymtsbdul1h3rpfcKPPeQR9sxLfk+x/sOODY8RXmnhb2qQ1SaRI64pB
	 rbNwculOGPSXd6ILtko1FDMdrHlQH1w4noP5HMqri4axd9JvfsK3z8YAyaKx1c/6EA
	 EhfQATzG4Fb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9876CC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229079361.17088.13632693496339262597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d1e7e698ddb214f8f5e8c02e3a29a6f45181c6c131ebc2de38285e1b7e25f1
Date: Tue, 18 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742290793
