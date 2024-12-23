Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2802B171CD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951954; cv=none; b=XUY0vmKh/BCrb9mSlTj70mPhH66vGhPEMR2TuK6xGEyszv9nolaLyopoSpaFAEwXAa9uEEX63qi9JOD7nYpgF4ndTTtjMghDJ2UHR0bf1E7Wra+uTYjigHEbr4nFeuayl0i+mwIO23ltB2TBJM4vTGyFIDHA4bKnn9CJG1GZ/lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951954; c=relaxed/simple;
	bh=x/qwoIG7VoXRcokSvnT3zaRx+RcsQfgmWkdroAolLDA=;
	h=To:Subject:From:Message-Id:Date; b=n4ICRYRXxY4xK/93qbiRhq2bXPMCsjneAWc7wylCj4hd6K1RqWDfF7I0hDbFDktoEPBDyLLIE1gGzKuFfBU24Ez10Ki4OqqZkWwzGJFZ+6BN10BtAAnucKBdARNDywCTxE15wJ6QGRRI8Q5lT15zfhIG5I7DRKsDmZzXbvRKU3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGTgS2Sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGTgS2Sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF07C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734951953;
	bh=x/qwoIG7VoXRcokSvnT3zaRx+RcsQfgmWkdroAolLDA=;
	h=To:Subject:From:Date:From;
	b=SGTgS2SaD1SuwWb0q/7ZJHXolPsFSVVYlwCG1qKvoL0vJQf3a6mLKTWWQHRBYyzn+
	 dt9EhqxNQNF9Eo2iPaKHnh0UbQGajlypFWaGXtvplEWB76Fjxn+StTF/WLiTAgjKxA
	 rd+YDpDxTcmu4i3xcseKhZW6cvfPo5+Oa3t5m8ktLoyu/U+YIpxyFNIWKAU+CadUvS
	 OUGoMeWU9vsOupO1a9ce60vQVn/z5OsLgvE6W9y0zrjVpmcogkT7njNs50MKdC6rkR
	 vNVboxZMQsAygNfDarEyMpP4d12fI4ghur4QHfFNuFuPXYxdAhq9XTpVNr6tzsjTKU
	 je6KePMUBOduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C18CE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495195359.23021.12455658602388148164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1844156ee10afa20b9eb054abf4047368010ecd1776774b5247aa2053807def
Date: Mon, 23 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734951953
