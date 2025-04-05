Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4A01714B2
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743871194; cv=none; b=C0+gLydbtFwNIx38p296wQjN1qbm5513kelmNzSfZ4s4nPZVavDs+lg+ujMaaZor07w8xGDlK4sl1lWABl7mkshSxUgI/GzTcOy1CZbGgJDaWouAdcOBrHYz0Y80h2Fv06HrpTsjDhMUF4gw4rL2L3pebOrJzoREPLuj+xVSI6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743871194; c=relaxed/simple;
	bh=NUe6PwyaJab2KzsYM/PvvcK7eTchutlikTvbqulBVvM=;
	h=To:Subject:From:Message-Id:Date; b=AEg1/wTrtBJsk5IXKr3uHMVwPojDFREfU1cGrEcHEKU9rgiTcJHhbw+pxFJeruESfkg2KODRKRzahrwe/AjzZNNS6jMqIwav1sNfGKcmmEFPv56tsCVKkf3LNo9LF4zZ6siQlNidk7qYAsbQrdDYfqpY5Y22joUBFK/7mfrHiLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9RB6uhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9RB6uhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8724C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743871193;
	bh=NUe6PwyaJab2KzsYM/PvvcK7eTchutlikTvbqulBVvM=;
	h=To:Subject:From:Date:From;
	b=M9RB6uhuTBJmuzUE7VZKNQqNb4gMskO9rOWKAdkdHc5yTpO39dUUk9HiuSzm+YTLy
	 b5jJYnqP3UovcSRnh6E5E4Zim1i+ku2Ne7wf+9+otQsqgajwPhmS5hc2FzAYFB4mqO
	 SDl4y6naA6UO6rlB4ubwKFxStVNhKA8FeuYJWPyCnE6o69htFLgXeB6tX8X5LMlmLn
	 2ntgCx/DZoK0qk7BMQ43rlFwcid00Hbt0nfhPlDBBRncLhlDFmms+c6plFNCvI+Yur
	 4122oY6AXXLY6vDYONeZfFlr9rc7s7HKfJRiwMWkW/xljANu3bmymLCxFVvNYK0ddH
	 wE56SVgDF5Z9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5CBC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387119360.15322.1310603118714254619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e27ce692776e538f938283bf3b6e62d3c68402b6b12e9670f8624668ed92e7
Date: Sat, 05 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743871193
