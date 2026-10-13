Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F71138DC61
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791879634; cv=none; b=OWCwsmRu5205Dn+jS5lhA/o8Igkrg3x6behvXrr72V12m8CQ+FJC4xr54TchIcu/SDL13oXiUrrPEcJd3iVfL2og71wkfirzw1OhQv2Q2TYgIRuwCk0W+tQBWUSizOjlPr9ifHI60gu6sJn3X7K8mfggMTbvs2IvpvpIajbZ4po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791879634; c=relaxed/simple;
	bh=bZ3dy2j4aULPEz9zivbq6z9FsmoDjC4KZtcc0NVA1ww=;
	h=To:Subject:From:Message-Id:Date; b=TxoYFWPJvOqGDHYkDPUn/+9Pl8uz3CxDZ9fDj0Mxfeck3rlSeX2jAxl3BfUQfyvxxWvOwClIKPHhIY+uYn1NWayznPFxqiV4Avf+OqopPGhF3G0GkfCcyPTJwEFlt414iBdy+9HUV+9TeyeuTz6yrs0GvsslES7PqsZjADV7oyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcN0xwxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcN0xwxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B04C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791879633;
	bh=bZ3dy2j4aULPEz9zivbq6z9FsmoDjC4KZtcc0NVA1ww=;
	h=To:Subject:From:Date:From;
	b=NcN0xwxXejRk9oL7L8e1lfyD6iC9SZNN16uCObI/we4oSpm0se8F+pwgkzxzkHXgW
	 PmYf5qknwxam45XTkWR1SHOG4V3PMRyNzNujvP7rp6jYox3yIPmd9vJDRJVwBh8MRo
	 9GNATZ5fpP0zCTn1Nv56uoGasmxO0ZCf0d3im/I3G2guUEo5JGl7UKMnBOrCK2LXXT
	 7DJIxlWiKrB4SC6ndAxiDb+G+4nt9NsViMvcl2yz2rY9pkDgp2mYR2cjm+h3U99Lxa
	 Gl8HTtyz6ID9q0TYyvTxDZBibWVeSWvk2v/WnyIlraM5ObIqheVp7YZ0BqTjr4GlO7
	 OrlcGcFD2laVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B67CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187963372.13529.13097892185977443541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70803f7f8e374edac243c83c7a3ba5f32a349451ece925633282a5930a028a07
Date: Tue, 13 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791879633
