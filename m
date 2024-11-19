Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1D158874
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732004754; cv=none; b=NnP/+ufcaFcM+1NSbvPfr5uNyLIc9EeOMOVuF7hpJ6TjNTgkHxdXEtrSKJE7igvp7D7wHe+vIUg+oKLJgc3sSeNrNAZeABsR+BJerAby3QcH5qp+jFqGQTTAF06l3ycydnjyP8F4TgxzuW6TolOoPDg13VE51UnVeOKUzvK8Q08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732004754; c=relaxed/simple;
	bh=Q0ZhznCw/evSnLU5oB5tRNZ36e2aYqE451neGQvXpBk=;
	h=To:Subject:From:Message-Id:Date; b=goIxgGQAZx4UADR5NhwIvRk0F3m3DuqRbT7eElajv2JV1p9gVsOZoFHK62TP3cNWM3yAKtYtpPcMVSMojJOYSwT0K7WwTTdmsRSMKbFFEewoPBaHtTymWUG/FbF9i3xgzQVsARkmxKsIVoZSn8SYaQreSUacSql4IEPi7wuXjwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5zOftSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5zOftSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64FEC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732004753;
	bh=Q0ZhznCw/evSnLU5oB5tRNZ36e2aYqE451neGQvXpBk=;
	h=To:Subject:From:Date:From;
	b=E5zOftSeT1d8Pd7SWKm5Y7Z9tvGCsJBCjzgQaF/iOX3kNe6qOC430qGe2UOkqaPnU
	 WezV5JhBUoDQMU6lTdk5v09T7VF6Gd8eQ8GVC7PrbfJCkRWqHUOtm5Ro3A5OFlqC45
	 3tpeztbe+aryXH6gviEfVSy+0Xa8lk9LqL4yCKLoijWfON00qSIuFFQercO2tKjVCb
	 trFV5NsWH5gBHaJqRx1XlY12fY3DYkRyBHY5eYA7Bfe8kzPvzfXPPpxeqWg9FRY7pq
	 yNMBEX1XPqvnl6pTqEKqk7wHyWVOFfXiORlu9ADri8J2r//7aeaYFFqRZTz0iY/D2e
	 4cnbnZ/hLqvjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933BDD6007B
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173200475359.23918.7880665013002039770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88497c9d561ac04f810b6707c1e428efe1f5fbe051553e44d5fabc96dbe0bd7e
Date: Tue, 19 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732004753
