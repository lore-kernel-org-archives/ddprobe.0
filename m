Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DE4364E86
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774125294; cv=none; b=KtthA9qb0OQwkCUeRRBj0NaA2AZOQSTKGrKwVS1aR2YGENtXCkI/KSGhewd3lhjV8p/ygHF4A81DhB85I6eanmKTdmfZ1SrsSRMc+Cf4oHFbFHKfYi9/XqO+SPCLhi5HrJR5/UVc7GSjth/2x2o7cNit02DEmL5owk2pqHYQtDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774125294; c=relaxed/simple;
	bh=/9wnGEB6vf1yvuN10NhtrpGjsNjpjS3HmMa4Aw/YGjs=;
	h=To:Subject:From:Message-Id:Date; b=EOTnFljAadSagoBGko9TSTDvJQ4SHSpd1LqBh6MTLrNoOU0zrgd4QM92rD+ZJnlphVfFVYgxAPWHn9XEc62oUyMs/YfGE03sqWfpRcCR2NcYluhqAVXvabTr7Jv26IYg8GA2h1FxVTlAYwYTU//4LNEtyNq3OhI7IuHSWQU72I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwYpvbSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwYpvbSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF30C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774125293;
	bh=/9wnGEB6vf1yvuN10NhtrpGjsNjpjS3HmMa4Aw/YGjs=;
	h=To:Subject:From:Date:From;
	b=MwYpvbSWwwSa1CXhchKYmOW0X5KpAelfOJNP6gRc43Pj0Vyl8a1ghM+lOTWQubBNx
	 ASefeadFNV3qHCtk1GwQ8QEx1sEd219G0d3QWCyxSVDuKv9LF+p8uF/BR7PIOOZvPh
	 kotEvp09V4jWZ2LmehkwyxdyJ8UvbfLjdlKemXUuCaZCokPMYw7kQM2Q4IAOm2U4Ot
	 rzdWSDuqQXejqi+bDdYWhl4IjWr/5d7dmqaYObKbVHmQ0tZCHW/MAh4lD2UQ4Rkqr6
	 mZ1K2FLlBB63ohi7FQRuDOcX/DPFlSZyMMXIv90xqcGFFvWnO37QCEOEZfPF8nUz8J
	 ocWnuJzfyYp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F71094499
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412529357.13038.14736482069336213758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f8f7a103aa469ccfc924dc98a4e06d41577e0f3162acb6f9e6d9bb1f504bd9
Date: Sat, 21 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774125293
