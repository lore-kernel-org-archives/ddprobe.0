Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EA01F938
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787706034; cv=none; b=myTUDyTCUmK4TcGUWiidmcGsTNuTJpbPiQhZGDMPb610nGAuSEquS4qeCD94v6m94FDIsP75LNwtp0NF89ywrCDT1yqJCopj4ickdlvg4TIQWodufrAb0UyQa0ENcCw5MMJyQWac8p5GcZVp/eEv/mMNOtTdVUmVfqTfQI71sQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787706034; c=relaxed/simple;
	bh=uMR3oy6XLVuBISaYZwaKxLQSqHoJUYsVUUX2332nqGY=;
	h=To:Subject:From:Message-Id:Date; b=UQFgbCMtbvx5fymjvNTxBiTXpsj+5sReWBe1/01ljUUeXBb6OLapcEfJ0xl2FZqWew5GwIQEmLYfos/VH4SQMmL76LWkfp2ZQcQwPnCH8zZ8JGfWx/dw4ElzW0FO0PwlzHQ5RMXSRks+O4XqeUAgNblW0/tvdPQ1MpVwyMpis+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI4f9yZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI4f9yZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8BBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787706033;
	bh=uMR3oy6XLVuBISaYZwaKxLQSqHoJUYsVUUX2332nqGY=;
	h=To:Subject:From:Date:From;
	b=RI4f9yZkXq+x2HUwUkNhaM3fWJ9gXD9+LNkyIhh9XejlQSKDulRhjkC0mQFNpES9a
	 kSyRk2s0Hf8THahSsiAn+Tpjx+qYQK9AhPisBZ7mk+u+ToCrP7nC7Hc7j/SKsokZkJ
	 39kPKMp0h5BqA0eluKWTj9FKyyOv4qXfHe1IWNh5SHCkHNOigrCHYoF6OSMmX2XxVm
	 TOuIrPyICdu7RS8xKemWFAVUyt+82Q7PO5yUfPE1jq/hMjUgJExD0xVT1pfLuFixZU
	 78iMa6eQuUlIwpk4nMDmLl9gLIQYE1czkxeJywHwO2JOEXsqxLyJBWkXjHy76bxVsM
	 n7fnMJzkkH9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E5C61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770603368.14757.11585699236149480622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67258f09b706a0c4abd136479334ca34a689814b8f366b9305f92724daf5344
Date: Wed, 26 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787706033
