Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D652F9D98
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768860834; cv=none; b=qDF3eFJqWjclOPMM7acH9PpI7lWFoi+HT+efhUf7NThvxqImDEl3CObcEX3gLODTtHu/FUQslmWbAiSxLyZroTxOhM1E9g+Df/yR/zmnxDCreo1YHWevBQGp59oR/fcO90VOqLzYWw/rU3v0iredgXcgU11z5XZY5UGNXM3h4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768860834; c=relaxed/simple;
	bh=fKsFR9tg5FMMNAqctQto4FPl2oVgL/2I0z9YlLhQWGY=;
	h=To:Subject:From:Message-Id:Date; b=FG3t70GB2+V8b7TT6Qp74w6fc/GamS/mRAbC8dV5xJnuFrVgEHeil5HDjvE0499YuqGa5Cpc1DgO79QvWz87oCSMixCIClBSSvkLLWt5IVVE011etVLfAHSgiKjit2HOrrd3LCrikb0zZojJ2JB8f4YzdJActDjxhetwwdns0lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvLUn9LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvLUn9LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E21AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768860833;
	bh=fKsFR9tg5FMMNAqctQto4FPl2oVgL/2I0z9YlLhQWGY=;
	h=To:Subject:From:Date:From;
	b=lvLUn9LMAuvWWBQn7OfmatXcq8Fn6eulTpI4u0LCavVCYalDbzqeRpO0DFxAdJZE3
	 5WnCyf4JU3d4ss73AVATXz1/eoDN21apOqYMiMINSd86y/tTJH1j3zaX9DpGMYpprF
	 WZGaoXIvT3NqiR5klUSEJwo44m+Z6MrRBuD3jjHjESbkADK6DyEla+WChjN970bZy+
	 KZKd8KhzVJz2o1iQt7Rm23+iXIAJVG/ILj8nZH9zyy2Y8Ojeesl4jX8O6QrbYwKVqC
	 LI9MqbiNs1DrKGu7+QRqM+Gh9ci/DKbEbk3ynU8ln8zOWvSbg54v8Pz1Crt02/1BI5
	 j+f/ubxsxgj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E4D2ECF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886083358.32456.17465077461783570836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c174a1a199d6c0b0ec83f5614ec330bc73e3be23914f7556b63b5f25bb337519
Date: Mon, 19 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768860833
