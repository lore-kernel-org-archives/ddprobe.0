Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497C72BE7CD
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762568994; cv=none; b=SGAfDLjVgYxoLoaYkm6hk+zJDZ/cxF5dZ5QfQLrfABz10xNSL51908Ov4oTwcSq5QdkZ05akdODeHnJAcJZdbT6uChIhrllM92e7GHjRj6YxLGJXmWe9RMcQ85xj3jm1UEH+Y2l8HQ7eOXqa7w+ZDmAp0UPr1VcIDy+zxqcUvio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762568994; c=relaxed/simple;
	bh=33h0YyxL8AuoMo/parvRspp3zInLlIR5z6HSxTMD0GM=;
	h=To:Subject:From:Message-Id:Date; b=AzByqlgS1fGmm9pP/10y5RbGUIxfyzB93ZRl2gomDY1cjm7PNwyXu6CLwRCPDdiCWgMYrHAjOk+jW+1dbA45FNAGcMbPcaSqtVyvnQMXw4t4sF9dUkcn+l6qqtrdG8meeHxeDCTob+Fcp4N/0wrqD9yyYqtd1i9x5afAoY4oZT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db+s0kFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db+s0kFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C31C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762568993;
	bh=33h0YyxL8AuoMo/parvRspp3zInLlIR5z6HSxTMD0GM=;
	h=To:Subject:From:Date:From;
	b=Db+s0kFkYfpqhJRE2qurF4GjAF9E4xSlfjd5GvpeYwmtPQJZ9RDjOSRKi8nXAOm7A
	 FIrHvgTpbn/stCkJdv9aaSIZR1jIvfxcHQPXRYiQhi8W8BIijCxXIDYjNp6clNZbSn
	 R146csi/Yo3BSuFd+/7JXYfvcn7Sy10BXpJwFHKQh76bMQv66GzLWcr+tlqK0j/6TI
	 bGwGwX+6dn9qOTmyX7WnuE21rRMNA28g23sMRv7vTgs1Mq2wc7SS6hkfRgGc+jc5ou
	 iJPxZAWtVpiPvlZa6xMiLYNUEexw8cC+9IQ3oQQgiKuoMTpIPWTGAGjr0ecyjU08IY
	 TpBbTmok9RKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92313CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256899359.10028.5929618072372925065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ef24907acce1444fc5c5fc6223ddb8996546c8b51abd3eb4ec2ab0865e22a9
Date: Sat, 08 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762568993
