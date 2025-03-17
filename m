Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ADD1AE01C
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742234394; cv=none; b=aaHJlcZGm/W8904rxpjrTKJUl0XTY81e7PFCInyi25fzpmL3L/2MzoKlxM/bDZTgUqW2OwuYf/F2u8bhyQ9QL56HQectoE/OSX2hF59pYYJO1n7w5VNddsMRrrJGHNaMw+8qDWRPSEg+242npDicP7Xzr4lHyeB1xsjFbbmnxbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742234394; c=relaxed/simple;
	bh=laEWrm9ur9giIekAhElhhzzyOFcSkJDrisN2BJqsQPY=;
	h=To:Subject:From:Message-Id:Date; b=VyxeFvy7eyJiv4LPyTjKknWKHVbWBL631yMrhemRGYeg1lfA9sk0t1MseoHko7Nt8WpfdCu0WmOm01Km0UgNMyReVr8X6y1r+pQxovIZyANlV60D5Sjf5bNR4tbHyksCQ7zKxuDexTMYvEy7c/w9UTgkHGbTaiz0T0qE+o3RYjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyl/rNUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyl/rNUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13D2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742234393;
	bh=laEWrm9ur9giIekAhElhhzzyOFcSkJDrisN2BJqsQPY=;
	h=To:Subject:From:Date:From;
	b=dyl/rNUWWiTaBv1ZtJHLSZWHxkJ43shNaI+CpA9o48mtSC/K503rfNqhBx1+65JWP
	 FinskGZY9+LHbtpsXQdCtFYwSIAQCS7kgzOJ3Sgt/lhhgkuyiRKa65gufFeXzm7AXH
	 skuvB7MN5B53Tu5SDor7PSQVwyvIQXXSAgZzldChUX0L7BJTrdHPEuCDUXcSodn1Im
	 YAQ0v6ipUXAvV7vSaKJbi6pFdSaVhkX2TF8T4oye8Hp+h3uLSKRzT8n+DSR4foI+YY
	 Pcr9GlAEplegY29NCZHgCEhZ/wilJGH/nFJDPNQTcJQjCThlTtR0jnlov4IPBJnOxl
	 KAF38ucSeW69w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E375C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223439363.2483.549154993161013453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592637e4797c10f5528fcd973c15e791e20c7c6bb2a2c79f1b1588326f6e34d5
Date: Mon, 17 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742234393
