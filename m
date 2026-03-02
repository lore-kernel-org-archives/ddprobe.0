Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08110430BAC
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772435094; cv=none; b=g8AkVCTPntq023LZIiXTC+L7k6Z53tSLYSoNeSvJT2vHccQcsDP6hLTw0FJV+p+V/X8Px30S4v2/COi2qX9AKnOAMLXf8ezYLshT+ET2YxEpno9ctbc5yIEM67LkZmTtcTigPeYoU3JfPxRFa0TihDQJPpyJPHen/zMB3TtVaTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772435094; c=relaxed/simple;
	bh=1AtXEiS78VoJz1SbxQHtBPQah41ABAmhLrDgkCm+rGQ=;
	h=To:Subject:From:Message-Id:Date; b=oHaos7UI+OizupsFariH0nFUlcOjIAFIUwwVBVEizhz3nbAFsMLo3as67IBdAA+5acKWRq8IC+3LHFPxS7KSnghAhX3aV/9fFt4k4uPXAO/ojEtuMi1a7L+epOvscYTY1Yaln2vlaiLlUWKAzcq9aaEU7ne+5VASUXOtPIehqJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDeUmhqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDeUmhqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C4BC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772435093;
	bh=1AtXEiS78VoJz1SbxQHtBPQah41ABAmhLrDgkCm+rGQ=;
	h=To:Subject:From:Date:From;
	b=uDeUmhqiwt8NEp2oj1f1zsjGby5+wf9w6nc0OMuvyLYFOUTi4c96ggVnIFqREL3sP
	 RpAWGC3Hao8R5G+unfTd773HDp4pvz2olXweKtstbflIBfbepgzyoPjwkWr+6skbCM
	 gtFIIHDY7nKviDa3MVo00VYEHjC9ym/WNOhRSnkHFNTRknOTLFOJY5BatM+r9mmyOy
	 1Pc2JtOHFNKN7CK90D6WuU8ee94FrSIk23SvPDo7hMoAIO1Pqum3o7RzIU5yHF43A1
	 oNtP/KYg2uKHpzY7A4T+FMOHumJYKZuilmyhIvcPMeH6EPuXRYFwAF6NaQO8KpGUnK
	 UxR9oNIGUZnuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5AD58E6F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243509360.14276.483199057532439957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575beba244f561f0ea262646948104191a8e3c76de86b7ed32cc802cb2aef51d
Date: Mon, 02 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772435093
