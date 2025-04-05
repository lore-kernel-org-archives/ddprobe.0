Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6703A22097
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743853794; cv=none; b=r/VTs7QJfjjH8mDWgFfQWc5K53y1DBEv7B8IJhNdv6QuWWN+IofVUkMAlKc7t/qtQXkWBWkckuCCookzJjTUPpu2R6B0ZIy5N0dzXYnLpV9LPPtxZ2V1+lBFEG2cSjDv290IEjHleNKXlq783Uo21l9gc5fThP0JLO0ZIhGkTJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743853794; c=relaxed/simple;
	bh=tzyUnOZwxn5736fuDcMylQPSqujiNBDLKRqLrRpQNmo=;
	h=To:Subject:From:Message-Id:Date; b=OXHEDVMjB4WHMlBfwe3QJPuW49++sivQ6igRq33V3x3fKncmjZq0Ps3RAh03lVc2jmwFSel0fcA7znL8UKdLu/n01yh81VpOGiHZF0kkiBwVxPDP3gkqlrcCslMvkwWDovPky5qkp13VbESIKIR2KLQDE1k7v094RGdCxM8CTno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT2xbviW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gT2xbviW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA659C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743853793;
	bh=tzyUnOZwxn5736fuDcMylQPSqujiNBDLKRqLrRpQNmo=;
	h=To:Subject:From:Date:From;
	b=gT2xbviWXGdJXahxseF8EeSMKXqE5xgowDWL+sw8djdXHcdr/bcfVQuWF327IFMWe
	 8PU30nSiC6/tySnR+3ssmUYvw5nCd7nxSX9MNKqVOa9Md3nTLkom/FXTw8asVWMgCU
	 YPwA/t/Q0YI+KjxiqSXDlubzhX1p0D2B5Uj2hQOt13j2tiqePvDadJrrJglFKqIbHC
	 UWBPvsEqrJG3wQf5yzpxHvzjrvb2Hlc8ojxWWUFyP/y5z9DpFmDPc1ZE/8IQOaFwiw
	 D9ftB3dyEKRu0pClIfThORUmDsm33m8HNq4MoYHv7tY0abx8WGyYh0QKkw7Ma1L5UH
	 oql6FGk3kPxDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9B3C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385379360.14207.8005788206314817891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a5a189139d2c80be5306718fab2cc237516ee6c53a3f28f0a60fd237c68b70
Date: Sat, 05 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743853793
