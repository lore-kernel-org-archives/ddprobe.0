Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2078F2B
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749933594; cv=none; b=nOFGjozttlzqRm++Z1bKvfVSEz1kBGEFbCeToPKO74S2kX3iyUGcajN1OcWvRAs7yJcrZL5P/FbjWmLkPg9ZjoCoSOZY9hQ5WmK/jkx9MDeK4sba2NDo4mET/MCfQpbsWMUPLGABA55lWUgdEpECXmWG2jIIbkRrVYebPIVk1lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749933594; c=relaxed/simple;
	bh=V4ITztco1OBYkqd2IrWpjkNXG1moSW3OYTOolAIlH2U=;
	h=To:Subject:From:Message-Id:Date; b=MXbo7JAL93iPiNCgBvCK4DlwlgxFyBFJutk0r5sTDockan5MlX4ikYZbzYOLjIZInHoY2nCG5pxwGUxuLJsj0MpSpOfjimyLOO3/12NT85PS25RiLwS8w43vkw7Ivw1DO2ZWtKgEsIsCl1oklBR6qfa+bGxxAZ10jes0KRMSFm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV20+2Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV20+2Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749933593;
	bh=V4ITztco1OBYkqd2IrWpjkNXG1moSW3OYTOolAIlH2U=;
	h=To:Subject:From:Date:From;
	b=PV20+2XncPYo9CJJsbAzuYymNO2C0hcki7+yhc7Y/M+rDVhbWldnKcvULbpTdOd5J
	 YRGYIsRw9psxLzjjhC++X92ncRfaYpP5czbfi5jpsSufE+mPbXHICYOlg5S2/Sf0Rz
	 1C9xa1srXJIWO/eyN+tmrGge9y8anM+OqRjsEcgrtPgr2WSXhjRumBC+WWbgp1jtIO
	 9EwKoEf4uJFWYpvil2uiQWoY9Jx//gX9DkLKPPvVy1RKfKNtpMLepyhQrR/7EmkkJb
	 pCB8etGgq7gDjwtBxgv7LQBmctmcVLLLnliRpHi5NHLaTfmAadNG+Bb4j2iKYbAXFF
	 14AepmAzKR38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E9C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993359358.30806.10116412429704192230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e615680b07b19c65d88f9450e053e885bee382b397be5324d6f50c3c63765fe
Date: Sat, 14 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749933593
