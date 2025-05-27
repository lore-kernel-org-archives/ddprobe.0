Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B73A272E44
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748358594; cv=none; b=VBfgmiyW3OOFXwTPsMdR7JVPkV8Y5YZIfI6hvALz4bioAXXULQ1EEyJOX3Da9Xc35h3gpmw4BWi8Ir0kXsJkrWrKEAJOtwRbpjonQ0gISQaYU6ahg+Puj83qhvyaOuhjfu0RURn58kaZ2jQdmfBwt1mZQ+isT9r5S5yJkMaM6w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748358594; c=relaxed/simple;
	bh=zHycGlCCOaWK7WC+wpxDCtvOncFSDODFQbRXnnAEjLI=;
	h=To:Subject:From:Message-Id:Date; b=uvZR/35IHlPFzo/qk5Id97Qw6XraXts353LYHVZWWTisZuIZz/GPGKRNrHr8oauBhwlyWfg0ZAPYX1m/JQbjHvM/TFlf3IXViZHPsofRs24TtDJ93CES2yzhF5G1u34L876qoLbRzw67nrGO1SDcBw94nc+TdxgU8D2/uyG/48E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtASmaW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtASmaW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA06C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748358593;
	bh=zHycGlCCOaWK7WC+wpxDCtvOncFSDODFQbRXnnAEjLI=;
	h=To:Subject:From:Date:From;
	b=dtASmaW+xf8LFGruhQrx+ZNNp/gcRQtjRUbpcdQc6WaBgKeVAcOe2ehAmRQldSwHC
	 SKj13uNnRCC6li5xI3eKhSo5mlOz7PWtUTFo7kVvn5WSJxuxXmGoV0m4Ms6GI+0Jy9
	 zW0p381gdFBs5Q5fQJwB55iRDYldNfYx8AWNHf7eJ7Qt/LFJK9KVKyo5EyX6w/BYUr
	 dCv7kKVHzWwVhtLv997s1Z3fVXCcE6doI0gA7iu6dXSGwbMhlwFqopFragQ+vIUi5m
	 vaglfEoTiOFvuPJ0EfsM+0NQ5HAQ+uY1r5pJkI8Al+1AHwLVJjxaNtfJZLbkt5xKMr
	 fQKmMj5pYtfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93680C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835859357.9937.13209035471541485333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1e9b2499c50aeb1537c8b09c997ddbe1dc228c47d49b844930a897ad428d40
Date: Tue, 27 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748358593
