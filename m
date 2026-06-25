Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F553655C0
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782348454; cv=none; b=uzo5Oj6q8wUdnYueNAminMxoo4W7SzH3yWt3bWdGTjlWaAm7nO662ddIyBjv9T88CQTVakB4YlTQN2oRffH+I3KZ853wwXcGNeWZI9sHHYmJ9yh0ZXjH5HjyCoDMgU4IQcQ+X0bYvZNkcn6eQM/gM2EZ/fjs3/xYs5+Qah9gwR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782348454; c=relaxed/simple;
	bh=BnGCSCZ22HbciZikHrcS8qpa9bqctkp/o0RXl2v5mnU=;
	h=To:Subject:From:Message-Id:Date; b=qwvWmc5NbYNVhGjm9Ww+14rEjPjsoplPMjcIMzONF9oCcbdD9Qf1ywqup+jDSoz/M4Mp7FvhoHCtqcEoYGrI6gb3hzHNna5Fus0i8pwG8tqr+9SmhybFq3J7hvz47E300VTQEycIH1eFvF+iHARfrYqmdS2XM8uFgD0EF1TroNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJWilztf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJWilztf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D41C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782348453;
	bh=BnGCSCZ22HbciZikHrcS8qpa9bqctkp/o0RXl2v5mnU=;
	h=To:Subject:From:Date:From;
	b=UJWilztfL2909NVJLPJI5GYKkZ1oAVCeH290R3vAeiE1Z+jeJ2PhZCBYNk0TGX5OG
	 1QimNwhiSH+pWH7kgjAx6YJbiMPLYua/A47QQsNz0zx/y1o+63wIxANCFWhN1Ux/Qi
	 psoo3SjKuiXaQvViBR0O9QIk+RlQbzvHMFD/S1gPEEYza42dt+Y5EkqREimSBYN3Bs
	 fhA0Pvjyp1oS7l2eLOH1vrLFY/0uDAQAc0Looo3YqzLnb1Fqt7hBj//DRJYxXJjYvt
	 7D3IRv/jDHc8GV0Gf0bugG+sWdyDcVtz18rmE6ghE1eZeBS0dowbP2+XZcwbMZFxrY
	 C5VtCVjENgl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD233CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234845368.14735.17231406872951634964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bca1148b68224d05dfc502898a5cd538c7bd5c82119f5e65c4e2f6396127246
Date: Thu, 25 Jun 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782348453
