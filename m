Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393AA21FF5F
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769394; cv=none; b=u0p+Yh4AGILkIJrhcMqWVlxbkAwsx6qp7ij9FfYDfYTteXcXSTELtGIXCAFejOHWr36QBMPjsHnw/N7dVgEGzO27+FQ+fgMLRHrCkBR6iAv2S8K7acbibrkSEGFO7EKLKkvmehP1QAEczkQgLyawq7tarNMvE/R6mhMzMj4waNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769394; c=relaxed/simple;
	bh=VOtw7t7UoDtnEMYr2Yq225GOQEUihN8lShspARmwJPM=;
	h=To:Subject:From:Message-Id:Date; b=Y3lLMtyX0GIBR9me+mxNMBmkYEMU93T4cf91dEgGZurUJ7ZsIv5zL43uyCU6IoqWtYEppK8FM5u+yeaWPHmNAAbI/K0ve+G4hOmbInAjYqMP1K4CAX4KdjTudyscWDt3pdZi6RCA4bd7Zu9U4PI7CXhQy2zZHTAaKyiYIlTiNTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaM/zRQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaM/zRQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEAC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759769393;
	bh=VOtw7t7UoDtnEMYr2Yq225GOQEUihN8lShspARmwJPM=;
	h=To:Subject:From:Date:From;
	b=YaM/zRQ+G+CJrLsqjCFywe+qKGzY4oYPPwUijlG1y5p2trIDwGKr2Yq7blWdtKIUA
	 pIaXpPBU0Xzz5yjtY4C/i1c5+BulalSudPGp/0YNi7Psb2rim5RjAyIXiXwfghyLTR
	 87TSGtxqXyxBnuCGpjkz5yy8sEdwVq/k0eUd6y3X3ZaERPUlQzS73ABOiJevwdHLL6
	 mrHxKlnufd9ukEd/BXZK1gZaNZm4N8g7Mnnq/cMR6j8q7WxDATg7b6OZq6rhFl1+7z
	 kvxKqXpn7jeYJgUtWUZbyAEKsP5h5vyG1fYxuBfOj6/YOuzKKfN0/5H/61avI5lIfj
	 nTLPP5FRo/zJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE4CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976939358.29786.14096968006385350304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2aaec995078528a43f24df26e809bbe9577203853f0293b6dc7f86db1bf5cd0
Date: Mon, 06 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759769393
