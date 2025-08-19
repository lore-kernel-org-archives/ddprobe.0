Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CBA22FE02
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755595794; cv=none; b=dchcbROOn/TK/3HnVis3DLaCd8SBNIkj+R5PG9b8p6IQtyx6FvTOlI2woEf0M+cEHL9fSyPhAK/AjryDNtbzapTw4bx5RbWrrgvj1D2jezS24mePBBAthYOISMSAKqQLAe2FDhrV+58EfUoGjz6gp6YNzHBLBaJpFCe4zN7+Yjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755595794; c=relaxed/simple;
	bh=Uw7jKvZEIL3vazQeSAapj+uTndB3JcODVSdYbWke+rw=;
	h=To:Subject:From:Message-Id:Date; b=Cf7tvBKNTH+nqco7TnVeOsB73eibGl3E5FBz13e4qbODrsUV6NcK8iUyw2QE3SAgxFiRy/VBGHRf2XekE45VjnC5KDJahA2nM0nwyi6LA42Og/vFvJW6yJsD3lW+t8Kr0Kd9VYGJGuLUsETePiNUFmWA1mcxBxigQHpx8XFTPIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hgmmik/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hgmmik/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755595793;
	bh=Uw7jKvZEIL3vazQeSAapj+uTndB3JcODVSdYbWke+rw=;
	h=To:Subject:From:Date:From;
	b=Hgmmik/Ztqkb6xa6L2pnPXakwmCZMXDAreM4Py6OqXtTVJW4J81LwWr3Ifuw68ztq
	 crHKysofQWbmzhZIF50LAwDAD2lJy8RoXYys3Ei/m8xKhsUU0aWtZltU4UNtD/64Ep
	 wLrjwNl66P0gQJb9eB3HpCe8xN4P9cfkmYeOqLDW+jKRfyaeB5yEDYrwYAldp82zsj
	 Jsr6CMgUmqa5tiPvT7dVEeRcSmhWnBb3UXrsYxWzG0gVztvHNL4RuD50RYHa5xMLpl
	 wRa9FigfelFabCgTFyKmG8WLcHI/dvf6Hgp35CWY9nYZ+HfSDxc2knCEK+IJ9oMF7t
	 d859LLJ4RSTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F413CA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559579357.2457.6028319935103298425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c33d1ef4e648a88362b9e2bbdb4578b84feaeb12da0cecac54b113f3b5d9a4
Date: Tue, 19 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755595793
