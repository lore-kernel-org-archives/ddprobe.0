Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F7117E9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706234297; cv=none; b=PPJViSO8HqukgpDJYxHHlUZ5lvVVOxoBls0iJ7dGJMECLFlKENfhTXglcoR+hDlrWJ3ttKfvEmOFEHROzUezdoVwe4SBAwEyPY63KtYoCLyzgRNs0jfxWWxsVwK1lSAIRZonOGdYFh+aN6SdhVnyQxCUiL1U+6fJB4YzQjlPvA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706234297; c=relaxed/simple;
	bh=Op8oJsRDiORAQOOurEq6xmNusAXok3yNI7pJfRjtkWw=;
	h=To:Subject:From:Message-Id:Date; b=doNp0y3IxROtTXUzCpCM6DKUb1wq0K4j3qvRPCxHh9gr0QnU1GHwxPdn1kwUvb9Xmpgxu1a9WKA1ImikaggcgFW8XfjusLyFotN0nNFvtu58+I5NDEJWhbbZdyLfb3O1CSDZVZJdYMhO8UaI3F3alFxdNusrCpBZmyhuFj8COPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgj7FgEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgj7FgEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E063C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706234296;
	bh=Op8oJsRDiORAQOOurEq6xmNusAXok3yNI7pJfRjtkWw=;
	h=To:Subject:From:Date:From;
	b=dgj7FgEhYjWA3mMx5PC6iFnuQaAmY4rwJV7V8TQWK//nxKQyqQ5jUrKMRBXG9o/lB
	 o+qnzBgNe9sJ27JYJjNZNUxuondcHMWP3y/ZLnU7A+SglPfNAQ1L+GYO5lAT1tEppB
	 VLSkttOAN4sthwGwXv2Ul/IDc09m7OIoY3Qnx5KwObnqhMX8gk7ApF8JaZxSsT0tH9
	 BT/MTO2dxAcSxrhcsNxf9N5TWRuKVUtOiij9bmF3EBRZpp27UGGBgNEnPIRBpLaZ32
	 JCXGzyla4l0Ujydage5C8CgeL67tn6usDvJdBTlCRNzd+CGhy8faYP+74NwsTWJkQn
	 kI2HblHlpYRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B0BC47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623429638.30259.2702114055061845912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db00f7a2ecce8ae7f22eaf7ed7f8d7e4c37ddd6b40d6784d40377b5abe306cd
Date: Fri, 26 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706234296
