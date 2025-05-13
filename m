Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE611CD0C
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747163994; cv=none; b=MYjib+21lZYdmC36wJWixwMlexQ/FDt99XKKEA+M9eutj9jd+6wtZ11i4mNfjmEitmG98Q+dkIfd0HGrBWXC3q/N/q/meKi7O/u/hWM0ZcAP+W1W4JfV3XtcOXbpEArqVYhUBvsnIxhkLWxK6jzXc9+Vz0aiQa3Fxl6zcQDRY10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747163994; c=relaxed/simple;
	bh=84fRIO+74f28NjBvMm9SpThL5J1tveDar9pbrudeQCQ=;
	h=To:Subject:From:Message-Id:Date; b=K7kGsuH9tETxF2bjy4xGHykP4bcpME3W3NQ7MaiF8NrC3ZHcnPcXksG+I8NYwtXTCLAF6dw8gnJAkn/SJUf4hhPAHXEIojsJyGQpsRbg+1Kg1jDs1xxexSlVbVYXfgsLrKJC22H7aTYkRbAdUaPReUb0rzPNDKrte91YQB2Z2xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lctWnktH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lctWnktH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4406C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747163993;
	bh=84fRIO+74f28NjBvMm9SpThL5J1tveDar9pbrudeQCQ=;
	h=To:Subject:From:Date:From;
	b=lctWnktHph8inZ8xuqiIT3IzvgKSfvBheNVGtrh5p/diIhwfmqPhbEPmBtgI4kP7f
	 NIpUEfIZnf9F36Un2UKiycqzWjQCCCge8wMFYxtw0qaitjKOLKhy5swdSwwtDahmK+
	 XSjTWlXLADOTW4mAUeswIITFCLD7bAo9F6Qxl3vssQHaDNHeLQhwr1/OwAW4ZIB/QR
	 GETwX0JoOMqlAo907orsrgxgn9zKdXysoKzNgO9dPe/OubSiH/q1lqyO82DaocF48H
	 oHk1LlsjGYgUEuzlvnK3lineA41HFJiMbE6/2bmt8GABAYl15+8eLMpUuVH4WdmNf3
	 8kYNk0EAxxNOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A2C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716399357.19818.10076822798970810809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b3fd046742f20c6bae766cd63ef9053551f3beddac0044b1777bf56fdc1aa2
Date: Tue, 13 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747163993
