Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC0D13C908
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791505834; cv=none; b=mGmCcIjebdz90y2b9qfTRFFXDDQ3MsRIzoYZytzaGSRj7/I3eQXAua5Kz1ENuoUaLOLHyNH3EOrz9HLwaukZAh1d99av2QVPDz8ZeYI2PI0VcG6jsOIlUMIw49Q4Hv5TZw4jlV8z8PE7c0C/NfHgzppHSMo9lfYuShqEcNL6H5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791505834; c=relaxed/simple;
	bh=lSynUCEgdxItacaiENzTcl4UCgABYPdnFxzVDaJSMoU=;
	h=To:Subject:From:Message-Id:Date; b=JRKXKH9qB4JNhGTnppArI/VUojg8mrf8RmSPUj4QPxi7uWZnKicI28aoze0sb4+tleeKOi8V+78NGs4TVo5Z3DLx3Q0wo0eN4pz7o2EG12ZDZbFWZ9Sry/KcQxHZmQJIfUqze+/tQvAH8ZyJecQsnpmnG+DBWaS5E06ylwJw//Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY61jApm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY61jApm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9EEC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791505833;
	bh=lSynUCEgdxItacaiENzTcl4UCgABYPdnFxzVDaJSMoU=;
	h=To:Subject:From:Date:From;
	b=tY61jApm4pj2iSeQ2kf9KtvpLoFzAi0bpK8xPh+WfcNxOe4OOieqy2hRBaTKkwPM/
	 ewm0gZrQ7eG1Bcj5epQ0bJjn1TFxkiNsjZJMmuEBwGhX6tOg3flKipR+dI0vORnKlF
	 WlU5tWdunMPMw9xA8HxPQl2gc1x3szpgMIDQX5Qil+YQIEM9kYidSWizn+lIQilgnz
	 P+WsOXqHoUSd0ACcZwV3rSwFPzV+Oy6/YUgqTG6jXokBl0NHLtXcejgMh5miGsedQD
	 omwWWOtocguvu22WvN3MEHrPDqepM2PNmFDwCQbt4Hl8sLmlEZ3S7n+gcIepVZusqC
	 WpY74D60g3rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA7CA6017
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150583368.25223.14927065306916249647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df13d7ecf8fbe02d166711f953362a2486feedf6720baac8df54e675978ffe6
Date: Fri, 09 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791505833
