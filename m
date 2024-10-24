Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A81F16DC3C
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729793754; cv=none; b=GChdO76IVFKAWVL3IHf61JPwREGWodiP+jj0L+AeHaHVsQw7EXwpni+BTfaKfHYCIbBbJUdv7A0dFA7qzwi3IW/bMLqxPl+dGC488OIz5Wy75dbcZMCDSap0YsaeKe7ZwMc7N+YRypbB5FGZi0gYW1IeSBQ/ijvlEtQSWhvxdh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729793754; c=relaxed/simple;
	bh=tXMjTAfPx4BTP/VJUStKmSgk+NtfCo+oqk1ZNtSSUuE=;
	h=To:Subject:From:Message-Id:Date; b=D01+ZkIKSWHlqbUWIZBLHoX0TMDGIm0vmiw0nWMOLG6S3aU2pzVR/Wg1w1GBZWlElaAA1wNr56/YDxlAkKNaorwZ4tbQvfABHMgLERhohcjOI2kdNfkoL4lYYi1vkdH9R83c+AC35HY4Y4OGWmT0qMGVBAAkbDUPGClxFnk25O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi99wAq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi99wAq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C8EC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729793753;
	bh=tXMjTAfPx4BTP/VJUStKmSgk+NtfCo+oqk1ZNtSSUuE=;
	h=To:Subject:From:Date:From;
	b=Oi99wAq+qAtQpTEl1/btsRJ8Tw0uMBw7iVTwON+MUzjiMxeqY1BdTJcfLxFBn1GKD
	 xAXy/HuocyTH6P+yCXR5lC+Msl2bh2YIUmlHaP5zRAd5CBug+oFLf3dSlKMcPavCU5
	 QDEe4wQ3mSmTnky0fRbjehdCLxaUmlNbSKeSiPoYW2l6lW2Eso06NedlWaCla2YzMw
	 v/9J0h/BKNNrbtbjPXRs2GCCe2kqiyL//vivlZQWmmqbmnrj/pYRGz3AuLKkq/IfPJ
	 CPiOkUo9shgIDDLZBuofZIaW1Um27hmL24eHtG/z9FHmAsvFham0pxiCE+okVbZVZB
	 qHqZpZqe4iJ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC3CE8E6A
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172979375359.15121.18273195184933697304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec0d72960b16ccda0877f14134703a6d38112f927cfd9400c2e85f118baa365
Date: Thu, 24 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729793753
