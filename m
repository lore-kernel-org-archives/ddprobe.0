Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268BB3AB28C
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791530434; cv=none; b=pLdbpPycs822OzWYp9WzziMlRd/2j2ti8ots8WumSFq3/CTSUXHvv/F4EMHm6BVAm6q3qzuz7pcRl0w72Nx7lyrifpgzak9qoFUc59iseglWDY1RjubIFjykSoI+e8QFsjnuyeV70PVRQTdfDPZZ/TIWtcDIRqOfqbJ2a2A6qTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791530434; c=relaxed/simple;
	bh=qZyVaMNPLVGO82espEx9jepwHGS8Dv4eXvfm2CGoi1I=;
	h=To:Subject:From:Message-Id:Date; b=qZOsD9BVaXHwcW7k3c/ObgBfyFY3JvXAsE5uzIPGs3ahstIKztjwveepl3LrNOghvsFsHZYUbfad5lmVLeXL66ijupARbyhmLOPBXr6aRayjvhWLAm71/ZD2DQdW71x/cdA2HWh4YW9VyzTlGhKk+teYM6MJYO2cY3eYXlOe9/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUT155x+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUT155x+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D22C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791530433;
	bh=qZyVaMNPLVGO82espEx9jepwHGS8Dv4eXvfm2CGoi1I=;
	h=To:Subject:From:Date:From;
	b=IUT155x+IxMP9HlZPn8/v4mC54o231AzoPtNuK7zHd21On3uhaBGI/ZfLjvMHL8Iy
	 gj36czm/GGZVckWF61dXHvpNOJnVQubujZQbHrgKKt4ytiwFTh3J9Hk/nTmhfkwozA
	 OOBlIXepLlCPXa7GznOTKgKegTRkqCkJeTR2U8bUHCIqyR8GFAmPXgY1HlccQjgTnM
	 FSzyGgrgaFcHWqAodzoQ3XET9juhsMOcK4++q1vY2+/VMwKJ6OvG27HjNG58Qe3Abl
	 E4Re7egYDyyceJLglqdpk75nXri2/mloTfak5SOw/qJNCryJQdcH5JRVQJ1xydNkm5
	 sp/RsTgeZaVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB07CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153043369.29161.16736330853536164549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1132f34bc27bc611968dcd4365b346dea6eb9133a00c4ea5b3842ebd4cfeac73
Date: Fri, 09 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791530433
