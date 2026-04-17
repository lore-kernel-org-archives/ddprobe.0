Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5D4282F2C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776464854; cv=none; b=DwgTMoovlHYimfEgL8sJDaOxs56kzd9JdkwAxoDL32r1j2mhK9cvLblL20+lHdWyHacirien3n/sAu9njV9Cmbx4Q7Qab1z3IeIdjaq0wpr6sZO/2kfjZbYqYrqF6pLlmmz4KB3vyOlXLeWWdW9Y0dGua7h4bFnEPat8cEW9n9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776464854; c=relaxed/simple;
	bh=qy0zxv/yfazGsWmCyL7lkHTqiRA8uiT1gOnNH0OjW9E=;
	h=To:Subject:From:Message-Id:Date; b=YB3/9eLXJ2PU89tNtK9eqzJXPDuu4HIpPMRd5IYpb26/IJdcxmMtSqNpDj6TXDsmOJv90/p3W7HvhCV4td92mbscVs4NEkvq/qwx+QuSx8L9aYB1bhIR5SgTBeDZPW864PYlKTo/I/R9pLTEwUWvw5z4Ma75qJIx6169djE08FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOegnfyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOegnfyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7647C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776464853;
	bh=qy0zxv/yfazGsWmCyL7lkHTqiRA8uiT1gOnNH0OjW9E=;
	h=To:Subject:From:Date:From;
	b=rOegnfyjn9SutyD4teJUbpkiGSyT0qpjwJ/C+ZbJKSxcTtiNadhzwpV2W996n1cbI
	 mv6zHQAtygWAkt21i+60PG3J/V0oGPWv/R4fU8j45y3ztCUkrmmgeuUA2682ArVQni
	 AjTjBybmZd+sLntCXkcwvWRnCSYkUmUeOu3t4ETgiBxcXp346bO8pvNjUvWMwQ46ox
	 8jnkot6pmE5WOEGEmE6pK1t2dLA/9Mzz37bqA6CRNgno9lla8xzVRttuApQEPSdn3b
	 4stS1bRAQAtOOPu/fyIP7IF3P7JvDVCtJs/TXMiqBNw0a4TSploPmAQ4UthLBbx3j+
	 WtqKTWy6oYT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F3F99C6B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646485368.7943.2151844298023536251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6130904c642a8236df6e6894c450c6fd1e33b618919b702eade108a328480dd3
Date: Fri, 17 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776464853
