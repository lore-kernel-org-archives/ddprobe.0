Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41918259C94
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742911794; cv=none; b=jJhukRxDeIH8/u/aPM1y4Q+y6fS5I9xvSYFGkkxLdRIIe9wfu12UpxGaex0frrc/ZB01dIVum0OsAzgW8QOb108myPmJZNWQOODDlwh0je0lJhExtt72EKJC89B2FaoafiUqAqmW85QMLjTz/hgLtK6o60CDSnb78zGMglTz21Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742911794; c=relaxed/simple;
	bh=rxLZn5AbU0wmCFo2qLAB6oCwfEDLwkirnsO0LCFwtZU=;
	h=To:Subject:From:Message-Id:Date; b=ZCWe9tSRivFwtrXOx1rmLrR70ctMG+uABHBYzX4w27TkU6GJaa6TJqRAN0WM9tMB2uaYAXWUkgQOZ0VJDcDUHjyaSoK49GRZKUeVuZ1xrNhoDC9jr+OK+FuB7nCEiPegO1A5QnZOaE5y8PrJM977BKyLd3wHhT739KI6lCRDatA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N19DS26h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N19DS26h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB89C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742911793;
	bh=rxLZn5AbU0wmCFo2qLAB6oCwfEDLwkirnsO0LCFwtZU=;
	h=To:Subject:From:Date:From;
	b=N19DS26hyiN7EzhUkRh72npNql07MzIRxbegZOjKOdtYSwBSECLIX72XonC4b8eSO
	 2XjcUaUGX8thW7KS5Br9i6Hl1d7zSW90rzXuZ+Y2wfHkR+0+ZaAbn8rrMuwvshpP49
	 e3skmatjRYpwO/pOp1rQqAJ2PDyptVLPo+03X86hyy4tyTcvqRk0qqxN6IZTJy0PZI
	 ZzT9Ku4F6ZcMU2/MvWqP+feiFkwjnygfineb9ZVox5lo/N4eKpgJjpUYMYhIPKci8k
	 0r9Ww66UmrbR8zgcCxWGOp2YcNDgHsFb/u4SJWcMP+Te+bh/mUJykUTvq9kZQ9crQI
	 Y1Zmszi609eEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80A0C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291179365.31733.14288814075054232240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd311ca558003dd5201b4675aa38476a9a3c9be2785648dba6ed514bbaa0edf
Date: Tue, 25 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742911793
