Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E53E5574
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777370854; cv=none; b=GjMPq6PWB4lU2I7QdAe47K7NTWq8EQ3kR5aQZTDZVIvSSzHEJfvsAOaan4kuYryF3ahP5h6FtTukldP8LelU//t0DLSVYnFWV2uj0W5gu1539aoCDnjBbUd1E/em20hz3YztP5LY5dS/tsv0ekaRJQ2bjEIW4lgol2KuH65kc04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777370854; c=relaxed/simple;
	bh=zGoGW0iMMeBHYpsl2sCkkoZwnSJyyCqrIAqEcYx3H7w=;
	h=To:Subject:From:Message-Id:Date; b=bUxm/7aBnpqT80p4B0EuoIazO7bzRc/qpflKuVetWTJW1ymRqRyEVhuwzntrm5Ozm+wQWex3AjXXejblc+b80iHQ2YZrBO394iYg0DQmVvLKfrkTuYl4JIJIr0G9O8qngZ6VojeExFEH6elmRWD8620ntt+P3fkBolHvt4yaZDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxyldtda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxyldtda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92A1C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777370853;
	bh=zGoGW0iMMeBHYpsl2sCkkoZwnSJyyCqrIAqEcYx3H7w=;
	h=To:Subject:From:Date:From;
	b=mxyldtda2F/MHryMOCHp1IZraO8ll6WwletfgWctD6V8DktpQuRZdlXS+zrJi2+dy
	 aV3hU0eS5kFJ+jCZdVFxnlPV4vn153CKmYGjDwZNJxYHgVrrbYrH2JJbnwhV/sF9lD
	 HPyXIl/JHM9rwq85UpUGKGGF52JNZ2AavS1L+oCO6wmbu7zVPTsKxKb2+3Uhm2NqxE
	 KTEvEAKRgZOaPXdRM0t73Ny2RpPB48PYTDCePICNEH4ljLZjBA3VslP+3UhipJKik1
	 0aAeQttgbie81E6yqz4X3+0FJanGIgG907WKbRoygDMMtUJ3+Hqy2SK+DHdEv8tod2
	 AKRrKKPsOayvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CDFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737085368.11459.3415536910451781212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811e3851bbc3f11535d28e4e44c001141edabb9c1dbc0aa9d55584375531a10d
Date: Tue, 28 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777370853
