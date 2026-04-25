Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FCA23183C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777144654; cv=none; b=FWxRZ6sjthWfYY+3MAPW6QA3BnxQKgJqSnAG3ky4pjDN083C87XpEBZh9JbDy6kr+EDVqBzstzS2tmPqVZZxI8HEWqg7mJz0UCeSvhDKetAGag5Z2Wvmuh8z11wkzY7REiMMAou9EjZ7NIWaZzNaoQbqyfh9hOgJaipx3gffEs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777144654; c=relaxed/simple;
	bh=7XZp/HK++hptJcooXpzqHaDEJ0OW79CHlJR63q83poo=;
	h=To:Subject:From:Message-Id:Date; b=TF0w/R1ck9n5h655hyfVXQthZbOXNdjJu/zzd1jp/Hkvezya/wZiugqRu8JZKHMLFLfokbCroWgSCgTMGq4mUuoKNgzof3VABnIYC54yXd0x7RGsIGCzTYMERkGzy83Kxqdr5ghcTqKX0NBNhmi/H2o4/9ovihTSoJ0EBBLpjqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0x1MsU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0x1MsU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1446C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777144653;
	bh=7XZp/HK++hptJcooXpzqHaDEJ0OW79CHlJR63q83poo=;
	h=To:Subject:From:Date:From;
	b=G0x1MsU7KsXvWdvXXRzQB5QJ8+/tZs22xju3chVwQDczZG+EwYBdkZdYuPxelu1pm
	 H/hZBb1kQ2qwVF5yUacmFRUW7QK3/4e9uIEMeVcykNZeBiwyhnmztYTx7T/LQ4PFhV
	 xBcLSN6fGD/jUsZke4yFniHaMjXY3g+U3NM0tvHOU8opbiQi87YJcDUvcb3xxia9A9
	 baXXcr0xms+ylc8cXLZNOfM65j/AsG+J9jaGIFMUa8NorOKCQhOLNKcJh1K9XBAzba
	 3qInBIybBfJXz7eELOYrK3cZdz+eA2/1jcnM29kj/nMtI/lx36dgWkJyke1MWMi7d9
	 tSU7iXV3hRUNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E9FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714465368.18832.10643845361372164936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfa521985c5eed2b868faa4f890b6db0f3a86a84290dfb9d88bb1fc94039933
Date: Sat, 25 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777144653
