Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EDD3B1A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736253354; cv=none; b=P+Q2oI42slG6LhUgtXxB6hZH9Lv1xltFePfOx/W4Yu1+FbSNwkrLOHs3Na+M3UqqWl7jFWwKSNkFqIui5JhE3VAmXu1ZCr8z2UmQ6uW5PJpJaTNZrFbSVepd1QixmXnxXrRV2AQ8kU9IO7ChdwDDexQzceOXhHX1xXvyIpln1CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736253354; c=relaxed/simple;
	bh=NaxByscToG7XzwJLE7R8oFoHpoP/80siE4On2qj5awM=;
	h=To:Subject:From:Message-Id:Date; b=gwVLcDWtMGSZykI82QoCq4TpSGfyPRxIgMjiGjqva4D1VfHAOEkRwSBhiNQaKj22XPcM8mS7QvntEIeAOI9JH9VF1Raga/OISwUAGxc50AO+ekGnB0zwCjzYJl3l5LuCznd61EDfNmuH0CMYaSPH/sEF3YBFHHOvvlfeabP4jcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFyPwz2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFyPwz2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1BFC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736253353;
	bh=NaxByscToG7XzwJLE7R8oFoHpoP/80siE4On2qj5awM=;
	h=To:Subject:From:Date:From;
	b=FFyPwz2KBsllwlZ75R2roykwS2X42J9YxJ4FVed0fN7zBq3HVrCe60ugXwJrUpEN2
	 gEJsmFAPDAYoSLXGQmBdcieYsh7D7xQulgH6gTvUfjmWxfWvLdBqwx4/iOPgPslfCm
	 hFmZkCgQ2LUrger6zp78d2Qx1lNcEnNBNUeJpuUni4jAfuzGEpmMmVvxnv8T38wFxH
	 0WHaZy0vAYVKYd32sUWjI9nAC25I2U/UfCAosKdEErUlLF3Hg4aBAdujP3unFx2ZJK
	 HQEsCOFvnO3hiFIMccDkqiOu3cp2/dky5lT2vARlkdews5fZJt6j0pgTnX016v8rb6
	 tA+ddmctE56oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD95E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625335358.4359.15056718743778045576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd0cf9d6538736718e278416c831cd22ee90b18f69d2ac62ee7e6cd88a4d8f9
Date: Tue, 07 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736253353
