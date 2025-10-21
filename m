Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E36B1B4F0A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761008394; cv=none; b=I3Se78GB04T6KHLrAtrSDVdn+UAVaiIGOUtaRTdMf6foiXf3PtvewFPQkMREy4MFO9yHfplotRJXJrdzKkRq6OH9UiUPQ8/KCYluqB2/kZMOuMzsf5DWIh/F6f5dwIlP3LszbpzAzSZllX3GduW/7TIAJddLXUCt+2tUR9B+G40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761008394; c=relaxed/simple;
	bh=4jwh5zhPDyJbvIaw2aDzDMo5+4dN5lbOtJty3rvEm1U=;
	h=To:Subject:From:Message-Id:Date; b=VL6UZw1LWCnChVnc1CKTbPx3Ai+RY0r3qjkwPu5210278eEK1jtHmeYcOa8yUzZp+qeQdMLE1WXOZgzFYHU/5NDHu8wkbUZEyII07SaGC4ZdWElqSaQtY0ebrbGBHXV+HERUuIssFwZwfliFlPqzRchM5lsKYrHX/9Lza/+JGdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRi2kHMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRi2kHMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0660C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761008393;
	bh=4jwh5zhPDyJbvIaw2aDzDMo5+4dN5lbOtJty3rvEm1U=;
	h=To:Subject:From:Date:From;
	b=JRi2kHMnbWC6c5Ot++qOfhIiifWL547LlXNyytWWHVmHh9CcUb4A3Vd0H9KilIkc1
	 OBq1iVLr5roVpFRlY+yTZEk/l8xQJbPfHvEa5Q0ZbP3k6qKF2sGQide/0kTW1hV+Y9
	 WkQ6xfL3GzwpkOdQoRXzGPKhPspicNZ2KPdGcOFdRWmXhk3uyw6nvDSfySvUBs/mto
	 hgB2O/bcaQMvxShsyknTmb6eInhsQ7yNlw6YMXadUGgX7uF5Vml8nwa71xXSZNeVGA
	 Vqjxm1hPdHQQdGx6ArMESjOe6Y/+p6TO+DXUmqr5p2oCBeaVtHkflQrZScpM0sNdtg
	 T9jJWg+nFDY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966FFCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100839359.6973.10837892950428421851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f836791087c340703a49a120e61f0ab364b9a474919363ca0ba96f53aff6372
Date: Tue, 21 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761008393
