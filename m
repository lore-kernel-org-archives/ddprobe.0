Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19AC238D52
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768572234; cv=none; b=RU5wfIIWXjE9SvkL7axPsb0WPmDqHpYPEUx7mVRwBki8d16mBBrFd/hzT1UJNfExvf5MXFkQ9s/YmJSgzChRrSBxjuVdNj04w75VTIPGyiXtrCCUNYTCjdV1DWnjLbk9tHlGdH7jmILUQGdSkGDInVA2v2cnCN1jeqcrdrqem6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768572234; c=relaxed/simple;
	bh=dtE9reJs8EVT26djiNVVqEH2DesqO6yQFnfNwmvruS4=;
	h=To:Subject:From:Message-Id:Date; b=AKGlUuf4CLcLGYej5sutDrsc/Dl9cWSl6Yteq2iGFIG77QlUAc+o+KO7+604mp0OL7gAyuT0VXxVKPhNs14w/JIQNM9OBjWVlyMgyGf+g5K80NQiqdRMQ9YjrpysLVTQaoqhFTxzbwcKqWYbb+3eZL71ed9H//lfW8voX61prX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRZCtJsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRZCtJsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768572233;
	bh=dtE9reJs8EVT26djiNVVqEH2DesqO6yQFnfNwmvruS4=;
	h=To:Subject:From:Date:From;
	b=rRZCtJswCV0rcQEmYaq0P/3wcv3mW6jxP8MKWCrs40C0ZMcsSxLGSJ4/iqWmJDVaP
	 vOYL/EwI8d5AHuzGufiPI7eL70U5WnvHbAuaOcXQMpMQxdgy3IP78ukg4pPaUomIRp
	 jq55ahd6ce+RPFjWCDabxkM1z3Im7RqI6G+omk4DEFCGky+KzXO3I/eY6EMzoMdXx7
	 IQeuP9kFzO6cvq4SeRERkTIj1EYXUWYtDE4sSdQkg8Z0Lzufe8OFe7dOq7UXDe7iSR
	 9VjO+52Rgw1sYRO5Bsx9D6Z3AYd2RxHbAoHKiqLuiCMTgiY6IBTCUPv5GXiH2Ol8r3
	 mXxl7Eh3b6qfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3EC79FBF
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857223358.6700.14521131313403188469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a5ab74393f015d2d438b04f6bbe07ccbecf5504d61adb3d2aad6ea0e86879f
Date: Fri, 16 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768572233
