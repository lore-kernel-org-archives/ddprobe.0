Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A8D282F04
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773436494; cv=none; b=aebKpQ5O5cR5uWWB14WtYkOCn4n5N3Dc10plrY2KdGZ6peFIsope2cKbN09IBa0vJHIVdjThmNoC1D9S4DfFJ48ClW4fUwDrjLcf1jNe959ZrJCUkdS7yQjiSFb3flw9jdsz4NPYUM5s/O7rGum86FkxCMLKkkwwdxHzUjYgMjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773436494; c=relaxed/simple;
	bh=48dVWp/QsxDxkJAeRk4AQOyu2bbQRiuaqtUzu5vOrl4=;
	h=To:Subject:From:Message-Id:Date; b=PwziZteBrQuFyS36m6VfytlaTCpOFt5PrLUNwBDzDiv4wkEQko8fNGEv2Q6mel+Vp3Hx1tCSprtPPmk+sfFxVtiVwPkO8Su51HTVELIwUMUES4AZysMRAngoRD9zMGQmeHoSjbE7/CjEFo29fwWkoBtkO70lMyJEzZM3Dh0vkg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioNpRd1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioNpRd1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EDC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773436493;
	bh=48dVWp/QsxDxkJAeRk4AQOyu2bbQRiuaqtUzu5vOrl4=;
	h=To:Subject:From:Date:From;
	b=ioNpRd1xKIG0pNiV+xs68EHYRy6J4KLP3CI3RVbKDaJBpyf8ehK8vVdA+b5IcqOdt
	 +m2dkkejY2atGCwn6y+cpsDS91PSawG2kfqwCWs9eUer10DJEYwYdeFuvNv+iVNkQi
	 ATcgck4oWBOqxK/HOJQSkDLZeAr6Us3fvRDmOutAfzK34fOEno6ezNJiYxFZ7yNIvD
	 xo2nLjtncxeXfLyW92ZoQsa4bCTgDTX5dogAIDqmyHwVyQCTp0gYA6+SeiRTf6KDvB
	 j+SgTS3hGEDkp4fEOPx+87IRoXf+guRRefIw7BOv1r7YlBVg8OreCXiwNYQ4XeUFBw
	 HR9rq0RMNgqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FB107BCE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343649357.30506.1582001059836178500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9ae6939595a9519bae2e0f9dc2c099be0b0782297e991f13346db83d0abae5
Date: Fri, 13 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773436493
