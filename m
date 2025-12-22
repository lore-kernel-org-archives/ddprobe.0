Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B123346B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766424234; cv=none; b=TdpZUcRnxyYL+wv7GJpwhAibD0OKDYI0nDZA8TAclaHwQJ5XKHC7uv4hnRcde3mMA5vZ6fpWz3cQC23Xz9zc1iNMv52SvZB1fyIyl3mnFDg05UBgHNHGauWAJKw4+CK8IJ02w5OVt3zS3D7OJO1sGfg4OgUcOhfD3t2xZW3gOTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766424234; c=relaxed/simple;
	bh=4DChwwsOG/82VH74F2uxl++qIEzQrObyXsS5Swviyg4=;
	h=To:Subject:From:Message-Id:Date; b=JclwGA1ilnD1tW+AWNiRamtSTI+bU3HxiH/LFo1+KYcDSrwSej7MZ4CYAWk+inT+3M7pYCnqeVHwDGD6DL2eLiJ8pC/Xq3McEKoHu9j4LVfVr+8ZlKDg8Nmfx0LFwONyWQbQskdwF6H9fZiQEYR8iClORkqcUHHmgllXBssuEjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njbN431R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njbN431R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766424233;
	bh=4DChwwsOG/82VH74F2uxl++qIEzQrObyXsS5Swviyg4=;
	h=To:Subject:From:Date:From;
	b=njbN431RVhwRltL+ZtrRi4o8hHZqyI+m+u/Z8Yr6OBD4i1/+iaLQrc6M3OUHNz6zK
	 eLAu522MB20kNpFWPHO/KLQcqVj0aSVqxE7uYvEKkC3IW2AEsGo19y7EeN2Yf/xGaL
	 8jWC/kBO1UACpCCvbDP7ylms+uIdVW9WL0ljGSTVMbCEmjqNkh8T1jBYmFUZrCrBPZ
	 ycn4hIoXH6pJj6vt9eJlbAzuypmDngMe8/cwSeqJLB2msHKzbF76hZI/Hiw0yNH84g
	 7GMV0Pag9uu68yotBeLsYOWj3w8HE0NCpAyuzx5zY4nEw2jHu6BQZnoHvrao9MonHo
	 ToWl0fCS2Fvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969DCE67803
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642423358.17110.4446074878908833586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50289a4e49e878b5fe97e65423e71e6ec7a0e975fdc9bc4f165809bd0c85b34c
Date: Mon, 22 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766424233
