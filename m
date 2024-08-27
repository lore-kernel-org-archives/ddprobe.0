Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D60719DF60
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724762754; cv=none; b=rgn9innkjzGAZK0DXVmycD9kO6EsXeAPdLrUE3NR7QZbVZc1LGbVpgFoRTAFlZawhZu0riMw9MMGe6cbL89+AuOzym0+mL74rS+iaXcoADB9Zm/5oc/6dZBNlK3jJd0mcAMybeCMG4pKfcRx+iFdb92H2TKlo7qnuFRmCk8fzvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724762754; c=relaxed/simple;
	bh=aUneopvG0eYm/xYcmoqsprbJ/yojHI0jIgm6EYtfsjM=;
	h=To:Subject:From:Message-Id:Date; b=Z6nT/8s4fOeqY5Ji211irOEkOKpeb1obAfH1T1MUTc4QbcnCcttt0WOP9Tb2rsd57kzRRq1XLZVvnA8rG7cUaogL3SYR2dVYptSZU+a5jsKcZMIDAsoW9c0/FVV7RQzEI+YbT0bM/gNY2ieq/3bEw9DUT6a6woK9bAXbrrnYieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRdxObld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRdxObld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC54C4FF5C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724762753;
	bh=aUneopvG0eYm/xYcmoqsprbJ/yojHI0jIgm6EYtfsjM=;
	h=To:Subject:From:Date:From;
	b=uRdxObldcoQCgDW/Fi+IfOxoc5BioWnlomx8UmZyGL8CQF8vshTx1nkXk5MKCiKaU
	 7Y3R2d+tFQ5Y/ceF5vfr5WUMdAsqCibsdFU1pDyw57nTSnMIJXotZNoUFIf84Ayl+y
	 Y4zMUc4x3HBowFrHc5a08AkLIXLemQpxKXunJ/ySsvlUxN86at+wt4j59QNgZYNmMg
	 U482EQgEn0K9wG+qbLq+XZ3WYiiuLZWpBNldsy88g2Dd1OkTqLUJrOksRZdLGl4Gpt
	 6r2o49dAVo3kcK4tTyIoOYimY905G8LT5kUZi8iY/JI6+rpm6Dwr1VZyv/gsPEfROK
	 auKq9pUVE5d2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910ECC54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476275358.11346.14757298522085051003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e06ea2659c7dcc794a2ea06ed4de52a4942d9871fefda367472e0faa9441d4a
Date: Tue, 27 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724762753
