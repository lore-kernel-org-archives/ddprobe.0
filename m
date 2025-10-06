Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556235966
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745994; cv=none; b=i1jsR/CI5RAP96LhMDvjPLYS56GJwUL6KXrzPcsSvUNmFaZ48haaqpQXiVfKNaSnfkuykoAlhLlOfl97xVbSLn0ULbgeq0W+GEd+MeJOyRXSWqCroskyfI9Oll7JZfz5cvFF7ki7WJ/AuZ8Tdce3hKSaZRrN0GvuPJn2S+UlFo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745994; c=relaxed/simple;
	bh=bNr8ORAaMV9ZKAd4jJ13jdy907MBgQUEtuK0xKRTIiU=;
	h=To:Subject:From:Message-Id:Date; b=M0zNffkWspPO8rTizcLLjPV/j1+9kel1QvOcJM5sYDWT09tL6BywIRFvwaFKTfbvENTFmkeV/FbHSoNm6+xNndbLt9FPhWUMMFH9fbaGG4fTZ2Qah5FIbd6owUst0cSISBdG8blgFr1XNFjf3YciTTGaTGbV7rd86hPeazRBzlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/0KiXNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/0KiXNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DAC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759745993;
	bh=bNr8ORAaMV9ZKAd4jJ13jdy907MBgQUEtuK0xKRTIiU=;
	h=To:Subject:From:Date:From;
	b=J/0KiXNtIVbHOb+NC/yL/a/DX4qxqRNh/aOwmp6cvAzJOxQEjAUFVA0EiDMPoZwdK
	 ys63TVuwo3RT4nv6EA8dnUEeS3KkSudNV/ThGMcwwb9AnIA5yBbgIMu82ob/XlVhyH
	 xk8qCZHVmlXPxQfGwLlZKjJ8/dN4Y2wr29uzEpoEK4lxTuSZtjgUn07zy/zzpEW/4g
	 XsQu9VIBC7a5xjh+OEcxB+DhYZqK8jNDdG9UYB+YG+cw7/GSbSDwzsurgRR+cGTtWQ
	 TpEYBmlu2/yRvaRapQscHqyF/j78tWRblEoJNZrA8VHQ6MeMcXo388tvDjjS1yYwrH
	 ZG7BXAxpN/gpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91253CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974599358.28599.5510700943067393551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9eddb76909d3dfd620a8c055b8eb69d41a80ff3fdcd61accc49aaf396abf68
Date: Mon, 06 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759745993
