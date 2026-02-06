Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DEE5FDA7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770408234; cv=none; b=DWHf8xzX9NeDRdg8UcDqTQi54driw/csnw0HSYAVrwDS+YmmgPSeKwOpJnJWomlR0RVmMt/VWVP7sD1ZVKoCMcamfFuyOTPRoUUNFCndjNQ2z03QJ9suf8Bt4tf5I2SnmBS4tfXsmQ26yoJ4hgYcfBhWl4sh5aK3TSZenmMkreg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770408234; c=relaxed/simple;
	bh=CoK+8Dfoo8nsUEVnXGZRQivt2WT3MQ2AbfaXjqPl6N8=;
	h=To:Subject:From:Message-Id:Date; b=sDU9p2Y5X8AcFhpFjHZ/lSipSCYOjLIlgO3Kt4aS/dBmUJc77B2M+DgJ3/0KvRZBnpUbVXL/lPhsM2F8YJ8R9VCXknXmmcM91w7uQr6hHvClWKW0cNh2QaPRd24nVRm63rXQY5eey4AKB58Qt130QZHQx+p23YC7a2JtwOGG/+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuN+NAjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuN+NAjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C120CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770408233;
	bh=CoK+8Dfoo8nsUEVnXGZRQivt2WT3MQ2AbfaXjqPl6N8=;
	h=To:Subject:From:Date:From;
	b=YuN+NAjkljM2YhIOkxxp8LEnOpFx4UUFwzXhhdaERxKdWGdOpWwAJag9++BxWbiz+
	 USBDxtb6CQ1GbrIl5nxcupu8+3uFP5/vBBEmdZMgN9a9/uhNZ92HHP3wCzUMxk6VPN
	 m0USsb/ATsGzB2YCRNY8IsIkh5XLQgo08ZClfed8lQlhYE60LkT81xFd2H9BKVMX/C
	 jz7MscrJoyZUd3fYW/pXvw3I/9FXPzH5sApiTeHbRz5MPsLX3QLE7BKqKSMlNVYek3
	 7AEQzBYEiXsw8/a+vEkzKrvwjoMSMckBLFk6dP0dSqZ8zIkYfT7jcgva8BdG7pqJZ7
	 ebM2na6qWtrJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71FBEE6B4D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040823367.3920.11070870799941541278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d22a17dcadf30d3ccf8f4547feadb4b7291425e724c186d9d666810f5a6b5ea
Date: Fri, 06 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770408233
