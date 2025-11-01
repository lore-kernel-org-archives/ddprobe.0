Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B37082A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761963594; cv=none; b=PkQvTx4PMKIc6c/DT7K0aGm/IJCydMQhYEBWX9/PJeohyMRoqnY4yvgG3lQvirBM1DpXosetfbF7V5Xb2ZIQf7/ZwucUQVA7xXDYYcZz/ZdDo6Rjdpe7sjCQ9m33HyeyXslNgUnDIU+o115eJSsCYjUyx8Qzzcx0f/+ksOoLo8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761963594; c=relaxed/simple;
	bh=oWGTKHhL3I1MGu6ZFDtih0Hcjmu4O1o9NLajwEiHMtk=;
	h=To:Subject:From:Message-Id:Date; b=jSP2baE+975ASBvfhVxyAq8n0zJY6EpiHtf6QR/EpHFWaax3jtKONh6LvWfdSoE2gIe7xTUljXx2fIRpWo6OZsciyadMKlpRWH+r6Ue8/JlDt/VCLrWILbwJ8y2u8Ak7sQeBh2aBUsgbkEZ7oLa7R5wib/1ML4KBsZAfK2eumVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlha/2dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlha/2dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761963593;
	bh=oWGTKHhL3I1MGu6ZFDtih0Hcjmu4O1o9NLajwEiHMtk=;
	h=To:Subject:From:Date:From;
	b=nlha/2dH8r9zc4NjzCXTeaA9kQKtjgMse0gTJAvJBWuy5l5flNhDkQjifu+51Ukkl
	 Az9K/wUsMiaVJ//HhFHo/3fyKksTpGiKCGcXSLOGELIKDUMzjF/l8ijKQcZWo9Ntfy
	 nxEsc3czhfZyBBUVjNPDR8zC07BCW4m5NLLhGpo5pVz424o9xbjLKxclwW+HCOVObK
	 hpR3CGdRgx7+MAMlFiDn8CO9e8Hohykmow++rTGfSiyMpdl2eyvAMVQNimJNeHsgZ1
	 TuWddtYkLuHnK1n9i5dHi5ibqApST/fhIGQtKPFpD/qmKWW/zacDkzGLLwMKuh0cZi
	 7sy9LfpJigZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97967CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196359359.20953.7695356220831540676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878cde81fc8a2fd208823c3b0ef28ae4492668f1af8bd17fb41f9fcd46abff9b
Date: Sat, 01 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761963593
