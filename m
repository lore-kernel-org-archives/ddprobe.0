Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D18F21146B
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742339394; cv=none; b=HtkCnj9U5IxJo7JNuKnxdPeIZ3LHSMUNkVmP08etrVOVzkJSCe2mBozLMJa2JUC6pXW+G4f6cPIV7qN59kw1wlItcPjZgsNWjNxGUaDghcCvqsxmMvgo2kZM+QdrSJljQtLYKcbc9P5fMLwrbuuoyAvz8O4IfndkZa9fEFuDPxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742339394; c=relaxed/simple;
	bh=2kv7mBU0YmwRWfa6MiX3DwWwol7GBN8TfRpxrGR/KII=;
	h=To:Subject:From:Message-Id:Date; b=oRQ8p1/EwlG0sFC7TGfdSBIIJgTyVsUyDCvF46mGD2KndXhb38m+P3DTlW6Wm9wyqh6fkocwqyy8TtrbIPjYMKV4YbBWbFW+T6xL/U1RmpzcvHqbeYb1fJy9pERwB+3lTlszxq8PM+VnzB6mOOvJiOA8+Sn1PKu8JfjFCyRlyfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akjs+PO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akjs+PO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1ADC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742339393;
	bh=2kv7mBU0YmwRWfa6MiX3DwWwol7GBN8TfRpxrGR/KII=;
	h=To:Subject:From:Date:From;
	b=akjs+PO391lymGnmU/Y2lVF5TqtzwGxbNkx+WnaEfkkyHGUNtsGXq0Lh++bhpIqFV
	 xlQT0bfMMKKjbAwxFTlQlaiPowbEb6QcWyCCU8T+CYbCmBpHRGm8LtvHHki3U+YnGR
	 qGxT+LOPJi+aRtAJOWXWCszKmBNtaXnEJt3I5JeU+R1leW5j82Q/nsFZsmaguLA80o
	 WbUJmJIwidCEeprsFkpsXBDmSPqZG6BhoFhVne4M9pumVsuYiaj8T2v7912HbF5zNk
	 b9Y4U0ocxJgcttEFCQi2XuYH7wv4qWX2IlEsfk5jpIdjfU3rpRjXexyDipMDMJn8ug
	 8gaTiaoWUrvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DED7C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233939363.24057.13513721248828378497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8215a8470cd7a4ed022214cf87cebcc623817c84a7f66b4df38ed21740ac7c6d
Date: Tue, 18 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742339393
