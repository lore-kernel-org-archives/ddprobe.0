Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9E353A7
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757556594; cv=none; b=lQ5JSPPYehDAn3YulKHZNdUWUFGY6nzQnT+YRhGAxzVdnWtYE5KEcolIhGv0GWmvAQouwMgbaZ4Gz+QmliIrf3q8E/togPFV2LvcWQtCwMA4f4/wkpZYXMff90EZgp+3o7xw+yDM4qOUN/ToRD3nllg0EMpb8HnwvBI4kWfFqpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757556594; c=relaxed/simple;
	bh=8iquYFqlXRzj6xVphRXKyseUj23Kc+LawdoRBROZmII=;
	h=To:Subject:From:Message-Id:Date; b=P674hlLHXI4afxaA3vArv/MCeFzYlpnzTLu/6DWpYibWs57qCvT+UrRdKFFO1oBsJVY9OyhCMelgtuTCSFnciffNYJ/llTVrXlQ4F9IK/Cooc3DrluSWkg4BPUlgVhTF5rOP6oqggdd0CO16hrZST/ETiGeMSy/Jts/7gzHFOCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXrpfSRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXrpfSRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0443C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757556593;
	bh=8iquYFqlXRzj6xVphRXKyseUj23Kc+LawdoRBROZmII=;
	h=To:Subject:From:Date:From;
	b=NXrpfSRX30GKtmFArr600aE1iJRnnpzbBvaa3u+Vieeei4iKhJ+ToBhMEhLx2PSZ+
	 TQn+3VAd+1pqrI6cGTKhuWfBj/X2ZPpM9w/tTRji7m48E1BKWkYxDGozsXIPde3/Ar
	 QqqwTiHW2BBgriKgJGjLSRsJa910thrZhLrqrEO0FlTc8Aq6GDZ2g0Kt/0yIMP/+a/
	 DoXgJIlZK08dwFdDA8k+mYkTebpKWfpWge+KxtPt3EboV8Eh8zvO5swp4uL66Ruj5h
	 CkGcw7PXg9nU+D6FvnOsgfKuxtXnPOSfwmeV5CJYfqi7lWiwefJr+cVOi8Lk6BrQ9c
	 6kwrciBXaro+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F729CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755659357.15646.2891117809130959680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418cb4f6933d55932d335ee66e8aaa6c09f9194cdcd2a50c3171f2a33891216a
Date: Thu, 11 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757556593
