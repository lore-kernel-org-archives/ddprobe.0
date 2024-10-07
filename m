Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299424A08
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728270954; cv=none; b=kT+iVyUL+95wdxrMNmn5MuO3GXzYT2W5+u/DXScTd/VzzHwspJH/ABoLVo04/u+OaWZwFU5zBgxbmelP67aTRTf++F7rozD54AA8TiNsC5CIghdZnUZRrTIAKbvNcNWUjj7GXxAATLwgcFMtVZBB75X6lxS8VxMckQGGejyxjAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728270954; c=relaxed/simple;
	bh=yRQDTIyJNwcXA72YYDOq9IZEHOAJnOI6TNymnnhuwHk=;
	h=To:Subject:From:Message-Id:Date; b=cG+auEwDW9zqEAa+o3vvQ/9k6vFbJ5nNIKWOjtM24yOtnzU/zv/RLzbZliXwHTcH/W03tI38XtMdVq4BLVonZaegbe0qqnAudA0xXZXMBW7mXSfkIAXfGIib1FA2FaHksho+r0GJhdZs5nu85gK5sTqCwau6cJ0mvtV9b9XJ/64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfGXmdk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfGXmdk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A0DC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728270953;
	bh=yRQDTIyJNwcXA72YYDOq9IZEHOAJnOI6TNymnnhuwHk=;
	h=To:Subject:From:Date:From;
	b=DfGXmdk3sENa1kmwED/YMXlx9jV7CYQD/Z1GIofbA5ANryIbLnrIpW1N+eSwX7X5L
	 FN8UjhtP4VZjX4vzG0AOnGt2pp7VYFqEV/78Vn6QoKdMxlm+U+MXbPlVhCbuId/9YZ
	 mnldeqNcqAvXwSnK9QRCckJuKHj3mQmau4UC8zSE68owuJw9tFfmSmx6Ha8R4fV0JH
	 aPp/WChG3dUEZ8wTRLYZM8j1qHVl64+CSNdYLvInEGACqXF0dbRofRW/yc4zg3Pdd0
	 WG7wV//GztSFlgMNFxne2JFHrp39/MdjdfeR1SCk7XrtZmk/pkxNrULeGKbO5Xlwqg
	 6D/9O5aihBxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F596CFB43C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827095357.28435.4752669459517810464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcfeb383121cd6a281f924d8cf91e22456bcd10d21cd9443ae9d9a22198d00f
Date: Mon, 07 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728270953
