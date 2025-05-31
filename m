Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06F3398B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748666994; cv=none; b=t6oRRnR0eK9vZYl+Na+f0TTVH78u2eVH06Yy9OhevDMdoRAD0ms84EMoDEKfAreBZJ58UiLEQ2eF5X7XuGYgbSDvc0AE7Rvq/9CuI8ERj00TiZLMpJtyK+EPDAjkgAF8omShyewECwxX9cMvxFG0mC3nVfUNShAc2Q1UPKRULU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748666994; c=relaxed/simple;
	bh=krxqum2WjMYoF/WFbywf7tPh+WP3ywnMgDaxcezN+s0=;
	h=To:Subject:From:Message-Id:Date; b=K0GKVAZUfQ291V+K/itQ/Rn5zQdZgu8Q+77XXuZuWA31RSavSdZR0iW33DnSOI6xy2PvckL7gJnzzG1HEC6W+lDNlsPgVIF/Pag+kWU64rGKBC2HHwRES7RT4b3VlFyBPyOpPi+MIeLtRA+4B3ysvkUwVt9/H7BD+HFcBVUTnLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG8t8LzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG8t8LzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748666993;
	bh=krxqum2WjMYoF/WFbywf7tPh+WP3ywnMgDaxcezN+s0=;
	h=To:Subject:From:Date:From;
	b=KG8t8LzJjvfIh4r6A1QNZ5GPxFWoX4AbAxL3am3YAZUDmzhSuCOGG/A8TBN+idUOj
	 PT1zpewGdAaE1cKepa8JS99jEw/tf3GNKNj3fzm/dZI+YqZfaHNWNaBI0DhpIsTxjO
	 6WEpHoRdJi2X55TGceL9kIiVCTujfuntFFwFpdeC8M21XuUcHkdTIVsS1dL/foAI1k
	 i1NkCmbfL4XosRhOrdwf9HOHgOeAfl/RbDJMori7DU3jW8PdB4u0hpcPgNqL8wvtYk
	 +/yjBBkiphQZC5hpjkznZD4hvlQgyIj+lmm6ANMR72Mq+WP4X0IO3hmPTPlzzJKQ6G
	 pskXl9kg4Ap9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049AC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866699358.15757.14542999154943648417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797436d3d960a7f786a6ae4e8026fb39f9aee254dd841cf710c30b2e273c8377
Date: Sat, 31 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748666993
