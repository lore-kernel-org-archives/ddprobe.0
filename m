Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C5F2F12CE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768323834; cv=none; b=D7PgFk5VO18m3WyAiiWymmqXQuaxWoUaQ1goRei5jAmF8am/H6ECbdQAfCUfvY80vylDv7j5NPCfxKr5ciihYD2PnYQBpGXflv37x6kwW/afuMTFOEoAFYMQrqRuO1nQx2Y+8aweU4F+HUUTt6Ed9XiGR+59MPShcWvQwStsM0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768323834; c=relaxed/simple;
	bh=Mb9DdRNHdzFD8ONwySrjZwU+9JyIHi20Y1iHjoEObnI=;
	h=To:Subject:From:Message-Id:Date; b=fRYKMbUhL3eKbLP9q/wJYXQ2CcXYku2+hOjx2hahIlhxjBxV41ciFPF/lbgdenY/Cs4Ya4/poMEoUgGZY9OT3cCLbqmxlR7DJevLPR6VtH44J1IIHkLhkpkO9jHOw+wdWQ5vtzbT0YINIt6zKSXlXPh4YWfWwOD0XFJflZFUu08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLIXSujz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLIXSujz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F397C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768323833;
	bh=Mb9DdRNHdzFD8ONwySrjZwU+9JyIHi20Y1iHjoEObnI=;
	h=To:Subject:From:Date:From;
	b=jLIXSujzdRtgvv1i24RJ/RcRqZ4+WzOj9qXgiQo6YPn7RCswRVfowAxmAVtv1KMxE
	 Kqwck3OiQD/6ekf4Xy1jEdCpaD9pBVJ/gfgS/9hgTlZ8APYuR4nGPBB2kbHfGCFPHe
	 7cNRYQ4uOFPUI7VMmyjR+9Ys1iwepjAa6EWCIiNmMbjxaREW35p4CK6OFX2wOU0Pqa
	 SnLO02H34VXZviyamuMcvzvfk8sthe3TC3kzRSuzKeG8pOr+/HRDdrkQQLcfIz5aIM
	 wL2oamRQT8G3W1dRJU8fnSNY63CRcMtE7VUo7S9tbz35mx9Q0Aa4WlArC6VViLaqAD
	 dpg8hhoD7Qpcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EBD2F349
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832383358.26648.13750518774095606187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d083eb1d3def32b3b80a599c9f90e96cbce1317574a20168e1a0d68b80cf884
Date: Tue, 13 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768323833
