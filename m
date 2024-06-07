Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C48AECF
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717726643; cv=none; b=gUocxgapPI2hcdnII0sd/oC5jWg87dBIEzyxouRAZmLAvJr8JYY4TZCyUdPx6EN8TWpvNtgpcynJxnAQoUx8k3ferXGfXUwVbla3+wN9iESHNPJeIf8eidpCkKOHjYyIkAKk27JKZoEWcJa+lFu8VbHug9QtbU0IgXKPRkBjYeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717726643; c=relaxed/simple;
	bh=w5cncXmWT6FddLjEsuJZgU+zB1EiSLkXIrNHypbGytY=;
	h=To:Subject:From:Message-Id:Date; b=O1dHwR6xUBnuyXuHv+L07dufUrC1t57t8Y0y4r4Sne00Z5/xe6XCSWdqDgMbaw140LZi11OawkkWK/O97/s0XX0Npq0L9M+lkFLPTcWudiJsBJhen9A84PD5+0bStA6IP75uAtUC7j6f/qDKwJQHUNmGpNLMNSv6Dj9DpaUuxWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs54nT0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs54nT0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01FE3C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717726643;
	bh=w5cncXmWT6FddLjEsuJZgU+zB1EiSLkXIrNHypbGytY=;
	h=To:Subject:From:Date:From;
	b=fs54nT0JbgNdzHbony8MAMwnw5Ot1W//BZ1cz+8K0JPTKn9O2JRn6uV1cQEDNvEU7
	 t0o4gdWtbAT+hfP7R8iV9xh/UauKcBMhT4nkeoQASfcP4RmCBmED4PKmrozgB6J7H8
	 /4RfHNo9hqZJ5J9m7hSj/qoKqu+o4W5434HFPxBlj7KzjsO+SuVycgdMTCGOoqwtpA
	 0P/hWjQslFNtEzaQP3ucNmMApWkaFIGEIhsMXD74OaYV+3cvmEV7Rfcm6nrvOmZupA
	 zDG9ASrQlfgTXPbVFj3IBxVB5R82M/NGI6iK5cYMKYmO4BAr7ra16Tl0gOImj0usb5
	 k3bTKHLukmmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB231C27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772664283.14990.15772033896205718811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ba53cef4efbab71e296acb01c3ae4f3f95896a11dc45c4c254067e5cb3b9f4
Date: Fri, 07 Jun 2024 02:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717726642
