Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5F5A920
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735331754; cv=none; b=ce/W9+yCJq0FI87iiOsmXPhAl5b8b/wrXb//Dey+jQcLVK79bTforFyjole6bZc6jgxM8atGoiYav/pIclSS1aGh4KXFld/Un8Cg7yajFzAfH0O60FQuZD10/N73o2O4bHngGA/WHGw6BY1PPxLKARuTvT6vesQVAb6AWs3Gcqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735331754; c=relaxed/simple;
	bh=D38BWMk9hIscDXfoILRPp+cowb+j9mXl/COKxONwBBY=;
	h=To:Subject:From:Message-Id:Date; b=u69Ono6f/iiSyMKJSZQ+spip2JiBtiL5WveGwa5ArQdHmxXB+/98lAoZgafwl9LzeLAdopHG+pe1GdoIfxl8x9WqmK//71lc09YckIClZVHFH2aq+jpGZBlrLP37PVZlDOQu5H+M7gS7gmX9puV5Rul9jUBI8b+hT0inxx/mUfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkzzHtjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkzzHtjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A91C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735331753;
	bh=D38BWMk9hIscDXfoILRPp+cowb+j9mXl/COKxONwBBY=;
	h=To:Subject:From:Date:From;
	b=YkzzHtjQo/m9AYtSJ8vPQRlF6/Ec3QxVC2wYld7oWlWGeSHEegCG+KIoR0G8W3Os1
	 +IIMMEZI0bp8H21eBFnRTNbMOXCAtNpC1VUlalcmmn1Z+6DmkAJBqCLmsvWOe5Pouj
	 pJ5UkW78m38QoPBta3p1zaTrEOf8ccM9es78ATp73a2/J54btIwGsFiG7GFUaLcKbH
	 1h+eWlnR5rA2BMYPD+lFY9QyefMNS+tJ2yT7CtRAP/GCYXURA7GaroZU/YyTT5L1DZ
	 xCwff9g7qoeO3+2ODKfpUejSvQUEqeG71FjCOCs7G1Ze1ufnK9S7Oxfq5On1ikqkEk
	 YhZeraD2YB5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C953E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533175361.18605.3215544160981311230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619521e91d6dab6a68e49643b37b8846a33fa5c27ed70144cef264664255ad1f
Date: Fri, 27 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735331753
