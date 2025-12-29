Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3539A23315A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003234; cv=none; b=KWQkSdhH0IeCF6KNBoVgDwnTEPpW5koJzFMJu26HkQZwaHTynCERbNZTb585xNJbSCoLy+YTZcCQR8wjcZYpR6pEdqa3r+t4Pa3fszgdhezpaWL+r/k3X29tHg8jarJO4tQbL2J8vBU2LZ671SMVGsmPYTkstrjBmgmEPUnLTcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003234; c=relaxed/simple;
	bh=5rSC/aNTX0/y9XRnd1WVs4Ctwf/ZBlfeP/zyp11XD2I=;
	h=To:Subject:From:Message-Id:Date; b=jKosFmgfzL8k7ao2das/SW8JQi/XrnL132H/bTb9QUpqjdA4BB96B3W7FQqK8cpdCZfgFgfh6nSfWwpk3VJX2FDYmpbBHGEYFR8BSyO+p4ycD0p3v+DkWCYrSAQPknjVmYkSLNSYMyFnYBSmtZJH1OPayECNpllJki++WWUDCUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOXOvR6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOXOvR6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE01C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767003233;
	bh=5rSC/aNTX0/y9XRnd1WVs4Ctwf/ZBlfeP/zyp11XD2I=;
	h=To:Subject:From:Date:From;
	b=LOXOvR6N5cCkSH8PnxPJ1eLfDEYbk7fWqSN+OAY4ZWvpvw06iG5+b9cvJGNrCDsp+
	 NJGNpV/FjthJd3Wmsxl/zF9/d8jOLi4HwdwoeFPeCpVYJ3e1th2Dq5mvXancIltzdQ
	 I6w2WxzwzIJa6z1eUAupWFww8oD2et7T/diYljajGV7/zOPNMN+nFGMEsiNDiUJcpk
	 EU3RKNkctmG67lEMjiVkWC9C7G+6YsFy6fi6vNcJ+VY6PxYdwK4gRC5y4DURoP6+4k
	 LbcQLK50UgLGLdHVQo6cpbYo5GUgvrBzlx7bow8hAwB/IkmP8SMB1z+wi+zUnvxob8
	 Vq9CyWz3qYeyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982C0E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700323361.1106.16233259925130905447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b88999b32f848ac2fa4b6e41067a4fc81c9e85282b8f17ab4d733cea0b6e91
Date: Mon, 29 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767003233
