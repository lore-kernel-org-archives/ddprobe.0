Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E413E462
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714968143; cv=none; b=l6QNNeFWRRVof8pBpZyD74aehyBw7KrkWEcjLWGCHh0nPQmrpW51Vphryfd4nPyqWdeKoF3UrgHHMyElR4+u7ty1VsiKo1WFXPuMg0Af6085P+D1jBtkQyPz4DBMBlYEs/yI8xiXh933+9fEg3tGuMXP7Yg37n+B1RvRxyI/M2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714968143; c=relaxed/simple;
	bh=ilkbkV0YTjYcivg8W0taSGa1XHJmzG/ca3zFsPx4QAc=;
	h=To:Subject:From:Message-Id:Date; b=oTkpkjXY6OWjCjQ+ibdAdfyvcO88zIDQfmcCNQehqRazeYQ1trlzO67gnnsd3LrT67pfe9UKrPGx14UYMtU1mc4G/1fkhpBDx3atAfLrCSXTBTfH0m4a4kl+RS7BEeBPTCtg0XslRbf52OT2y0ZYpr1tmH6V0RDTiqax/EO24OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzq/MBM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzq/MBM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10A7C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714968142;
	bh=ilkbkV0YTjYcivg8W0taSGa1XHJmzG/ca3zFsPx4QAc=;
	h=To:Subject:From:Date:From;
	b=kzq/MBM+vyeE1yx4oxZ/dqwfRvtcVnIHsQrDd6qcY3UlvaSSbEI7GXh5oykY0nZPA
	 HGFGN+b9WpEVwuA+u1adlM9XAuR4f6HzK3AgfaiOlmMthqjNEOZ88M5stOQ2pEv4Up
	 C6NvzsqTcp+QUJb/kznNg0dzI8HECIyIY9GVg5ylm9YRUT2muGAT+jCmNf/Ah5Qije
	 DTsBb37cpMlMTu9N8LeIxfsVYByjNmo+oD4BdUoYQO0oj63pZYLjhvUH9dcmYyUcnw
	 ofsGf65i71QWOeGI/zoPU1BYGYNBdu6NV3W5yOo9dol8c7ayx503e09E35CUh5grO/
	 0LxstPRmFFjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BDBC10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496814280.22732.1650437568771589959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4150c0db0abebdfb2a7a178df5c4b494e81b1248da37d4c170506a76c2c5f7
Date: Mon, 06 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714968142
