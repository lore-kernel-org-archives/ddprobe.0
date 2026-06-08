Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8B833D6F0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780937074; cv=none; b=cGZyrr3u6GZnhhxhhieNOc7A4wGZ12ftHduk0pl6gKLsEKAIOP8+XO003dQbCnQlyxTLZjBns8dkhe5gyLQuGuHB0FSkWKsq/nYdMaC0VvN+lGnVAY8tnwYAqoM0qxsByJHuADaUzg3YqWdLe7OGmH1bMFoEBaJDg1jpBK+Mmlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780937074; c=relaxed/simple;
	bh=Vi1sNr8BjHhPWvJW3x/GV8f9D1W9LP+kv9fLoBtFFm0=;
	h=To:Subject:From:Message-Id:Date; b=sdKRbrTDNmpTRiGHCrAWX6yOPFNVBWmoP4YHwyTRkhCV0zHEiu0I126ymtFfHkCE4HwIHWxQjzCeOXUb3euokLHh8UHMvoAaAEedyuY/ff3vOMvcn5YKveAblM/k71KLK4WZgxoEUG/U43An4VsYL/c4o27DizZVY6V5ukVNHGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRdhPXE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRdhPXE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75E6C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780937073;
	bh=Vi1sNr8BjHhPWvJW3x/GV8f9D1W9LP+kv9fLoBtFFm0=;
	h=To:Subject:From:Date:From;
	b=kRdhPXE7L2/Qkqb0KK7H6tjJk0dX/Z8F3n/W8OrDqXEYcY+LnAp/Zed/X7N/wbGEf
	 jBnk/bxSgOtqKb9YenAstiV0/Rp/gURM1N0QDJkHayVyauk1f3zHiE7NNfAYnvkQbO
	 O0CBvzuqdlHLzwAhfFQ2pxzwN0Mbtm4xaAusZrd+4OxXdISx7h9f7AZpDvShpwLdTs
	 yKAzm+0thIKCS11QVm6ETLouo1DAuyBJjf1l+p23ERCrVoJfLPN5pLZNB4YtfQ73/z
	 Y09hog/HFsvscfqDwInI1mfebuhjbEkcttbUteVTyzUvvYLbeqkw2zJwoD/78GSayy
	 YfA9paZFlLykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB877CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093707369.26060.11315705337013205487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83096a5e923192cd7d7d352c7f017186d49ff98b133832599b1a9eb7cb122dc
Date: Mon, 08 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780937073
