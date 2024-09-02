Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0141C62B4
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725306954; cv=none; b=kUiyDDtgsqjwkOoRlWwwwGeId+B/2+1h5FjjbtWSsQ6si2LBhnETdFN/pMZ2si8bQay/fiNT6eggay9VKw1zkSrt4At7cFOC1hUUa8319PtW5X9u6Capbuq2h+++nJ2bmYcMbeGOwDjZIUfrD0dsH/RTBCkqkuEhv8IOWVNXEOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725306954; c=relaxed/simple;
	bh=n+5QXFUh4wRSxzrAnxInJXFh8Ov9XDTpMpdCzSThtKg=;
	h=To:Subject:From:Message-Id:Date; b=FUi/am0uvcqjsYnRADNAZ2ZghwBFh2Ltk4FMj+Nc9mcE9FV0JMSm+ZAmKiTRvFowSEDtQyb9adRVxp9cEaXzYllSmySKhnEPyMB4VlMTb5ZL3PoBk3EMrn1iE3jsh0axzF/8qfargxRFEDib/Xhu/jC0m8ELGyRdnJ9HESlEcWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SM7XGbfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SM7XGbfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB0C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725306953;
	bh=n+5QXFUh4wRSxzrAnxInJXFh8Ov9XDTpMpdCzSThtKg=;
	h=To:Subject:From:Date:From;
	b=SM7XGbfqo5u68m1mln4dXnL/viNDVH+whtzkawV6PmKstLgi7GEpRP3rPHhgxibuJ
	 ODvkdK/naAb1fGJOqooucY9q7fNu5JGx0usAPKJDr2XHgsd0urnIcv+n+eMRaZZit+
	 axN3ZCvLLBx9HM3aqsX9Iemrd98urS2clP/UIFhlFMPa4TmXswpmrHooEf0srqT8qB
	 Pjyx0Rko2MSgacZgIT6wD9NEEzAq9go1pQgyrsyyHYz+dI+u2NcDp6GKilwhplREWf
	 4n13muHxol7zimJCGRbokUYUifvbYL2XBgfqW+LfmBBAdhKCejEFLn1dO1V5nYc+Go
	 Dsqiw7m4k3UQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90140CD3420
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530695358.20607.16778348312428230275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621ea079dc1fd20e33e7165a4134ee9c749e5a96690244190be986db5b19b7c4
Date: Mon, 02 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725306953
