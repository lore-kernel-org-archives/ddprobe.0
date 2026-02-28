Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C3621D3F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772238294; cv=none; b=s20vHeaPtN8AP0BjpmuiwzlGUT+dh1jaXo38M61PNnFWbJQ/JrFSBki491veLOoxkDiFhTbyaW2M0YWwXtWAZB3dhlepNlT9G3ieJ2fSq3VHJV8raDAT/noJcWji5Xsjb14OzoHA6Lnz+fkmatyNa+sxSW7G8idPx3w+iizpmMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772238294; c=relaxed/simple;
	bh=koJ6751jnGzImOekjGhszJagbVav512E4Qc64G8xW6Y=;
	h=To:Subject:From:Message-Id:Date; b=aO8AA71b7HIrvre53Onyu2fH6MBfD5pRKaxyFsqznEFqX30T/sq5j0hnxBE/sn6y27MOrOrR1RSpuVxmVX89f/u5FhJITz+LwdHDrQMcOJiE6qLQsp41F/3PnCw3E44S2FwhkrP9rJeA3cjnZSenIZBDwwKNulTDui4WwAlAofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La5CRV01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La5CRV01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772238293;
	bh=koJ6751jnGzImOekjGhszJagbVav512E4Qc64G8xW6Y=;
	h=To:Subject:From:Date:From;
	b=La5CRV01PO0Q9GpKNHtOe9abfYG96itujNtcjVwfSGTdsrPXo0dD/7Atjil0KKnF7
	 M28rSSQpcdeXLQatuLMqn/vsCfpGQ0Fp7j4g7dlFu/pQZzEuOdClN0CPFrSfATjJBA
	 sxboulIntg0NaUU7RLh/tSObJEJWmACc/8rs7F2xDdvedZ67qCYa/aPzSA+J0hdQSJ
	 15hvfh78HIFo55rSScAfyPwxlISaQJ4PBqP+xfSNLkSW2nu3ygnyWqjwxwk6hHv7LU
	 lsjcxZ0erEc92sk95KpFFgV5x7YkoYQUUTqGUSEeU/Fio/eyr2pxiUyLNbihBclgYN
	 eDY9CG6r24A5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A21048922
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223829358.17009.1074635782907458058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98675114cc5caba789d62f78440d14e3efabab8eb5a5478b016bda1a27c8cd05
Date: Sat, 28 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772238293
