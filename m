Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCB122157B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791444034; cv=none; b=nfmCBjDpJ6NqtQvOdT0HXgjELfrmZwfXIPH7gAI1XNx5/U4U9eq21RlQabVjLWXzspEtUUoPnomsyjOHy08mWNo8Fxhs0E1jlFy6uMT+SOaO9zbNKSkKEy9VXBH6nXi8fZLTdubVAYYm5+/2698Oobd84dfRihjjx8aQ/bLzNDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791444034; c=relaxed/simple;
	bh=AK9tUuugN5+ienNLrXRdkNJvoFAFD7J4jZgqo2wejfM=;
	h=To:Subject:From:Message-Id:Date; b=jZHjD6DvBKmSzD0mEiVcMRui049IVwsynAoLHBx5B8Zs4Lt05gAroiS5L+c/6/uKsbDkicGNt3V7HSbrtSCBcyXtKLOuzwredlJ5L5R20gpIDxKaMPPscQ5tiz+gu8ITdUEKSecp+BUGySn6Ab4SW7BWLwktHiN+ycbofnXmqRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGaRRXj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGaRRXj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD09C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791444033;
	bh=AK9tUuugN5+ienNLrXRdkNJvoFAFD7J4jZgqo2wejfM=;
	h=To:Subject:From:Date:From;
	b=BGaRRXj8wJixCzn7xJxzbtUlVNmv71jsJHSVaF2kv898LWjTPeSgGCj5OjCC8oCJw
	 SFt7fVJNXNZMsC37MVD8EhDS3gN+TESavO+a8lWbCNY/AuRArTUCMQAQfCEp0hz/AV
	 IXkCDWqAfdUp0exhiselIACm66fvGlcqjbxbOMnERmDfN8AP4anZ7f0i2XrxIEz3mb
	 Jb+LxxabqrzUtLyzJ9BawXC+asz2E3I/k0aMvesE7fD2Z7gkXDTJid1ALT/aGcEI6g
	 AW/zNx5esyEtaA5/kI0WybffBwMcoYnweTFVmSvEqN/xnO2aICKA1iLNUWgISLZBco
	 cM8pu5GwfZOpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D84CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144403368.14048.9089499152307398848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6e6e5d2de548cd2df07dc0ea0ad84659e18b68e7ae52edcd8dc1816eb324aa
Date: Thu, 08 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791444033
