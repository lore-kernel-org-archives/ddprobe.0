Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5187C23A0
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715047943; cv=none; b=A4DwTH7ddPKDX1brNDGynjfsWkP85rSIWs8tAhoD2VEMxM8vrhWrET1yFpFdQTFPuU0cUUIyjiPVYjpT8xSZ1alabxhWMT3uSr4N+3PagmiSf/E3D+sNANsg2etb/coH6PwlN3NTaaP+uwZuuppOcrjtCqzuqAv9LjuRoHZDPWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715047943; c=relaxed/simple;
	bh=tUx1nN8o7/bmy0hxwIaBBL06hX5cdsDBAEM1dUOHk/4=;
	h=To:Subject:From:Message-Id:Date; b=J7Fcumw7sNPlZqNpFTXtfwonXUJjb0cA155D8g0MpSyx3hT+2oAj5qWVyuvHdkS4UsBGfizPfKLJsTd6/zzCEryKOcFdCJRGIIo7hovUD89XhErpY0ll2dxdU06rb4VCxHQ1nUer0xAzBdO+1MY553wDUIcJ1u8JFXaVAz/1gRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWp1U96u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWp1U96u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA53CC116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715047942;
	bh=tUx1nN8o7/bmy0hxwIaBBL06hX5cdsDBAEM1dUOHk/4=;
	h=To:Subject:From:Date:From;
	b=fWp1U96uLhI+JxFD/WKIB4syVd4dVR7W7SuMi9YxEt1m/oNRXMbKVYP3fKzib2NIu
	 nh7u34q6s+szn+dfxf93KSV9pwxvCe14GRsDM+g/x4gredncQj322Ih/ZnV9GrVt+s
	 32c9TCn8XMxA02//umKOSG9NUrtaLC7USY+xt2enXIdqhiOnQFVzI6n/mpvma7sbDu
	 doMdiPAFXY4UjhjpuSZKTUt66H6w3ag7Iv2NQ3DgOKslgq7iKZzDS6XfC0HyU9a1ft
	 5QIQitvpmOG1iiruB88anCtpsfhewFycb4UfodnbCsuncin5pQbt7VtNxbJnSCjkXf
	 /rzMwwk+T0ZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5687C25B5C
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504794279.28421.4115674435299147041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0d777449e500e81147fdfafbddd0a1e55860682907e74b54993f85fa8d510b
Date: Tue, 07 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715047942
