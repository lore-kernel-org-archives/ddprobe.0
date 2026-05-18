Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B653A63F6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779142234; cv=none; b=J+FSXEzEVw0OiQvO4920Bq9ES77PHWZjpgQtl2l8BDQRP7v7oUQhEaXLySUZeMUhbY49laMVJ1yscZtEu6KfnMUY5iTe5Mbi9vFes8tV/M/Kv83yOT6ploJJ677T8cF5Qouv7SYT0oTBa2I4EXy83Oi359ofjldoCLRp71hntLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779142234; c=relaxed/simple;
	bh=4bw7HS2IoQ1hB7PvtnyUyICL2mkhf2EsR3AiD/wUsQ4=;
	h=To:Subject:From:Message-Id:Date; b=Qsw01co+Qk3idjykKsgyIGlUu3ZA6HXpgQXYitngOKVq8eQtH9PJamde+DWO1D+IifbmVYp4nsKGtyGy3GEScVLV5ETnia6b5Whaee/X073SMpkyTCXzRF/8mxiiYrsfr+cjFYlyJhGXaD1NBBQiJ/7AVS4pIbK5RdddN9ZQI64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8flJDZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8flJDZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B68C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779142233;
	bh=4bw7HS2IoQ1hB7PvtnyUyICL2mkhf2EsR3AiD/wUsQ4=;
	h=To:Subject:From:Date:From;
	b=F8flJDZh7ey0GRWGt/VMzp5v2VkorwWryOvEsi/5LDJGhyJIwNZNHs0PCH+kauzf/
	 OUM+5zubm//a/EzXQttWObm6QRUuHrKTAuKrB4182EnnoxjF0TPT4x+tqNefIoKjNK
	 xj7UBgI75sAquhg4u1DjFGNaQIM8I8l/MjGscLTy22FIHBAnFcIh5WdYpRNK8qz3kj
	 rIwMz/sNhwcxm0oOml22etk9mh4Juc/ASDDvTaH6Dh01OR6bdS35l+5acLfoATy9EV
	 dr1OMu8gwboYwwIKsGu2RTF5EDNxEP88LSBLAsuIX2VQ3hmSao0QqmkyCpWNcUkx/e
	 /j7rHfDeEofHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2281CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914223369.11488.13003135991869043173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0683be28e0f5f03be73a59dc2518abea57ada7ef3b8a1fe94e88de73451ee59a
Date: Mon, 18 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779142233
