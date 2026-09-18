Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C30F3128CC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789773034; cv=none; b=pI8LWlwVkTh5cCvbtWkekpq4u7jwUmV+MhE2MuDIdXS49CGasQ5A6mEtJrS90gTpIDho/XeJcEb1Mb3gA4dpg+69bHuX6f9Lsxz+0/Pp2ctr8SnbylKOl4/IPR+sX04ngw+cRfi5OgY1EMFLJqA1FTzvhTW+H0gIruay8+R/L3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789773034; c=relaxed/simple;
	bh=kGIYwzWHxnNNmbjeCnc6EUZaEdnxVYp1glhlbB+KY1U=;
	h=To:Subject:From:Message-Id:Date; b=hHLzpPAvN+3CQ1at8v7Fqe/+jWgDJJMAQmAV+B4qHnaYIB+GUQOi8oxfabzxlT0HoDjU9nywspRiYUTCg5aGw8bcBqN3QlUiaDFnExRKAKWZl0MfkZeRP+0Qx4oqnVFjq8zqFdmgkR5uNgvEG5qNS9JH4R4tojWM6kr7tVTgq1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa93hjvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa93hjvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44F6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789773033;
	bh=kGIYwzWHxnNNmbjeCnc6EUZaEdnxVYp1glhlbB+KY1U=;
	h=To:Subject:From:Date:From;
	b=aa93hjvL8cOeW1FtxGWcdN6m+E3YIIvEt0vs7IHwH+mzd2jGJMIxAVj6GG0Rk7VWy
	 wb3eCa9reYaE7vRrjS4x4w/TS7fD9fZNqyaxdDVoRsP9+ypCEZsBadj3G3bOuKeliu
	 IAZMu7ZtnI/n16UHLwDVb+caXQAyeUFnSOpTMpRFZAtuZa63eX0J/FeXgtBni6q309
	 WGlEKAhKTA3DXGcp4NXMmADnW9EKQKBScFKOQGufHUc45YrkwiKagOeVySfczGv+iF
	 RtE4g8hdDXsogoqvfz8O9Wf88DWobtjJxFU3vnt5ghOnS2/ghakj4oZxNyoFs9xDXn
	 T7SgGr9iGr7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE90DC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977303368.18434.2018793867150342625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001c5c3c968a655eeec10faa278b8338a95c0078941d38aae4dde3529253bdec
Date: Fri, 18 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789773033
