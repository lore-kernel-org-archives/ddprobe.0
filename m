Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4786A19DF7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742071794; cv=none; b=SA1DOj2Duxp3EhqfFHOqETfQ+e7DGOhwN+7zEuCHsNydgcQ0JG+yMFWodj6jz7yMkQJR8cVrRedIzkq1WSFe4REGbFVCaW7oEEtiw260zYHsoHVSIm9ee5G9uvVZyDs8O+rWpQe/nKh894dzWO2d1zM0MLjIeFe9QLV93EvEIjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742071794; c=relaxed/simple;
	bh=M1Xw9uttW84BddrSUDEDhqPt26OwOgry2rI9WLXT5qg=;
	h=To:Subject:From:Message-Id:Date; b=OctnWRx1vnnNPcvErsHCJ4Thzu8i0zScQf10U45OdvxKp88BSyartBRMHJvx9FLARlfnncpHB7/XlQpLfDFcWQ8JMx2yVGH3ivtxHSBvvapS9ncufW6Jvb7921dCLE7Rg7P7fd1Cx0EFHWbOJNNwajeidDaW/xQYeypnzc9rEg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oxujbmfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oxujbmfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B646DC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742071793;
	bh=M1Xw9uttW84BddrSUDEDhqPt26OwOgry2rI9WLXT5qg=;
	h=To:Subject:From:Date:From;
	b=OxujbmfqJGuzAHcipXHT9riz5/p1PWwUxLmLc0ms2w/1YbU9SalGrRmtKhQ1uJK1u
	 wRCB1GcHY6QhQg//eKnu4YYqWW3gQX9VdGoDj5jyF19ePqkRK7l9OIXKWKUf0DjTmz
	 /zM7UP1o1qzNGqH5ts6Uor5lhKdc/XN3ahaxupCXZNl+qgi6DzuUKYf0hd1EHmRIWT
	 3h4PC0fwq57HQAPAY3nKcLnZ37xAjxpu5E4Jom3nPffgcpXbTRg4LDYpV9IsinDwi7
	 iU5y9dTNXgzE0FJIr4LbJ1geoXD9rZ+eWa1LDx6CYkI8OBUXRb4q2Cc+E7WwBcNftR
	 wUJLl12knsgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B64BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207179360.12911.766796763668509336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f95be31a94044ce88ee7ee556c0b32925a8ab092ac8d69a3a17425e14cdf3d5
Date: Sat, 15 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742071793
