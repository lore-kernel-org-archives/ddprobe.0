Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF0E251783
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745662793; cv=none; b=LizwglpCqkCBXQ8L12aw3lg2s/MbeR7y9eEhSMkajRkB5ehbTyMiUdopv1ptEx4ADwrJkQvHv8taWrF0d63HsG7ZQKfUL0C2DCKsw27DhyB5l5q1Uj+oA2QwoLd4KQOL8hBE6Gj2uMrqc7UQdG7D8Kv8ULpTU/TRuuWJJylvu1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745662793; c=relaxed/simple;
	bh=Gs8MxeT40HVCWD6MYmIHYJKbEG/blqcUbb7QnSrP+OA=;
	h=To:Subject:From:Message-Id:Date; b=GaTu70vgGc5sNXMGQEHC8i59d6uASNlo3a5IiXwOnESytgw00cKaR+cOi5WM/3oAr3kXZWJScdSm88YhNUL7PmtDEXoaN0HAovLy0Wza8h+sVs6sCxlQZSBQqmU9+MZLtiltl7fLr1pfnn9xSVSm68GxjwsUuW2xwYr67BIUo4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMFJ088B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMFJ088B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A338AC4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745662793;
	bh=Gs8MxeT40HVCWD6MYmIHYJKbEG/blqcUbb7QnSrP+OA=;
	h=To:Subject:From:Date:From;
	b=GMFJ088BCDKCh7mMuXQZ/g162RIx3z43wh6EpbScs1MrFjbUTvXQskWbp5/urjAc+
	 OqJUiPQHHcI2TSNngIazX7RgS359ksJ0V5DnmLyOUBVBsYXn4Xekrjt89yljjB/3PV
	 NQbVB3gwQ+ZZzx9fa2pip23H332CK/qudcr4GHc/qLtEOcD6DKzaFgWG8xjNHSYieS
	 jxq5ynDxkDpDImG/VCuZxohVP9t2TUoC339LSIlsnEMoRGS8O2kConZBdncnh2gvc4
	 j00kJLk+RLw6x4G5YrbxjspROp0aggNbo8x9hR2ilcvpdkJB7n/AW6yiMc5PFR7o+X
	 dSC7vhme7G3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235FC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566279358.23488.5110604502705915118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6917a401e467ea8ec7d9d71fcd9b91a9bb39bd92707be9d556a3df0373887caa
Date: Sat, 26 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745662793
