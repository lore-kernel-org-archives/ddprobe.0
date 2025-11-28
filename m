Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E29849C
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764288174; cv=none; b=LlgjaeP5A5LXaxQt4tOccIxakGAov+/hY8zEdURymL9JhD3J5JwPfKXsbdvWuhT/2KFcIhZW9aEWZsXdyGBZn7ilimIOxTHMgViSFyrORQcp6SRS+NQI7CeWsDSEH38XDVrmp5QehiZ5Z42avsHankugg+ENcfpAfa/Ci2viiak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764288174; c=relaxed/simple;
	bh=HN+lfQzzuSV+cheTkyt/x0prKfKxTGPdrJu5YRJ63Jc=;
	h=To:Subject:From:Message-Id:Date; b=lurTYSwcS8Pq141ZzM6dHKqr1ecLwN+JQQYzL1eEDcZoIoqBFYH8jZKzIE3DDCza16pAjg53pwTthB+W0enLtOTb5h2hHMCRRkkBb6XvsCPQE0mbRMkFgTNoGQiRhGv1cbqaI0lDRPb/fEnfgmmDAu0v9W/vduslUUtiBenc+KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTMLY9yE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTMLY9yE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFB9C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764288173;
	bh=HN+lfQzzuSV+cheTkyt/x0prKfKxTGPdrJu5YRJ63Jc=;
	h=To:Subject:From:Date:From;
	b=gTMLY9yEqJAnPDU+pllTX+fI5KtrSvWHSdemApJI3tZVagkzlRRYDwf7aHHYtuAs2
	 XBhkVEAr5OVjqw99bg1Dw7k7TuD87ckETqw859leJPujXReO3dxKe63K5/GoG6vEDW
	 Gm5tgNos8rbZqhLNCVYawqEmcO079RnmOZ4rX3umkiLg9ttSUuGQ0ZcPzgVXjgXRE/
	 mWlPanbrNQcyuGadVJxx3T0gEM/EO70gk1XiceFGNi431LPOHDtoxiD80ZtQTewrSW
	 lsmEXjugWoylHckoEY+xDYO5bvu7TAy/D1u7+tDDEwZkEdHoIXDv9rjLPgLICJp3cn
	 JhSunfQKu3igg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95535CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428817358.31865.6992244832518629576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51a84dc61309a81a43149210de775a9870948299737835c067ffab40ed39456
Date: Fri, 28 Nov 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764288173
