Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F96B381AF
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766937834; cv=none; b=K2mmuMTLGaaYtTDWG/nsHsBGUnflBwPN6N/7VR76FpSOWzqtNiOreefn10HafBJqC3p25EuRlpfqU22clW0ilxXBP2eyzjUElGAgel79qffjDjOw14KdU86DM+BlNEvmjQCPT/KUir8jONavvJL4DnkO1Wz4ZqPtxW7d7txybtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766937834; c=relaxed/simple;
	bh=9hnT2NI0pqQq/omnScdetnKQeYn4gYRaAwNY5UTCqPs=;
	h=To:Subject:From:Message-Id:Date; b=mrUpZfH6db2jk6/YbZ1QRn/QQql2k8Y1Ss9CIQ9E78wpHNIUQhU08T2y+VRw/fmX4yiC/yCxU4Uwy7kYlvGuqFPd/HrHU8l+3aVdjQ/wflhXg2jbTg2f2vwNsYJwdDwaQwN4mjg7bCIbeRAP6sbvcUbGRQrj76uE0uEz6s3RbfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i92GLnac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i92GLnac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12CBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766937833;
	bh=9hnT2NI0pqQq/omnScdetnKQeYn4gYRaAwNY5UTCqPs=;
	h=To:Subject:From:Date:From;
	b=i92GLnacp3xojZiqm+4G0lVnlm9vYWouPOrRyXNaapRv+0eTCNz2nH7BsalerrtIs
	 ld8pBsqX2qsOZ1u+J0QMYDVm/9COnTio0XeaPnv/xDYrgjUDJjpYm+J8ItH+UjWnNf
	 C0TYGNuPwRSBqJgcq6+lUQqszlrABCu5kP9ihuk+5aXob/I/eFvkU0LjzeVNOv/5xb
	 bSYp4pQ4QkM8nfvgDIYEuKqQXYfJPxTvjee0XessSg+mIuepKOfUq8wamvpkOFb4e6
	 dy4OWITZYKYEP+TJuY8h+PqUrxejmTIJ/FrX/Xp/pye11EaFcDBxqYnJvuSi4Al5lV
	 ClUa/yCQxCjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D453D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693783360.23092.6162402460691452678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c7d3dc44bd949a0eeb919b9d7669286d09efd3eb5b62cf6d7f0d18951c7ff4
Date: Sun, 28 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766937833
