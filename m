Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF8F344DBD
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785807634; cv=none; b=m0fgrHRDn9thSG6wduCnoMUljrIp7zfa7QbCEgr6N5+vGy7yji5dOmt9dHWvn+FA1wnlGT6lxDKGCcYUNgiHEEhltpyu9zb256W61+icyOsPc8e2FUKkMWer7WzsSPtpHBjZor3GmUWAmylevPAcF40eHCDtmSD1eFYTafehzpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785807634; c=relaxed/simple;
	bh=aqdLM+PXKfY+TQ8YDKHdgl0sw4OeQzzRkNYOmHkRdiE=;
	h=To:Subject:From:Message-Id:Date; b=oEndhZ04MGJGQBrfXcyxORfj0IYzBlOIoyXnbRxt4edULFU2K6/hTh1RlULcq5Q+YIC7YQKepk9gfZ1LWgRZg+h2SpZkvi3a313/GpwMK/aogyIdxBwbO8nGa1T2+w3yClnPbtyI/2aLwfILjeT35DFnXjt1oKVzzrt+W6Wf8FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWl+uuS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWl+uuS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4640C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785807633;
	bh=aqdLM+PXKfY+TQ8YDKHdgl0sw4OeQzzRkNYOmHkRdiE=;
	h=To:Subject:From:Date:From;
	b=MWl+uuS5T1gd1vrWWTpUSxs/rsP8G7Go9j7rRjHSSrF80xJeK3woikHokSUKs7nk6
	 J/bvBXJoY33V1owP6ZW9MOBkFqEq2oiNB+e398PbDU+MuJcN02zl7oGxPNhVxGql99
	 xTods4C4UDhZWz3UR08LHXX/kkSQowmcvY8bI9rmjAe7/4FsouZFyAeIz+XEVnQC21
	 4LDkQtGObyBYOz+9zGQIUEzu2ranoTDm4mEW8SDjZVvnQnhRzASxJ5Fh3ajZN5+ZGF
	 43JnIxO5o/QzYlQpTYLIFH2OdNAfEyjaTDOU5yRGTh6tY99vUZKXaLQ7oBE+AjR7rZ
	 vM9al+9/kV53w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC444C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580763374.1229.7718003675547125431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bebb235ee2f4caa1850f420b996948ebf9bba734200fd1fea70699aed3b933
Date: Tue, 04 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785807633
