Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC3F184F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736148954; cv=none; b=Kygeac3dwf7F+cukT/bp2FwQqqlFn0+pCbuu7lA1L6o3mAQOSxquyfCNNSv2fTA8GWteUH1f14KmPVnv+VD8gXZny2xAl10buHjex+eZKGBk+Nf7QFWDZoPH7XLsJu1F97THtR071AuXaW+0R8O7yznswXnJYoB7rmd+KKEv1xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736148954; c=relaxed/simple;
	bh=rp+meIZt6du9cMg1bwRHIo9oROHwsIsVGNvlvxcFjpU=;
	h=To:Subject:From:Message-Id:Date; b=AB+Ui9QH2YOKIau6G0oCPUdMfQ9HtrfM3XctTHPFNizL4bjqkQitJvuNESWpItNDMNMHDB3SQiHXvbDhVg28qL+cpJHDNzCkIoK25Mut0EH8Z9ENvN076zKZIUKBESvy684jKEkArX1B+aAfls+wdHFnm5fc+szDtUhJG919HbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMwNxH8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMwNxH8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3859C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736148953;
	bh=rp+meIZt6du9cMg1bwRHIo9oROHwsIsVGNvlvxcFjpU=;
	h=To:Subject:From:Date:From;
	b=aMwNxH8P4B4Ho/mFOUarjXrvc7WkXH233DppMIFH9PEr3UwoqtvDGa1tWzwI2JYeL
	 T9dsJ3rUgtfRgxAIL4hrC/8kVwhIOIOuPEpxiodOzWRrm38WkXvSaT6ycs9dw5G8nt
	 H5ciA6Q3uElh0e/FrddA+n1W2gWzYxYc+oa7ZtUHE62toRYCISkrY5ybJsG7NPfdzh
	 /ANlV+za7FamnN+5SFlcAQM0/a/arOAx0jCy288XscjkieINAM0HFfkRwI+VzpwWWv
	 gZwqPm+v/0XB1e67s689t2MWsCO3GPmvrY1rnUe7U5QmcpH7fJ+ZRVAhTnH8TP3xJ6
	 6kHnVfFSF6ECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E89E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614895358.1040.9713169665995749445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b9fd0a4a3c486a1e20621efbd83193d2b4cbdffa36ae3ad4535c39e9c8d8b3
Date: Mon, 06 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736148953
