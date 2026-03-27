Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0F1F0E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774646694; cv=none; b=SmIxFWGaW/jVoooLGAhB+mXDxVXzccwSRMtEMXv0kZ7ofq29VBQ1r7Ke/1cyg7/rpEpYx4XUfkJlwtqKGczjFzKh+3BSdSe5CVOGUHdq694MWG/c7py4p/OK4AKGASpgdk877ZMMXv+OF9NW4oExEm9oWVIq0tyfmUoeGUjlwok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774646694; c=relaxed/simple;
	bh=FZDuJtqYTUxclWufiy5G+n8JbLwgSdfcLRVvMujmERw=;
	h=To:Subject:From:Message-Id:Date; b=dHIrJ2hvJG/wfidKJKC0IVXs5yJ8zn7jsxAZIFLuWvvz1wyngoI52V+xCpz4qW5Hil89IfCP6trTQwEZOxiaVznVVDi042GFFh6zYYoX8Q+jcNcoeYu3erboKAvNAx4L6/wqhptNJ18rHxLhsBY9Hlu+fpEyGmVw/p9WHxja1xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFwWrugF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFwWrugF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBAFC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774646693;
	bh=FZDuJtqYTUxclWufiy5G+n8JbLwgSdfcLRVvMujmERw=;
	h=To:Subject:From:Date:From;
	b=TFwWrugFCOsi3BViEZOm39Z4aoFBDkL7q47Ui1Yhl+UFr5YkkUeU3f9XJ9qd6W8f+
	 7ZPJ8zEzm3cyWsmBvp8wn3sBGGpER6zyar40FXs/SZLsKdFlbPA7D0WEpKneqk2ziu
	 OAI/Hm8gkShjEqWJog7kEM5T2Q8eHh3nsaa7gS8zotPVw91vXlc3uRPN9goSH6c0aR
	 hCF3D6DtYSJJFR66iDxICmhpfmFzzrCtKtJEgLdFKyGxUP7U2uTibRC/jp1gLt6YUy
	 5GWL02HZ1pT/Oenq2HgYjxfOwcceooynfodidJxFezVrdwWp8P+GFymZb96KYJymjr
	 hym+lsbsKWBZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9771210F286F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464669359.30671.8361345738693708817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e355d5c80d807cbdea54dea523bcd76fd69e10bf6db7c22a3dee29ac83ab5fe
Date: Fri, 27 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774646693
