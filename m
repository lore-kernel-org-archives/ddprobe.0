Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170F619D074
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759806594; cv=none; b=WAbQJSvagAl7j2lG0i8YQh08lAjWE2Pfdj9SCmzNGFQl+YzALkM0VaBkq2ngUFN2H8B7WtGQtQpUP+ALlNL7EJOhLZu/YzKAlrtOELpsO8756cLjetT67194DBuYXSsQz6NL1OeNuZQYH1FvsOZ0ncId9R9sOAsms+PFBgn2rEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759806594; c=relaxed/simple;
	bh=dS/h8j1s8nw43rHZqoTTQLdK/RI6vOtLeW0PYepwZeQ=;
	h=To:Subject:From:Message-Id:Date; b=An7cFDzSUqLp1quq3iZaW9M5QGWSQGmpv5zlbcifVRW3uQOJ1nvCLSMpSXs69tQ5lNexFY1ycgOea/YGr/Eqt241LN0I5zLemuoJOqlSlJz7DMihhKfnVcQFr5QCEpJGpAoYZdluRVjj5J85VlFLL3hUSKPZm4GUoC/LDjKoXQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twhQ/w15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twhQ/w15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759806593;
	bh=dS/h8j1s8nw43rHZqoTTQLdK/RI6vOtLeW0PYepwZeQ=;
	h=To:Subject:From:Date:From;
	b=twhQ/w15YHX2dmpdItkBZYduHgRcKOKFobb73eUS+11F5XqtaAOYFWJ+atSPrTxFC
	 uvagdVbOj0epGCD4Tukowu8/5w/coF1C0/I7A0vEOBFAAO34m0x6QuXDEVU0D7K0ZF
	 /PvgJ28ST5HFC9bCm289/WajruGynLvea6xUKa7sglNckkUrh+PsLENqy9+PGHBzGn
	 BpJ4DV0qps8R1dJjWkVxroIDQr6RW/45QCOi5uhU3pYh8w/CiJhLWwbY1YyIDF5qF5
	 Ym7yn3DI/3fcYR490/xsNN5QG3Q0TRzaeZfQAAq05eZzcMfNtJfZxvZfACSWlD6GIN
	 I9nelWBgWsYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F24CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980659357.20852.9423475820504078590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c2dd668169dd3753f26b59391303cc5019d4b5f5bf6fb8392a6fe28b4340ed
Date: Tue, 07 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759806593
