Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CABF2D838C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130234; cv=none; b=ZnSkY79srxnpESEv/NXBUgorRWWcjsmWFtXjNdMVVMSTZoEd6jUlBTxwHBeq+hLAmUTtBXWbPj1ztpJhck+VFGBWMnGdFP66Z8eyHzZh2Ar1pEZ3QIcHWi6QcINVOdjuH9aGOtGNo8XLfNEPwNmEVLKWrcMaHzEAsdnbNL0MjGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130234; c=relaxed/simple;
	bh=vM76SJnWjYY5yficVYgK03fIjUTC3MrBV7OOXs2qvT0=;
	h=To:Subject:From:Message-Id:Date; b=h0bH9FJMkH6FA/10O19lSg7i4Tg7Fd3HB6UjK77K69dLNGj4ZQS8PkJNpU2gGbk2JgnQL+5VrlNgz8vq8ZlyO+nQ3W/n11xHCZDZEskvrU1Kf1nSXGI/7MSi70+T0PEOcuhi5PQS0huG3eOYKpMaOU2x+yeT0HYE96YoiEw05Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r70vk9WC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r70vk9WC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766130233;
	bh=vM76SJnWjYY5yficVYgK03fIjUTC3MrBV7OOXs2qvT0=;
	h=To:Subject:From:Date:From;
	b=r70vk9WCfXHKtdCrkhBLdF6FXXiDV39fophLN0vdbvuwSTcQD2xiqv29t7dUQnZ6G
	 09DJN0hXzCj+nMGgyQIC1AICkkdEqw3IiDa0W1f3aBhura13qKPiPStri6nvE43Ndv
	 q2TF5fmDdKzMRuKhPFGv3mbOEJySjoQleFx/qEs9KRrNfwlunw/57fTFAALojWt5GF
	 1TJRIzamMXWoaDdiWb5dKZ7dnVtGsja9LcU2h/3S07Qg2I6XF6hYUWygRZvpYaGC+R
	 UxyBIWuSugOPE7D20jz/lHqhB8O3eHcr7QfSiDYyt/yHNKv0A6ZVMlOOVhd1i6tHW+
	 FIRG2UyGiuyww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C7D74961
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613023358.7842.2348997105340739236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c26ccdac56f865439518339ad5b768de71906608c719c165dd9d4560576515
Date: Fri, 19 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766130233
