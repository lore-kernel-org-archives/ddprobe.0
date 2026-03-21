Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF32DA932
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774094694; cv=none; b=TrIr2uhrZnKtwDL4tT8i81ri5Xt0SbHEReHo8PtV/I6sHHEMrFr0QtJMfxXnRU5y3eItTmIxzSRWwL4kBaeEnG7fPzfKNjWInpSMToGEc/AOCysJtDEmpMag9PpynjlGQ5/IBPZiyKbhfPBWtiMAFHgd1GbyUjlPHvsi+oO9j+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774094694; c=relaxed/simple;
	bh=Yq8sHFOnPPLu3PYPSBQAeKh05yJbtQ3ekpym/ytAtYU=;
	h=To:Subject:From:Message-Id:Date; b=puInuLUTyNijGOhQtJp+SnVORYFHvv16U74BXsEMnZsTXuQC1/WxCLGc3xA3eViTUjiJUgqM4ELt5oHWemLNZ2g75EK+Xjc9vBVcvIqDe40zF2ZmASII+dg+NHzWox9g45I4LtJjpLlbG1d/s0lTOP2rNRWJywnCBl6GEjCHJ7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVxqR/0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVxqR/0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A0C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774094693;
	bh=Yq8sHFOnPPLu3PYPSBQAeKh05yJbtQ3ekpym/ytAtYU=;
	h=To:Subject:From:Date:From;
	b=rVxqR/0ZYsWgZueQJTk0PpYmaAt7AoTQKdaVcSi0+H5h/A+OwGG08ysbQumIrGsf+
	 iUUi15001l6QbDOWEBStaVja3rz12mf5Nn9nbRhpCq+FqJ+t4Q+u1ChR8krhknSaD9
	 AW93WBrmD0FUK/OjLocjaC31fUT8kR7LTVXeg0WGHS2fX7EVyjsz99Z47duZLUOpef
	 2s35g/kgrzpNd3VOxxGSVxDP/3+8F8x0Fisafx6F4S745KIylWapu0VRQ1HVwKInhx
	 jATLuF6cahb2zNUgzg2lwgelKhV1ksbrWIFqpUHAec30m+D+kd8oEPg2nKVTfWp1vY
	 BlTDV6fC6qGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D891094471
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409469357.28876.5024120072205714699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06617a1a4a3429ca24f75674a3f21c213e69655993f725e042a192450c4e4c96
Date: Sat, 21 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774094693
