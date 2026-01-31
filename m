Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DDC34CFB8
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769880234; cv=none; b=qwVDlZGGEE1JUCNHG61ZGxiFWthIivKJeJ9cy6ahE2hn68ibAZSXljfJURIb68TDTWl5s4vaRETtvZ2C2J+Bq9HekKgoDtzis+f5ftJkimytnJuLRaSAXQbgSYI9VNOU3G5BRQTe+uFQk6UB8DyugFMqzmIha6eO+FnYajtO950=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769880234; c=relaxed/simple;
	bh=feBAl5qFIZmY0X6oKwOsywJOpMyZxF/H/55If4gxvqo=;
	h=To:Subject:From:Message-Id:Date; b=Ot3zuZGYWgFm3sn7IJqmYVw7HUESGBDwZvqUxE/bgEy95+Tu/UveIdd400uwIIMQ3jLVhzPRObr0L6EPs6zR7YV4wAuU1cnGvugjUoRo9D8FvD1nPGoRVX9AvXJiWSZ8F9VYNBLsVyz4FoJG1CSG4aKZxjqrw/cYuG/rD7HLefY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N32oEiBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N32oEiBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A690FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769880233;
	bh=feBAl5qFIZmY0X6oKwOsywJOpMyZxF/H/55If4gxvqo=;
	h=To:Subject:From:Date:From;
	b=N32oEiBh20uMPd7gfLfSQDCeftn3+cp0RZOeq68vIsff8HLV4bGvjZAnou/9xvJr1
	 6rPrG+zIMxFMe6LTxdrRpXVG/WlNbFXcea9zC7mGEySoN/valjDeFKCXb/ZojvodzY
	 P3Y0i3xB279ESKygLJEXkBNWomVIdrnRtnPPMCXQsyaTglzBjKYlANmZ4wt64DhWgL
	 ymT0zd8nq+dmM9qtt/p6pYdm2ljWBgmbJT9jU+aWUUSLRnWHYIZNPaxBlo9/8F9rLa
	 UlQ1ky8m5yPWePEYs0KJpAnx+EKtu3HbEpvxiERSk2zkDwx8RV9g81jkevGS7qigUr
	 zdgO+dA0OFHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94861D49C9E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988023357.12376.13856064529340711330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e33448d10f6f2a4a49b4d10c5deb1cbe48ec9b1528c96eb50190a1a40144b9
Date: Sat, 31 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769880233
