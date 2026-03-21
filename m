Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1032814AD20
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774134294; cv=none; b=NcOeHZd510gS2d3nS0DoKqJAM1QUDk8cHVZ1wMIBhmAK+CQ9vLcnlCd+lhrRWo7iMFHT1Qv/BZQIjefaLESJyWAjYytT8M2VUq++ESH7q4ZqBNSzeG2CZbHriXr23HNzvSfGDXl4F5JwjiAb/9BOVE/TOVxlSkEIYcKxjfunpQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774134294; c=relaxed/simple;
	bh=VUgZNQVwXI5vdK/ZrpRmtRshH7ww2G1TIIAa2ZBFeHE=;
	h=To:Subject:From:Message-Id:Date; b=t9vF1yKY1TEbRK3brJJT6IkwRsIs5CrXufR4uLCDDoMTdIDPNJ/aOxyaJYeKoJYRzYg88eKCFWCQ4e0t2j9JBytbdlLgbZ17WYq7gh1Ui4agSazDivOPHee0x9LVxeLOkZ6coIki8giGtED8NVvZ5qihoGPOTqHSNXDtl6Hh8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrbcFMW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrbcFMW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554DC2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774134293;
	bh=VUgZNQVwXI5vdK/ZrpRmtRshH7ww2G1TIIAa2ZBFeHE=;
	h=To:Subject:From:Date:From;
	b=nrbcFMW40Xr0VRhLF0bVw+4vXku6HEh95hGFhvRS7OKsaOZPftgTnXR74lDBfAOs3
	 bX/HggNdk3Nal12YpfcvGG+I4ICL10MDzQJhaE3FVeTa5q/kUJuU+0DLOE9fUx+bEN
	 I0qe6yexBYzDnSKG0G80DfJJSe9B7u66vFsLtCOLdhd+Sdpa+XkSwnjnDFnsIb2RDd
	 sy6cHf1e/oitS1JqqAmWS99vQxvib9ZeQ0V5iHgqmBQpHkvHEf40WOac6+UyJBVNQ2
	 XYh/ichAbDWE8uWnxWyR8mckkfFcMoRcBne+vLpZrJtuKyWvGHrinxzmOwVsf7IaYI
	 7uLu92eahRP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91043109449E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413429357.2833.11427884215735717212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4f8205eb9c3a2204377769be448ea8b32eb188fb024e99888246d53f67eec8
Date: Sat, 21 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774134293
