Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5A41A304A
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785717634; cv=none; b=e/Q1BBTrmRVhLQQ8sylTTOEtN6++EX1AC8U1Iba0mIUyXEnFLAiJV79A5GgTQEreWK7QEAgQm91fD9WzxneCosgINfruAVlVJAOFFQ3VBpQEDIFQW53ogfu17M0eH+onjK0vgkjZKv+nUhQqE7HHOxXDUSAGmaz0x47sV8LJotQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785717634; c=relaxed/simple;
	bh=YCoUWT+nubSbcr5A4m6O71dXZwM8zk9+xBii/GcCwLw=;
	h=To:Subject:From:Message-Id:Date; b=Mq63NvMT7JEoHrIUHPnt9T6RRc7xSFKg+0LYMsTjRMciBWG1Em2ZjL3rc+ZxepAWLM4O3AOYFm1YwrrP4jqRM4E7Nhqa4+ZFakp/2U2fC1OiRmO4t6n3r7YMj7R8KzXWEyqwc0crjEIjhKYZWx8Fy5s58XCzD4RCcUqV9Y7Nvqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBqm5pe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBqm5pe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D9FC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785717633;
	bh=YCoUWT+nubSbcr5A4m6O71dXZwM8zk9+xBii/GcCwLw=;
	h=To:Subject:From:Date:From;
	b=dBqm5pe9iE2M4HrsiSUkw1X0dKIRFintJkSMIS1/LmANCeSvA6LbEti0cWdmsMJfY
	 gtALUCzjeugf7j80psJN/bjCNq0BJlgHmLxnRseZafawm1GvFIN5Z9YcCIDq2m6paI
	 VrSOQcJfwRSRP0t0DmO9YnxTrW+sunnbQJB2yufrOt5HBaMT1ly9nRWd6WR5p0hlWB
	 rEtZTeIiNFeH1mBPzOAMXogUe9bPS2yUSmelaYcR0azA1zhHE4kSJm04nsuXBlX41f
	 6J725rVmRXntsxxXNsIZuSBenfrQ4t4YQphHi77oe+hM2Yv/mOk/XA8oIRWG62HGYe
	 fwbB4iWAQBG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2CC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571763368.5878.6202036570591159061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f8c86832a02a2d0891622c4eef6dfac333e77bd6adb2a1a5d48e5d11b020b5
Date: Mon, 03 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785717633
