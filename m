Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5494043175
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791031234; cv=none; b=Q8fnkLVXv6H60xkM36a2F5E3v9VtUrBlskNUFFwd5LKewQw3zHk2WTfHh3CIYJT4I+bxheCuBkPWleOR8S323y1e9P9ZTQVN0h8N9ePjQUyap5QlGVCfdaE6ufbMlHpRttUMJY3X6O5QhLMlXT5FsNWLtY+KeU5iDQc5J0rbHG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791031234; c=relaxed/simple;
	bh=NbDtDKOqGHZha8KHtzrbdFEHWCscYW+c3a57/eYd9fo=;
	h=To:Subject:From:Message-Id:Date; b=skS0jEfMesEiTdheQH1w+S6HGYCRkYiOTlFvXBSA21moDVK6OcxRuCiem0LczpDEk9+Cx/OC47DIAkAVfk3+1jC3s2V6bAKcI+WH/OIi9Pq9MRbc/ci0tApwRIg/qe4XQo25mzZ4OxyF36HB/ahRaHjPWzo1i6KVn76ERau5JPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5tVRGFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5tVRGFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3277C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791031233;
	bh=NbDtDKOqGHZha8KHtzrbdFEHWCscYW+c3a57/eYd9fo=;
	h=To:Subject:From:Date:From;
	b=V5tVRGFehVzWeQXcZcjvj6OwbFFm1HxF+stIX3xZfDrfmNOae/T71awEDde2Qfhg8
	 9GlRwd+DhR8raLDI5xY/UssSlZooV7hPBAqlTMdfHIeswJVVU/AGGpjWL5AxK+Y7e7
	 2d9wyKyT6HdkWUolHAoS4EOyknmXuk43wCjRzzXVAMtkKShOX+GYW+/UHawi56viAl
	 gd4Oat0sPzOtQOHOGGFkST+2UVgRbYUu1gc/E/jBvlcBBFXKlbSfExoO5n9Oq0FKqQ
	 /xYcH1TjAfb2UbEHHp1/C6qGcQMelo7e8HRJJFn6BNfNfBdFSBCcww3UDQ43b63AL6
	 JIWBgPtz7DE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF95FCA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103123368.19729.4865840175942619132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0429c0858014d7d545009985b21973701c4b26008912cb102dae587c21f536
Date: Sat, 03 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791031233
