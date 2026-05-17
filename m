Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D0D175A60
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779004234; cv=none; b=ltmyFF9HDysNSgmtF7OgHx7lF6nCkcsX1AUpdwN+L/qhLTDGej1oMOYZqqz+8nnJqbardCGH/xQhsMYiaDUvhz/tdqbjlt401SMefvpCHVTKLLzyGOnE2Go2KnTA1UuSYwDzPEmR6dwO4Pxh4Z1DpJ8Se3yo7rEfD5qwldIQQF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779004234; c=relaxed/simple;
	bh=5J0rjT/WZLh9BS0aL/G1qux/EqW9NOmkm5J56WdnH8M=;
	h=To:Subject:From:Message-Id:Date; b=uQngKxu7mipv9amFYqZnsb8+Ke6EObIhvRH6VqPfhmhrWT+zaak29HJUljQjBnN4++08C+f/ahaGB4PsQ46uNIE4MNwaZkO5FH2bl4Dal1Qf2yYs0j1hchtwPuYwBllYqKtreokU6eZYtf8FmV4yDQpIg2H77BRPVl9x7KoIcQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJoejvAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJoejvAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29E4C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779004233;
	bh=5J0rjT/WZLh9BS0aL/G1qux/EqW9NOmkm5J56WdnH8M=;
	h=To:Subject:From:Date:From;
	b=iJoejvAH/RgGYYbiDeG8yzqfJ0iYjuOekOl3n6xEhilJBje/zxOWdc7WfRHt/nYS9
	 K/GzlFmD5C4ETtuwIyl5R5JJOUPkgO/XnhnMM8oavIowxtsUZrjXp5OP2XiuL13dCR
	 oJriTVEDqaqGDHoby7EPMgbQj+AqMQRUzV256aDbogISjYZZQWRAEnBm1rhvIGcJ63
	 f2swlLMnL8Ebnd3mIH/BtNHnuj9MLDm59FFHMLIUt/S3faHpOtJyU5kUwUxMHWanDs
	 ZSgPMTLgRVezuWpfE0HAFhLjNVQD+BWfXUbHxgM9JNNh1x2zNRxMujCYBxnlhnsXmN
	 mZ+fHpihUYMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE2CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900423368.11742.9001632646806753785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3de069ddbf968f4edb9f81e6a85c9eff91e334eb7b35f31c500d33c7ccaa5c
Date: Sun, 17 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779004233
