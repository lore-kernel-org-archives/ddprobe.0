Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DBC266581
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777318654; cv=none; b=orc84OaW7zpLgTFh3nWptaZLJk3tuC3Ng7D3dltrQgJ4Ja2vLpFxohZib37K81ymVO8NxUe/VbqlsxrIQtNo7pvMtLI6czxwj68nOVf5HvC/lcxxVwFC8ysh9riOKxju8pyqERxeH6GrCu9Pra0trTtWwCw4ARtrZnh7HDsdVZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777318654; c=relaxed/simple;
	bh=uhZF7RVWV6Q+jAneevOLnyqxSRE8a1M5A6Fv8Zi660s=;
	h=To:Subject:From:Message-Id:Date; b=f+xItOAHyT5g0ZARG0MusO2UtPNkqwjK1idtJFWSoQMlWOYXOW/iWNR2KC4vs6TlmzEqDpZoO7atL5YVQkMukzDtJCZ++Zid52HsMum3OgVzfexUn5HRT+/bRXxOjv80tpu2XSQp0/wx+ChOKd2J9tn8deyJ6OoVRG65HXiJclc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF6MAx1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF6MAx1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F5FC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777318653;
	bh=uhZF7RVWV6Q+jAneevOLnyqxSRE8a1M5A6Fv8Zi660s=;
	h=To:Subject:From:Date:From;
	b=nF6MAx1UbDtu4R+CzpW24c8th6+rOPeXaSXPr66wIcTbpXBaA+6WNL5TrdHAtjqh1
	 Pb8ovaKw96cNWcpGo05p0eUuN1QC+s81exSHX40kslC/9HfBkn01g14CYsZe8APXK+
	 MxBdTvvrHUPQIj9LrxhM+tMHR4fc0aUuuwo+9LdPFYDyYXzOZp9d5u+5K29REaiqFD
	 5nbkI0Wr9NLGqMk3NUW2G/NLthnqf1XMvxF6hvmOa9RHoSzq4HVcqBlu06hQUAJCWd
	 /i59rWTlwdKkMWmPvPwrId16QJphpGJQI2Y7LBXy2uNciEQrxGhOo4xVmPhoTiBJw7
	 jc7tJqNr/5kQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DD0FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731865368.2081.9333462527388851597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c13ebc25f5bd951e0c199d7d9ad6ba24b032a4419971b6288f35e4a1f389d7
Date: Mon, 27 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777318653
