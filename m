Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3580E2690D5
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779274234; cv=none; b=nS0YhJ7wYjA8+SVBLvUZ+NvKjalNsYP0Jen4gYri5/v2VHK7ZmYX2I0pnOoHwG1ft3TdQ65QAjtA04uRg+cW/xTfKl3qeg+MuqVW1orQmyyZKw3Vb7b98r1A24kuWRyWoWOD2yKCxB67kQIb5kw9UBaqyRlg+8ucuQyB8w06NJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779274234; c=relaxed/simple;
	bh=cjbXFpmKmOsPzsQIhGS2hJiIrfDWhoB4gWyrjiNisko=;
	h=To:Subject:From:Message-Id:Date; b=UWX2hcq1aA73I5vRrCkHBV+zxas8fLJ1QkCpD4jl4Cx4ec9DNQszrPjrI08zd93O3225iSyZxrdC4zQOAXsdze3DmBVujBDT8h2aTLzUD0zUOesOwDUS9l+Izoc4zgVRc8g9CvcwKNAliXXaJd1MBtKdPYn+UMPhz1q3ticr6ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiWxQNVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiWxQNVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABA9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779274233;
	bh=cjbXFpmKmOsPzsQIhGS2hJiIrfDWhoB4gWyrjiNisko=;
	h=To:Subject:From:Date:From;
	b=EiWxQNVH0L+pLOWzpBH+Xk4sYJLkFVvxJxJd55R7cqKItrFXqXlus1Opa/5UX9gqT
	 yDfD/K92NgGLtgyi4OsdBECQQcf0sTeOUeNYwmA+znPyDZBnxqdB1f+dz3IdPrxoBT
	 6WZiwFpPFdNX9qp3W2WyokSLkq5J5+drjI9VYsDBzweLoSCFvzYOtkcVberTYAhUYN
	 sZtlMCUYY/F+LBxzBxTUPu83Z7uegJdVQ0VarfhMew4U6zovENx5blN2PWW+0pLej5
	 tukty5VuJW9gLQESTZIkaE9P2BrHAWQQIMLr+li83/x77B375THJa+zdevGkRO+1b2
	 9WN2QqlHWk2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0710CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927423371.14954.141231111550410534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4f5156d2609b6c44f48d85504a440f533eb4adc1c8f5c0ff8b5a319f114803
Date: Wed, 20 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779274233
