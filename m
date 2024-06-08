Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F2B1B970
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717822043; cv=none; b=chI6yp4dF+j75oDfttl0l+xQTzh2YTUwd3IYMk+dY4giylAy+vV7ae09RyopvyepxgNAYPBU9ibtJZ0EJ13w0jxFFi9OAfK9likyLeSkF8ARo2M/4Ssophf0NSPx4do9ilJqEudMKi85+kzNoklXr5INY56Zbk9ZzrZbGRxCn1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717822043; c=relaxed/simple;
	bh=/7iQhGvMZu5nN8p8jysP6qhzFahZcPOokREBkCxqHfg=;
	h=To:Subject:From:Message-Id:Date; b=RLhKQUE/O/HEVMsBl0hxBq4EoskYZ4JgEawVGP4wzk5mzlbFo9eCeJRwWNGhcf1OMLDAuCk1wbsZIqUDzQJtb5i8C7/olwnvl8InK2O5qJTAvb12eMGFQM1EaFmm3bGbF5VHKI8djy3nBaIqpQaiL4ojtZYw9CRnxthQhOyk/AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWZTVM42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWZTVM42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA84EC32786
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717822042;
	bh=/7iQhGvMZu5nN8p8jysP6qhzFahZcPOokREBkCxqHfg=;
	h=To:Subject:From:Date:From;
	b=IWZTVM42mUTGRadWl4TmZ32LlrHRfQOzWPS0pulFnGUGdIn52ER7LB3BrycGNc3zr
	 PuPOFO0vOvR4Z3H/nortG1fZ+7j9QxT9JlESxV7Kz1bapRK70vhvmQd38FdkzsqiDi
	 NL+IA/zeaXvRKlocohLGSgAwjOfsfHkwYTe8nG3XSLMK/Pcm2uCUztWK0p8DGPwq9g
	 bxyKakLI9zh3te57mCfAVK9m2yFDsrQhM/5i21p+SilWO5MtK1KOC235ZvcUOpXSql
	 C/dlKMbbhN3D1IN1989CF7wt3mwOVPPzVGZ3QE/CwNiGqGYyWdebEPKODxTJKnZ1Be
	 NlMGi783iabcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3721C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782204278.23926.16603783504650570600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11324caf7723ff93bfe116a3ef471cfbccf2190856ea308d7b8982bc8ece4854
Date: Sat, 08 Jun 2024 04:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717822042
