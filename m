Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F6518F2D4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737359754; cv=none; b=HAwVyJDBvyZPaGF+1k9W+BIAMCqaI8dpnghu3EzBXTqTHvmMSMfRcINGbORGyCAiqDyD5fGD3Eaq3V4VDucH3ErbSOzSLol1/8VAUO6cWhjvhJZex4UorQyqZ+yjkkSoV4iIIIwCkHF/RmmYOwtrEdOYTv0AsOgqYdm50Oc0YK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737359754; c=relaxed/simple;
	bh=HDdqRAmsEOBiesGNLSi+XtNHJtgyo02K81fivBvaUjY=;
	h=To:Subject:From:Message-Id:Date; b=uNWLNh195RO0860bZ6y+rLKCOgUUyXW2twPK1iHOGi+lJ+Ga5zYow14pnxtlo4ZQK7O8V5/dvWj/8SBMtOy4tJvQCH/mfjMtwB5Dk/r2N7fuv+oFWdMHh7K4ExxEXDF1VdBxjcwKSzv4+iTlTVmCGlqpI0bVjBxmSRIN40PCxKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWHaVJD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWHaVJD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C74C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737359753;
	bh=HDdqRAmsEOBiesGNLSi+XtNHJtgyo02K81fivBvaUjY=;
	h=To:Subject:From:Date:From;
	b=PWHaVJD7YUPsJwjwmTbm832g5vZ5Afgx+s/CocyE66Z/F4RcllkUikuQxNEcoVgui
	 3QVmqAQdIy1CEtrznvjGVJ+cIZ0hCrgUqQdmkW8xyxIofC6OTUmvFs4ex6vOwmrkCy
	 sYlSPi8IfaGE7oEKxVRi2CLbR2hH+DYPqk8Q7VcQDBl0iRQcntv+YX0OceE8dJU+Bz
	 dvTbGHnDP28nWTG1ZaFwEKj1UD+VNzlP/PreR41rZclgH7AAQYXk/iHZ+CowJE4vq2
	 rKTF+UW4WUX1SPnw+Iz3+Vz5Bfo6rUxi57tkJCurS8XncLnQNnzf6mwVaez/2XCD01
	 5uLHKjJa/vR2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A097DC02188
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735975364.20133.12083539121211743824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4caf378b7d7e8fc812fa631a19d24206abd26ee3aa41103ce36ffc65c1701b09
Date: Mon, 20 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737359753
