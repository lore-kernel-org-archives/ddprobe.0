Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6642AB7
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764626574; cv=none; b=OYv3bvaoWO/0NOXknCer1KyOhdU8LkKpIhYLX+5/3VYFzkvnQazKQN8xhsuBLAHoDe0ekYXe/sIvYzkiH6andm/CaIf7fqSjtIy7Nah2hJLX3IM7oitO2OcrOUzumtgAjjX013ZQ1l+fhL5077eh9sLAzTfJdLYy98UlXcq27m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764626574; c=relaxed/simple;
	bh=J3reivd54GT9PvIAqJHXlVv096HQUGRYE0bJm5kqvbU=;
	h=To:Subject:From:Message-Id:Date; b=PIb7fvxnM/EC2OgaHipoUvSqeVhrEo1nAbQE8F6cwI7JOG4Qp1Qf9GkNTMlUYU4gohtRgBBYotHnaDI5d4qQTatdoa3j/FFxyl3zDueU4ajuHr0ANnHWpPg9C3DKh5JvnHS/PqrGCpPMaZzyKzGpWeUPkaZVJbvG8N1NEaO49aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0Nw6HvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0Nw6HvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF07BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764626573;
	bh=J3reivd54GT9PvIAqJHXlVv096HQUGRYE0bJm5kqvbU=;
	h=To:Subject:From:Date:From;
	b=R0Nw6HvBlEUI/BWXcgzQthrhjyZU5G5cWLAPMxBbplLJ0AafQTWb2w8fK08dzVs7W
	 Ly/4JaWm81NuWJp6lJab8qaLidUf25doLCPOQ3uuX2VPUcwgGhm02AL5sz4swINrrX
	 iXLRisTKAADkQ0HD8ZTA3KeFfZAIYQlXhz01ezCH26AsnjfwC94MpmGccnTOszbiw6
	 8LVufCsPoDbH9juVDTGC+grjVKERSP1sMVv+U/K3KEXZexKdCarN8MPz1xj8uSMtI8
	 wTipdr67lmc8JtgCgUVsNKc+08piei9ZDV3kfi4AaU7KnIT6eWXcghcH0kVWe+XPes
	 Dzk+ZKuGjAkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C25D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462657359.16081.12619829623517946653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c6dd8c84e9fa7285b42cfd12c5d152e060cb465c3446b2e8b11ce3a134f3cd
Date: Mon, 01 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764626573
