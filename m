Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E904F9C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748767194; cv=none; b=cFXjvGx9ddGvCVdBLMM+NC6I5JWA474VknkAeJzbyqphZKtoVmetzwmPVhrzOdQZLyZjVLoMa9SU9Z3C6cwl9Tac1vrlzVGisRNmUmU0NrQgYuft1ccQNcuNCtjX0Q/RVHOWw0Oyznh5voTG1C8Xdf4rNDP8GVf8quYPJ5nolBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748767194; c=relaxed/simple;
	bh=EZE9qd7DefeC6OnHqO7G8zOlT1QcTaIeMzSrq7QBroY=;
	h=To:Subject:From:Message-Id:Date; b=GZ3MDpwWDnMpWg38aOF/1So8FgMR1C2b3iM9vVtgf4vljNZhpcqoRSEszoeggyEVishUbLGjjuqzR5zrJsYEIpnj0D7JSSXHoYpT+0MxITwf9zC0Hwy55npGOPmVriJ5KU4GjUvUps6TlFvz9jzEpwhoNLb9kAdcNkCVoiCOZeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI8pppro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI8pppro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F11C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748767193;
	bh=EZE9qd7DefeC6OnHqO7G8zOlT1QcTaIeMzSrq7QBroY=;
	h=To:Subject:From:Date:From;
	b=gI8pppro6TrfVhEed3qsYrE4oG7MU6XWtQAoxKlGeojJDkf5n2U1pSvaeYB0TMvdE
	 iSemJP5cXICZ64A0O+xhgLRt8PKGOtfkRUtUFK75/ezVTeDBa8g01JFH0oCJJKm9gT
	 QsIqhcZsMgJ9Pb3ne3cIg/olQrONsWjGk/MEv6zVPEdjpq6HBP2YBSmFhs6TA948fH
	 +eVltL33VhiMJJap4F6GqKPUbYz3qWWl5J4f6T04I1prRoYFIGt6p0YEv/PXyfpYYA
	 wWmKMlGEYT60iU+u5ua9BERqXqo2jHl6ktRcuYYPCkN5H1JArKDnKizjm3lW6Or20O
	 81ht7RGb89kuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226EC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876719358.1324.17599671105687639413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc4ccd14d8aa266348c3bb5cc41ef461f9595d435fdf17424366cf5ace3f76c
Date: Sun, 01 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748767193
