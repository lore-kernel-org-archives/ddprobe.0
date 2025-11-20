Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164A432D44E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763637114; cv=none; b=OteYfjx2YwHMJx1qCZ2T2xAm8x3/1aub0dPdK4ZoJKGgF1PceBF6trKJxlRSQTldP+wYUrPxbJUNOj9QUJr0jEE1Gi/6awjEwlqkxhhiHjWcOyw5NhG0VK5z7/j7dJYjprXODMUXlA0GBdZS7MEORUdKz/PTUlTEljil48Fc7zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763637114; c=relaxed/simple;
	bh=LSNM/tIZqJAEcbW02gyLcLgVBI/rvQm3+0RF8uH2b9s=;
	h=To:Subject:From:Message-Id:Date; b=YS0DwzZ8Mb1Garan1TPlWtcxUJ5DMTLhj7ZLtAfHGx7S4NzVK5iCpPsiRDsoAADt4imA22oduRVwvRDEorJKxyQxQUO0JPQuwP4wuqJsVMSaS+LReUfbe9us42aWHGOdB97E3Z8DZhrINFj3qRSeLTnrHJJ/Tx6EXT30iw7vuxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwubpJG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwubpJG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6190C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763637113;
	bh=LSNM/tIZqJAEcbW02gyLcLgVBI/rvQm3+0RF8uH2b9s=;
	h=To:Subject:From:Date:From;
	b=mwubpJG6omETAJtHGiCDKXhFl9jo5MkHEt4tOOSRT0LxbZ7w3PWkRkTeQKVCXaRtk
	 7zPFCPvDtKtFpmfXmlykS+HEBuaNgddt2fFjr2cw1kC+2edDvSkfw3DUeSe978f/0w
	 Ws2UZ8gZOKv81yu1CGdzDnVgZRmsm0VKBGc1iFV0kAJPQUNCOOF9MI2syajd5ZLoWd
	 hh4uQxuI4XB18iHH8uJRUpMbfnqxkNF1mklv9jkSnYpByNFxhSpCwgByrnIAgnwzVs
	 l+KJ4aeuE4b6Pf3TfbpBRgLEaTRMhchvZTzldObMt+BF1DBhY3rFbS9JuPQX940ylX
	 veczvOi5dxgpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AF7CF8843
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363711359.14035.6555025597911331705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5042c4facc16ab9ee91e747b682ba810ce29fbf5d93d2b9e2f114c868e8ebbb9
Date: Thu, 20 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763637113
