Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACD7202F70
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792300234; cv=none; b=A3wXbDmXPV8AJMee8Tmxm6W0TgfPayN2f67QTyBeOER/ZuCOiiKl8I91rBqYJ8AWMRtniYAjw2Y+wFoekpdYePXsBXL64znuVaOjnkAIru3PHwy8RQljfwdDM8D5wd5bH6+ateMNYWJnjdcMucnhYmaw5HkbgPaopkDmXQij5uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792300234; c=relaxed/simple;
	bh=LwbcrIKfoEWnvn160JxpL5UxBqs0sokwtgfI029+UeE=;
	h=To:Subject:From:Message-Id:Date; b=QGfV8ExtB8oMLk91NgmIxrtwAuugI6Cl4kF5SY7tUTwNtHfdzgYm7AiBU/JRmJ2ByHBWPdwF/fH1omGrIW3dbKSZIuUaGK6QV5f71AyPMljtaoMVatOTXWSgWpAyPea4/3wqMbOZeWsPXGwsEtLWOrCpw0ebVLeexWVkT4quLdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC+rMj0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC+rMj0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BA4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792300233;
	bh=LwbcrIKfoEWnvn160JxpL5UxBqs0sokwtgfI029+UeE=;
	h=To:Subject:From:Date:From;
	b=YC+rMj0xud+gBbxrcWm2iBgWvPOpGj5k6cUmLi/Ve/1HvUn9VV7FK9Vn5JRvkDa2J
	 YPuZPv/v79woSR2ijsfpVqAPFZ7CqbUfP/RyFohk+xtthLJGqzcwvOlsRCDmqXr2du
	 zNpLy/txZ/l+utymO09PN2f62HjUtWecpI6CJWaiedgaprIZ5OOxfWYy17oTClCRI1
	 YBpBQHj+eGrI7KyeCIM16ClNhuKjzEWiRirWp8vUEsucGX/2CtZv8RjAc679puHjjp
	 CCunjbIfgQkFr2a7KkoPCrIGxoTmNhOvpJBCEtN0V6wkkC3vwn5E14Sh3PFfCtPTCs
	 9d1eNO8GJX8VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD648CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230023369.16398.7184361735724899792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328eb5cd09d5fd59cdc6a7a8b8184855f121c2b643d8ea3dd55c85886462d49e
Date: Sun, 18 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792300233
