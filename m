Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB8F1DE895
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739129755; cv=none; b=FUooDEspFREyJqRllq3HZtkMK92fJCjKeK4llrf68mpdHW6HiXYD9eh3igPJtbjIoFFJiCmOzIskZsy4lV04iVBYZE3miVyuEAeCgIm2gmYozD3wLm1nA1+D6qGwiJMMyI02i0Mb7QLYR7to4l5U27FN8DwVZAfXDH6pvntG7N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739129755; c=relaxed/simple;
	bh=EidmawVTH34VPR9VcWv8LeMoQU4A+ScDbJE6I+GJxAg=;
	h=To:Subject:From:Message-Id:Date; b=BBBULJ2sKg2fbYVDMk51sTtJmQkstt4Pybd7Zb/54OWbvn7HKNNUpqXSZqK+AnQGcC/BklWrL/BXeKphYzuDhENC7lTE5pUqDQmn2AaV1FcK4sniDg4nLmVmdv0NZnXnl+JRxaDH2vSPhAPA7QVbolTU8vsWgFB7DrCtav/B63c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As9BWNog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As9BWNog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F69AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739129754;
	bh=EidmawVTH34VPR9VcWv8LeMoQU4A+ScDbJE6I+GJxAg=;
	h=To:Subject:From:Date:From;
	b=As9BWNog/VaD0LGeLGlBsrxL/FfAfnIZ6fXK/Sgog9/p26ME4Cwbr7Xe4KAzu4viB
	 Z15iGp1AOEBctcBkqioYp6M0aOKh/o5mtrR4lRTiXCmDObR75N+AwD1z5XMGU/Y3g+
	 VqL/4tIOYBdaezF15unXdll0VotDGcyA7E/EA+bpmwM9UCHcWjok2WDPYmei9L9d8T
	 FUgAe4uNiS6mg0wq4gS0KdJXGE4fiIjRUTLFaAVRqGEgUHENiTo2N2eXID8fjAMWSY
	 kwYQjA84bwg0Ala/5ThdbarlieyoAf/JPtsefhjGi1+tnNKLyd3iZ1lNa6NbGuvoG2
	 DQFg+HCbBg5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1235C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912975370.5351.1879861902409895959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dd422dc56daa4747d614ff82f75926fe12ef508c482ea186c15043d73337de
Date: Sun, 09 Feb 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739129753
