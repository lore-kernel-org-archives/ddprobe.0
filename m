Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B050763EE
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718837963; cv=none; b=bPmFxoQsjygJ6YkkjHkPjcoRqHKiBnzo1rLhLOhU0cnCpmslM3vee1zc2nXiQtQWP+QGVT1v0D7dxbCdJ2WQFyre6M6urph1FpKa32NXjgE766akHkNOovg1j6SdvcV0/pO324rAQfyKw22cCddzRrUrA8qSVgaqtV9dZC7xLUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718837963; c=relaxed/simple;
	bh=KTrFvbtsJ/zv4IK+hPFwYBy8hzNblqh5MF+BIMhIn9I=;
	h=To:Subject:From:Message-Id:Date; b=KWqoWD9IMns5yU1NPCp4fseWcn2YlGt6fGy9zU0WtAb/pPkIgzO8X3NlgUvrX0dwC+PNcIb+HTSVlJ6+ofuBpHNW6Y3hlC6iFJnUWXRyC4y3kyf3WKmIuH7v18eBy8kTzG4+eL8pgIMc90QvlKk7AZ2nhEfJXNvsnecdl6yqXaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhtBSOqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhtBSOqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D861FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718837962;
	bh=KTrFvbtsJ/zv4IK+hPFwYBy8hzNblqh5MF+BIMhIn9I=;
	h=To:Subject:From:Date:From;
	b=XhtBSOqNiVMtS+mekDo0GiQJ05+GXprM2VnOfIVfBNJoVPMdetMpCvfUnltw5aQHr
	 43HMtEyIKNJGBiQoYuH91J+ze7VRms0MPyLgXg3ym7E2JSV7UNYpjPhmFcZx3gwIsb
	 vQQrE321FSfJHWw//ovmW/y59c7lGIbouA6udc/zSeI8iECWxBF/PwjDSxSap7p0oY
	 DKaMNQyWw//yVt9TDrjZBOVXh5e2vlS9dAj9WleZ7GyJyc9pJbtnXSwwjEDUMXoOPX
	 T8dQ85JpRgagCccCpODQXwIsgffSuizp8eVPKAqi6f9OmiTgmURfoKTIxfaPUM8YDN
	 fUoz85kVKzofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3822C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883796279.30575.3681539620158054347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8caaca38e88cf9f4d8db41be778973143507d5e72d05a84bcd5b33fadd9409e
Date: Wed, 19 Jun 2024 22:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718837962
