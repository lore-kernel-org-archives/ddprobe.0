Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242B31917D0
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754038194; cv=none; b=b5RRiMExuM/SUoDXBiCHOt2EMkCromuy/Wciy3AgXiAaMaTIrrvkexh76oqajmrF019ckl0/taaXlo6FnAqTYFPjLdwKGzw0ji6qZbOJlufK2db8I/485FsysB2j9dRToBDG7Cj2dGJ3gv1jRBzW9XAQlMJoAZMMA+Y/i2NtlqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754038194; c=relaxed/simple;
	bh=J83DTgyozlzV2GoDMYxpZ1E2jp1SfTVR4Rs/pt7MZ0c=;
	h=To:Subject:From:Message-Id:Date; b=ekXAyKhJWDXGQzPCpTWVRMPg7Dq4+gYc0h5cla16btZtg/qG+uuprEzdwG1F0koJ7PvVIVHz+obaVdcztkIcTCd6IUt9/ZCoc8fM6wYWeDVy0u8gah9/VXu44as3vMR189RxvGp8KijZgHhjyslAGBAKIjS9OTHfAskkuUVwZSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL0ot9G6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL0ot9G6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A032DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754038193;
	bh=J83DTgyozlzV2GoDMYxpZ1E2jp1SfTVR4Rs/pt7MZ0c=;
	h=To:Subject:From:Date:From;
	b=UL0ot9G6a00FNSTFmigTmbKLKPXqYAgMl/IdJKBRtwkUZ/i7U7oSUPCvmh6R+pVDc
	 liW3qpV3Ftkruv5SjqjAGXyqMX+wgkUQdbjNok8Njd3aiifL7baDmGMEoPnXtZeBp6
	 YINCgr3Up++KhSqH4AAPUj3FIgVm7BrdYJTfA1ctXRvwXewmTVDIb4/bjeUpT4Qx+5
	 GfdCf2enmDrXe7TxaddKbVl09Dnwy9Wv16umFV4xB3sODfObuoJqNSZwiVksKcCtvw
	 EkO6vAYmxxbC9Dp86sGxgRs7VMDBG91lMY9zawNTM0XuH2LCVSfVBhn3g1e6Ql6ow+
	 Kh2aeRVXBmlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C96C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403819358.11903.18329507614063327207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20090762908ca34d2c67d1a8eb7cc0e2a94be1ccecda84bb0f7d559a56eb8182
Date: Fri, 01 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754038193
