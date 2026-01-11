Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE11862
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768106034; cv=none; b=mFGNngeVFAHDYdKhGVa8wsv+o3gTPg4SMXYTEXutL3kfOwCvOveInqsNKTzq9bEZvjIAnK3X5W3cysaHAnCfKgDBrvNcRIqr4D03xQosoQaPzVmk5VmEN0Y21kU4BQKlg6P9bng2meNdgiltkyKkNcoU06qiLeRRPa3BV44i9Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768106034; c=relaxed/simple;
	bh=PWiksHsLqkr22Y1uvacLy3HOfFZnpbLFB0osf+G8itA=;
	h=To:Subject:From:Message-Id:Date; b=lIzwa5nURMU32jjw1sHxrAvfZdM6dNnQWLaLFWEXToaSsi49p4q5KGmJHOp22nKRLdV8KeqGFPBOwf4jx5cNa4kHQol6GKNkqESxZdNdbSp94aL6Omp7i9j7sVYBmJWN/eFK96XSq5VBPOlTFQT0jAQ6zAF3iTX9BankxemMC+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A79zvTtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A79zvTtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768106033;
	bh=PWiksHsLqkr22Y1uvacLy3HOfFZnpbLFB0osf+G8itA=;
	h=To:Subject:From:Date:From;
	b=A79zvTtnJY7VLEnRPIciGU+MI083uOtbAMPJvEb0m9rbn4btM3SqDtaUW/T4Ikly4
	 u4X853oMyCqugkhbYZr/EVTwNI0tuNm5neuejkJNlW1TRo2YwXwaJ3FHt6MhID2jOm
	 SMfwHxnVArFN/mmGOCpmm1meXafcovHD7k38N2+YUfxb2hqV92K4jMemhHlutoJfb7
	 Y8ByQEu0A8xJYqMgelnWChG2UC0UrLHP388G5ERLVUYg5Vtmr7oZ+VW2qXGDCrrw15
	 NxVNGMZfVTrGWOmtrY5WZNnUU2jFEuAjDpt2VwiKN6Tsz0v3g15+6ivDzlt3wW1JBw
	 4AnyAC+tx8Nkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A68D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810603357.17565.10096638770411636853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d44ee1a0222ce3c9c160623616ea53f2754f102f3c390cc787986f62665474
Date: Sun, 11 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768106033
