Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298C732A3CF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761800394; cv=none; b=HRnXM4RFa25Epqw/qblF0IOlTVYUQhfIaQlZEQmNjfWpdYPxCDcUMSixglOyxKoZjvr7r1GwsAXF/sIFj9hkhJgiwn1VNGNA586IWme6WqzG1KZP+ml5+0jE+rNazp7RxYt8F7JT3QcCHjE42UK0e3yP0o5nGoZDItSgDVzgdw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761800394; c=relaxed/simple;
	bh=9WFB8NtS5GhyFHQOz1FJlkj0SVSwUXNTaXdDsDTzNCY=;
	h=To:Subject:From:Message-Id:Date; b=FYkhz+2544VtrRVDAGt+WBvArzgqyV9d7qrEXCNMqVgxwlaDIL92zv0gpKnvWhutXfchTkVbarCiACoOBqHToX3E+NUPuUWR0zIEHoUP8svVBKZK7DE796FvArx4D6lyXkStS2s44/Q7+IrODx3XH0hc76CPYCOkZUWtY/+MH4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNNvHu/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNNvHu/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761800393;
	bh=9WFB8NtS5GhyFHQOz1FJlkj0SVSwUXNTaXdDsDTzNCY=;
	h=To:Subject:From:Date:From;
	b=SNNvHu/RodShlmnSEnOgwl0TQNR3xa9WlQElOcFBZL8ZGlETWUdT3a57wtufxfhSd
	 wj0V6Q4AJNqM7XhhFA3iYeTtU0Qz5OA0lHL6sNx6+xB5UV6EGiYZGS+qIyZWi6DaKl
	 qGpXFfynLu05PupvVQStGxhp0/TVc42ozCaVoowD5HqPPzBvC08qd9DxB4xudenUzE
	 eoZEv1MHwYCSXXqnXLpWrRYp9hTHKdRIFlwocyilOOP++BIgd94XA+3y//DN2C1+4d
	 qdK6oFp735bv9t4V3+Ys5Y6kEF8iS35x8BphORBbrC1/plz+Yia2xkwr3vOSIluWCp
	 4jiC63DBzPezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDBCCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180039358.20997.16397290760976202663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159d70fac21a85c7c9f27b0e1364d42452b99029da884f80f17dd81483b882ef
Date: Thu, 30 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761800393
