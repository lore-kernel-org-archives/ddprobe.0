Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412DB2C027C
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761895794; cv=none; b=NvQ0l3dXlB5oS8Sn2lwyLmAEMHpYetvYiY7frXhyMPciaXgCsvKMAsboUO2WeMMvlFT3fxn6v+hctZ6W3T2RyySsyLF80YOttKNpgXPu+1aIcxgFyYZQ+2OtCnN5kaDz1l/js9TjwMuxj5T2UXawVGtqhnvGdiOA3NTrmgXmeMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761895794; c=relaxed/simple;
	bh=Et0tRMSfgVRGSgl79cXhok+whWwA6GMnRVyYv2MRkQM=;
	h=To:Subject:From:Message-Id:Date; b=XVSu3xgaKkonkRvbzlhSfRQndlfaAx08xhwMGfvwON2gNI6K0KGvmqNga4ss33ZuF1UFW4JF/pbNDv2KBkTGKPNt5M4stCPnHllMT77qC2+ctKK2mlEo9H3eSWsiTa1SLx6qR1Sa7gAhIu5O+UPkB9uzqOW09us6daq7kxF6HpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHmo2zqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHmo2zqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5DFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761895793;
	bh=Et0tRMSfgVRGSgl79cXhok+whWwA6GMnRVyYv2MRkQM=;
	h=To:Subject:From:Date:From;
	b=dHmo2zqao3q7FQF6DAo/dKyC5m+R38+C5+ftXXYRCPqFgEJB3p7sG+0lPPA2jcITj
	 KeL2bKWxEu4ULLy/cZY7lVXs8p8wFDNR5RDDXWL74+9AOTRFsjPIX1fy+5IXo7w+iS
	 IYZ2TnKdHlBMrE//IrFbmKYwd/Cccux1ogq5TdhFPjR4yfYo+nC1YV8LNDDeGLKNZ+
	 0BLEnYT9FTDRRogvX7BrnEjMUL7sxAKn+jhdg1jkbWlz+K676wyguyXHSKaASEO9+j
	 SgCx6nRkEYiUA33wx0oKd6aT+cI7sf/oXomA5JXoTwGtA4uRQWTj5PjDgc+swohxwC
	 cTB8Yj1FkcApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B42CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189579361.26749.18063941058038677213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e9a15bea1c3273c1a0a347d7a4fb7edc1a6a42930ca5ca4f1ee0a70c8fda8a
Date: Fri, 31 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761895793
