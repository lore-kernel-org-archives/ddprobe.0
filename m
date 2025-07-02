Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AB253B7E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751450994; cv=none; b=olvvas7nTRXvfOWMmUWTNaZkwQIBX2EbYhin4mkMkyBXwpnD6qG64No2VrC/QSbNXuggezxXMtO79Usronh5K3M+8eXDhPBjQ5nQ6VhqVSw+t+j+P8EcTctncvsErHXdFZGqui6vS8e0WYuAeJaHgymjuXF7Zj7wBmpCfgWm6iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751450994; c=relaxed/simple;
	bh=NhuGZvRjJqlKdYCFfTuAf69R/ICKE575FKX0BpQh2a8=;
	h=To:Subject:From:Message-Id:Date; b=Jn1JCt/3nvhowWrkmlYdmtO9J5GmgjVtvkiuki90EnGO8yleUzBIefHGajGov3bOfj5f1gUh/qwWky0H2HFiFfowo3HzlrUEr7/bvoyzpIjdRQllhp0YiOuLSBhy1xzDB7e9FnWivb2Kug7LNrd01iOgOwXHzIPRdVbF7ialZVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWJV1yx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWJV1yx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA12C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751450993;
	bh=NhuGZvRjJqlKdYCFfTuAf69R/ICKE575FKX0BpQh2a8=;
	h=To:Subject:From:Date:From;
	b=SWJV1yx1lOdTpjScGO0UG2xBzUZNDmfBKbwk2QTrNNM2fIt0R5UyiSu36bp/W4Qo2
	 MHdX/rg53iL9uIuTH2Zewyhu45VtErTbipz+9lszbtVv2xHxzsXlEYVh7SjbuQ+2Cc
	 WgXaXYesDVLrmlkLukFFB8+m7ycy5Bcz8OYJGEjXahp8288YZ4BI6IGKdy92vex5JD
	 601u9mKJeOjIsaNMUcPdkyUMH2ugKr4AqnKAGvEFJoHVvaoD4WeZsxD3kFD9fJqzoO
	 lnL3GnowaF/T708LFZyH21fgFdIH8buG3Mzdt/FDz+9+8TFe4db0e2Gl0UPhUbZsyY
	 myF6mx3160bOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E979C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145099357.26964.12274165819592722917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db08943fb8f7913c5eab44e1e970228302d37225c7bf35f08b3223806a70d5cb
Date: Wed, 02 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751450993
