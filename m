Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4048D12880A
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707204497; cv=none; b=YG0OtXwnxzcXiWcLIInZHyF896+rc4g9gEZjzRgMDJDnoSLNa3FdIuRj7GGkghz0tuO9dIQy+WxYPHA75VLnt78XiDx/UD/aJ/pek/wjSKwpXdNZWdvmbyz3fzxiDcWZVjrh2D5sPmen3Xj2HM0jqULU0NxXezy8NjzQoKUyDvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707204497; c=relaxed/simple;
	bh=Fjg32XlHB6VH5ZPD527ErX+ri6lLvNxl/lYCFz1f7iM=;
	h=To:Subject:From:Message-Id:Date; b=lBr5b/bwHUIIhPsPrSuOUZTzkJPWhEJFPpXPs7IGxod8xZ0nFzNZQwx6S66bsP7lXUWDSAQKdPASgbX0OP5SY9poR+wkOnMTXA8dOmaw+v10PPVRvwyuRWjJvjeN67hqck3/GyeR6GIcY8Z62Hh291WSr/OEEQOH62u/KwEKhUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avxlQiRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avxlQiRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A07C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707204496;
	bh=Fjg32XlHB6VH5ZPD527ErX+ri6lLvNxl/lYCFz1f7iM=;
	h=To:Subject:From:Date:From;
	b=avxlQiRG85G+V+xyA2mSIWVn2ABW/H1VuCF0jZPt+T+8EuU4CXpqO9vZACBm0p5WP
	 VbMJEezh8Qoi+MgrhQzQMwpti1JQhDb1aDypQoEOzuWBn5xSjyGjygnBlkbjgENJdR
	 tK6FgGBXPdx8TH8pwD8t2TTSUbHGRMSvh+YdujC+AuTCzno8fNivieklj76uDyEdcp
	 gilT+8s3VVZ1A9gdDzBcA/B+piJAIVhpEigUwQ7AtCcvUGB9oaMHjMBz062hgVTkKj
	 N/4YokRIzaCMn0W2Y3x1EXZUOYG9p+cS9dHcpGdJg88xGKPf4FUNqN/PTiMbxGUXiS
	 4SNohzYYX8oQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E684C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720449656.21295.15555037365718715005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca34988020350cff7043ea9502d0b94e832962b579ae97fb8dc9472374fe11e
Date: Tue, 06 Feb 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707204496
