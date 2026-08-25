Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E752A44C4EE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787663435; cv=none; b=q6h6slcchISmzkrLCwBHgr931od2ISih3UFzipXo8AD+c8FxJGov7WnT/j1R9S7cY9TJ9M07acF92EuV+VklYU5hmZJ4kX3N2kLGzdcUnqUnxx8/aImGJJ5QXnmh+d5f/vMzMMVgcBOeyLU5i3kVZ/QPQJ+jhkjZ2GEZGQ7FXk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787663435; c=relaxed/simple;
	bh=D//7ugVAoR+9OTGdoX5qpIcC6FhznD1SqDIrd4JCPiI=;
	h=To:Subject:From:Message-Id:Date; b=DbyNUMW9xcTJPCA5wK3hJe/FcKZuUudLbXpWpVlMzfLSZAOVkhn+eom8poykXy1RgiUeD/zI10KCgHucKKf4CzwoxZ2byVjxEAoH+6JVd45YqoO3vHyO25/Cg8KfmAw1f+kGslZ3bqBLMwV5UbwzwDAlxD5t2ZrTXfmcyEG+fnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTdAAtE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTdAAtE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0074C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787663433;
	bh=D//7ugVAoR+9OTGdoX5qpIcC6FhznD1SqDIrd4JCPiI=;
	h=To:Subject:From:Date:From;
	b=TTdAAtE8QfY7lyY6q8Ygzqw3UCPI+leLIaxM75RDV5SJcL6zC5v54dLln1edsNNYb
	 sMn4OcSzhxz70GVkXxrv7P61t5GJ2A8QDJoiIpq6ErKy9fi9ykjZE0LWa5Slw8/KC7
	 bIq6Kzz9E0IqPx+N+x8RebTdZ3gEONpY78pL4lhP83yPO/HwzGm+ngoG4phwsMvUaZ
	 85faCxeYgYujk0K2Ko8Z2HNOHK3d0VTCCEYbxAp77RW96G6fxb7aDCRp1NB4Huazjr
	 q5M0OgtysuZU2lLzLQ7KCRRu20fJzRFlWYOsvu3fmde/5ZiA3yICEWJ11kcvh/ifho
	 SMCX8ptc/EnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB500C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766343369.11217.15743038830663235928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b894d61fbdef9302e113d0beca78e6f9fb3269c9f33ad02aab989781907ead44
Date: Tue, 25 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787663433
