Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD8621ABD7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780282474; cv=none; b=ekw8ZKi8EGumbavg5In9VRO8Y6quhhbCXLdKmpCfjKbuQ0xo3TAsJcaAhNQUgGyhR1u+SiKIUomP8RsrJ/xHWgNaL0ctTTkugrnROq1fy7fYUktt6Ct4j6LGtl/s0gmqMidtSyZscL+3Bkf8plqwH+EA1eS8EIket0V7qgKNx0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780282474; c=relaxed/simple;
	bh=YXlaSXL0FjsUx++c4zyqipUyyYlaIH44j598NNeOjoE=;
	h=To:Subject:From:Message-Id:Date; b=kbH5oU6D9PyiVrxqRUapTAkGE6zJDNXc6dONVmas4gfxz2AbCc+A2CygvsuJ8PgT40GOGVRs31lGKpZ76oLhRqQTVsZNHgoEK5iWRKtx/UGQFiKeqDF/JdG0jruR1+I4WTEWhutQLcn/OINRToyMxsQY9QDL0QLmh7Rgbwb1CQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwM5onx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwM5onx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BD0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780282473;
	bh=YXlaSXL0FjsUx++c4zyqipUyyYlaIH44j598NNeOjoE=;
	h=To:Subject:From:Date:From;
	b=GwM5onx73Bj4h59F06G9hIkpeYe0KQL1Q1h2aP99GoIn5oBDomRjKLnHGYZQSSCXV
	 Jz6y/jHE8dq3jL0jcLEEPc30C2TRcUgnOBh+58KXknK31ghKshcQuuADhRvOL+t8qz
	 3Lm5cuSfBpn3rhRBLQJSCQPanbhNiFuThah64/NLrz9L2lsVhsDRn+BW1Ii0jBni5f
	 YzknGrecrDa/VI3zi5uiUQlJEMTypODLC5AW1MQkmA6aYIpi0qX7qZ1cXNlGlH+DNr
	 J+AdrUOsX9lCt611alv/oUN/frRgaICprIHIxM9BAQzmTggk9k+Z76GSCfJLiWwaR1
	 s3h9/v7zgaMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63A9CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028247372.30200.8489374595811441826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c7613126d36a1a18346ae19fee145d8226c99f85e9e31d72688793c73a4ab5
Date: Mon, 01 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780282473
