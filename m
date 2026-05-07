Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1928F285CAE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778126254; cv=none; b=QvkU/jlzIq9FLsz9qQYnB7iRCN2F0+BtbxL5Nlbx2QeJexkmCAfngAzhwBY6UHdOSqJ9U4STMg+KqSVjGfY3I/qSan5/PjBh6WUzO0t37mRmSMhkk7A8sxuJWXOwtxeOzXqiRGkoXOkzlnJ91GgV8mdBmD5sfkqaoxsvb6fD7kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778126254; c=relaxed/simple;
	bh=GJ5ZsUNvGv7nr/uA0u9Ji1Zx9lP+/PX6w8/yvzi8a3A=;
	h=To:Subject:From:Message-Id:Date; b=FbwNPm20fIaJ78bOPApFjp1a2UMzDKOdF3/Jf0RmWTdJe4+tUhUgtEdfXmZhad5eQSoD9xT/UJNzQMDE75a1D2T5VTjuPbqorwRftmrGnnnjPsfFLnWy1VmQsKQ6gcugSGAtDMrk77kzw9zAkFsxQtE17Zxm/94dFR9X60VBkkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfXkxJz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfXkxJz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7C3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778126253;
	bh=GJ5ZsUNvGv7nr/uA0u9Ji1Zx9lP+/PX6w8/yvzi8a3A=;
	h=To:Subject:From:Date:From;
	b=qfXkxJz/DXhq4koN3EvUzjsfGwWh4mKom1KW8+GRVLntB7/RDnaMbdTRYCDwnRxkv
	 Fwx7v9EcPtTYCmUy/RdqXOWGlki7ym7zAn/PsTZz55pzsiKNVih6d0OMcT/0MnlHZK
	 D1zTppKlyZO1og2auUQqfkBXaIYpDJCh5GG3opS3F4OxjZoGeiolN/v6QJKyfcqhU8
	 t//xkdDjMBcglUc3fkEjwXVzMnQ+uq/JgjpYO+d7hGYIA4cz8BrLfDWAHup5nVCwjT
	 TPv+pbEPZdORhyUGBgi5fVNCXdT18n+G8JZBCF5c0K0M+d30OAgjtPpyMJxE3pb+LV
	 vrJ1Qvi/GItaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CDCD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812625368.5461.11335110261626798412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60abadfd56a255f2d8b2c18b3ab955a1d9ad48edf71f17b544951b995c4b780
Date: Thu, 07 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778126253
