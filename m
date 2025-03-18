Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CCC1C9B97
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742276395; cv=none; b=PK6KFwzazYb+3XFn6HnNJgwsHIvkJZU6KGwFJUVZUckF7+4OvK2f5hglezDkQ7wCVWxl46gzAms9W68ApgqIKCPFXKuRgzwc/eXhok4eTDd5djdKJmfoJxTaVqx8AQctERpCbVSjsVuDDpYi7vzBlwkoKPtNvxf1qIxwgj7jaOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742276395; c=relaxed/simple;
	bh=IhloRsmS6sxbg9gaBqICfiCNCJgqEJiXNSCAPNApgkc=;
	h=To:Subject:From:Message-Id:Date; b=Ro9rnz0g1szBhOdn/TvYvpcfbFDqBCYpLBBnvVnqhD2RkO0IDM7vH4KywNNIucTofRpI55WY0chwzg0FNjOKE7hxV5bR/6cpTZd5OZatDYfYtdQDTbVVYs+Votkx3C2wrHGmBp+6hP8OyS+AS95E8bQ4fOE4QEpq2+JBuwohXmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2FBkNl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2FBkNl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BD4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742276393;
	bh=IhloRsmS6sxbg9gaBqICfiCNCJgqEJiXNSCAPNApgkc=;
	h=To:Subject:From:Date:From;
	b=U2FBkNl7L40mCbDyjQpb0fIbYsMDkfkSXRwkyxCN9IzewXMeXw/xsZchLwPOq3yHR
	 Gsam0LlbL9s1miHdZCsxKW9G5mksz8rTOaVHmGwalmVh3KTj3sSW66/WwAEyQ7DmeM
	 H/hBUu/baNNgnfcv2QW9bOWDU0UIPFhnVe3E7f9sGWkn6hLi4gUbTmjE68XACjrh4R
	 24oMfAbJ+qgXdkSffHuEr4iRBNPrKstsMZZoOZsxqfWw7b+XwWEqXqvtDGQ85Zv+B7
	 bjCGQbizq5EP8mGCIYROBIQeNdqs/6cyrnDtnXUXLv+YHrjnCYp4mJCCM4y2zStjqP
	 JCYy91dFRBvaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF74C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227639363.15692.13290833727848279641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fbb422d5fa5badcceb6e9d6f33457300d569695bdf135235439ebb47d0b7b1
Date: Tue, 18 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742276393
