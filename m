Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2360478F47
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741700334; cv=none; b=XavSJuEbppYMjSOdQFKePYA8kT2v0BfiRWRx5aQC94B5hUcimeRF4Dvc+VvqlIzIBhzZNJlxD/aEzQ5nnbYF1ImrpngbpajUbBp3Qq0gNepkJ+CfTDGr3D0aKgJHTRr93czAAOzbTVBHzJT65VwMFaMSc+OUnztuKoRP4zx/bnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741700334; c=relaxed/simple;
	bh=WQ3VmAzf1hL4erL3CKGsLeykcqWI70754g1Y0Fkqzpk=;
	h=To:Subject:From:Message-Id:Date; b=oG0O/DNxjq+WBSfczYrmV/FGQ3nuXIf5yjxCcItkJ4fit+g7n5cJxTBuxo+Igfcla2cwm2AZ1UbJBhRULT3OArwLSQDjH5VzwuApwg8GD6QEfFct/f0WGMedtxN2HT6FPNtOU8ejcvmkdFLyVIOz9L2dpLyD7aOZx+jcQmsMoDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmXMTfxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmXMTfxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5125C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741700333;
	bh=WQ3VmAzf1hL4erL3CKGsLeykcqWI70754g1Y0Fkqzpk=;
	h=To:Subject:From:Date:From;
	b=ZmXMTfxOPG0NABOM+06LXJkjXFiveD/LkrcHwmHu23V2BzgGMecdswXIFy3LA0iKm
	 N19rDPI/O4hj6+o6fvHntXruRMDETVnuo4t42NeZNttfGmrFAADRIgzfSyHD7xUcvM
	 l8vuwi8UnM3O9zbdaIY1XEr+y7NEiLAw6wjkj3uR8JoJAPt87X1e4uu6LQ7j5hGD/y
	 NMcayTUPMS4Zb3xoPL8U8vW6Gxn7G3TYFrqunTwjbwjEndgu94q/9jFI674AaxzHCK
	 fGL3V2QU6ShbeW+1oLYa0A7ubexPXC+YzcAtHQZBy2Lof2nfF3UiqBlOmp+3MHxZcy
	 /4jG/ALCvjUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9DBC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170033362.22955.10592274210870197659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f798ae1bbe19e77c76be0169e697b7aab0061d976b1167edb97d649043bc6cde
Date: Tue, 11 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741700333
