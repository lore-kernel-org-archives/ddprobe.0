Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A332C8B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721696154; cv=none; b=NjDrdMd6BbjSOE5beyksDfcAU4moKyRKJT8Y4mp5deU9UjCPcfialm4cIwX9V43QaMA4hSwfinnDiDVXp3I0bcU8EiGbpau9/42ePSQCQQI+9E+wjfQOybCOaIPSOe2iT3rzG54ys1kdCirHl8wUMpcxHZXlKwzZ2qPzPjsQC8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721696154; c=relaxed/simple;
	bh=s46wX3JI7rkhisEBtryT3kUSHVByjsdB+R/SIlo8Il8=;
	h=To:Subject:From:Message-Id:Date; b=FHv84NoqWMgzuiYM70GDxPEaI6taQGaGPocoMB6ZPz7SkVCqKSGz816971WCALL3RnwTRSkFh5sAZqSbXGuuVDyqDWo2AJRbiaOoZtUH0bsZ251wh5qfskhPOfQLm7YSjptk28KmtpNO1kzJ01j2dui8a5BqRYIVmRHXuk2TvTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqWQh/s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqWQh/s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B5FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721696153;
	bh=s46wX3JI7rkhisEBtryT3kUSHVByjsdB+R/SIlo8Il8=;
	h=To:Subject:From:Date:From;
	b=TqWQh/s1Ln+v/nSeCw0fGn8DUfDFaFM6g3XplOL9ZSu5Ofh0kXGOe/a/7lawLc3RY
	 UbBwwvAOq1eb+jaL2McsIASUCpT16Y346rkbRioUpwh05oytMJtxcp7hJi5id1f8ed
	 nvIZ3Eu0O6ozTvwzpOuDqy3tIseQ1UGZNrJ67LfJS4CCCIHuQcmDrzi07lN0nz623r
	 3H9A8JmA61MmwNGeSLd2XtGLaQUSnC2pOT5ghOEsE06reIUJyxHVvGI7R0hAodrqQi
	 NAJCOy3fVhEgF9MJRAEN4wnOmOhAMNeWT+llGmNYr4VyAYj2N3bTqncpIWojgHXLGg
	 Lj6EHxdjzZQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F0C3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169615362.13867.7945161010877401778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62bd613f710184b1b6a80d20e8fab10b7e5c6e3f6522721fa2a3d31ffa28b41e
Date: Tue, 23 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721696153
