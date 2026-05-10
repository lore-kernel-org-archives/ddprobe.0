Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A5935979
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778382034; cv=none; b=XQSR2uYHQBEvLDwFltED57rh4fjb90JDdiTYhuofHR2JvoxPCDbNLvYUQ5JU8i3uP9LA424tAi770ZaCUoRb+C1Pjjo1H6u9T1B2kK2Q0LP8HtCY8v67C1xePKlZyWVIwsc59pUj8ymzjD/rE0Gnpah+cUvFtPYB5W1o3mFfeIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778382034; c=relaxed/simple;
	bh=Ms9Oo6U+tmj9AbLlItDay3EuG60YHnPSGSW45rsZakU=;
	h=To:Subject:From:Message-Id:Date; b=qkdMYtzac2L104ZZu+wjzOUJU+Ld5RgYZet5aVRf05k87mjz82fyIc5lPhDg+uRXVirb2Blvkd3r3ueIJdFjeRFtigfxxrMdWHwS0mH5TW9xdOF0atKeG/o7uuKj63xGJwRANuICH/GPAlsGBJ7hDOYHIoA9Q312er7srpDy5G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV+99K9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV+99K9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0BFC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778382033;
	bh=Ms9Oo6U+tmj9AbLlItDay3EuG60YHnPSGSW45rsZakU=;
	h=To:Subject:From:Date:From;
	b=RV+99K9vt9+GYrZO/su6csPKsZi38XnZbpQpdtqb7nRqcyXScpcVhghfiLpBowE/V
	 /gCzaqYCV2iZuokVR5/ZIfAhjgX5EN+PABzkRK5pNfph+TLTl2I1xpwLcVPHwyeYZN
	 SSenKw0CXB+rUUxTgQbFldYaOyxKUIBinG9FATHyJo6kmiVraxuklsPH+gp0qiyGMR
	 xq5kdew/2mgXhCuoZga2/ZZmpCYPN52/mc19XlcbpwQb1mpNdoPUgNu6xBT9oK3JjY
	 PTqdUDwz+aVrHx+Qe/T/izhQV8SLtrJQ6zQatXVfrkBviouK606K8xfXB1xcM1njKm
	 WBJ+3qrBXfdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C66CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838203368.24314.16760867835163005547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027ffb0d44e9d2febca9627a8bab0553452cec1032eee900781a36d63b18d135
Date: Sun, 10 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778382033
