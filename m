Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED246F494
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790798434; cv=none; b=g8KVTFKstc91C7sksThFVej6+viRG7Q9Jatv2wkWLQUoZiHP2vleH2KeCI/KemSvAEClT5GWCAYp7DZGxjSyove+40cn4MCjUwBpJTx42AVM2qwmlK9Ay9Kuaeq+eyaFLv4HDnqt2xvCoVm2js1/q0YGul9IZxUXvPCBJvGuFhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790798434; c=relaxed/simple;
	bh=wqco52i0H4vysCf6V15Auqz89B55JWNnJ7H/5j8F1p4=;
	h=To:Subject:From:Message-Id:Date; b=sAIAkdZDqYKoVRO22wvgHrkSap6e8TW0u4oVuqYuMzOL+XurqS5wLPz+GhhdkmtkfEy+F98tUSEORwRMSoU+RwMEBKVEzapgDmrcDU8Uup3dTruJT5gJ/cRXlfE0uXJuNcrWY//VQ6Yqg4XJtyAtCv2+s9+wXzW9WcgWuJOI02k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxdFGZJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxdFGZJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB306C4AF14
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790798433;
	bh=wqco52i0H4vysCf6V15Auqz89B55JWNnJ7H/5j8F1p4=;
	h=To:Subject:From:Date:From;
	b=NxdFGZJsX/Z1giYeNlZts0PORHaz88jAUXWWyH0m4qSrUq6+QpPIeu4KECuxYWGtm
	 8duBtQmBYOk7nouAVVmzGDVgU9SHGDRGiYKFQIYZulZlqCys4yckut54el1v/u+1Wf
	 uqFPxrwm4uLyy50y4/2xcBUNXjbD5jc8hz0LE0LRBKGhlLoNGJTY2gcp5hswC8ZjPV
	 uhMitnv+lOzn1lglRZkpjz58Ii20reZlw5A4GrHRySgSEOrhOd1vUUHRM0at5fFFeo
	 8+dsxUbr3/K8zY2VuYnmwEQovvMb4/lWkaS8vkljDjIhf2s59PXVO11tWDg7NmNm3W
	 0Knh/qInzSpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF8ECA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079843369.12685.5760975208432922765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b67ef80af44c38fafc06c7bc1c7130099994085b3e098b0c47e98b418f0a525
Date: Wed, 30 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790798433
