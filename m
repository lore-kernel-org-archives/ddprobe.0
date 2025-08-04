Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3CE8F58
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754316594; cv=none; b=pZeph2B29SXjJEngEABDCAwB8oR5nKoi3u9BvRk3sSlVRM0wXU/HqJlv2IF1XegeQuJ9KXzHgaz3KEoHNSdiNi5rjcoIUkcqRbVvLfPq2+9mmo3CK34EVowRSQoZcZvqTo/GvDzRBfcX4JtHOp8ZC5tWd42UnXuxAAx1Y8BmQTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754316594; c=relaxed/simple;
	bh=txuyypipzqs17vuUlhEblNV8zvHPt/WpBBYDVneb/ig=;
	h=To:Subject:From:Message-Id:Date; b=cE3BF4N56IFFiSfAiwzOo9ubi4OUoPhLLzfIqGe4CBTcLagEyy348hSnK4eMp6hoWFOeLRhz/uysTuohUS5cuQvCIkKGWAfEOtSv555SRau2SYmDuRrFJ73QvJVY1GH7jHRziQNcwqwgQDum2mJHrWHvQdTTtTZeRyArYQXDcnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/NAP/kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/NAP/kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE07C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754316593;
	bh=txuyypipzqs17vuUlhEblNV8zvHPt/WpBBYDVneb/ig=;
	h=To:Subject:From:Date:From;
	b=m/NAP/kqpE0iIiUrVl5nGDqg7DnzBb7SX580uqtjfiJSBfaiHnsn+PGMDh4Rx/Ml9
	 OAPR5sT/uTMayENxqrp/vOb/fKgC5g8y+tXWq9ZPatwtrJWp4X3K2fKfjsOHkMuAqX
	 26cBTKScU66EKorumrWiQnGNKpMRLyikR7mk/ECrAEboP+wLApdoHCTtMqcx8Cde/s
	 9gIZuL78FDtcTujSgrX7BEoT5Fv+3a7DfYBWZ6eslkfsxv24YrQpzXeeU7h2o28c6k
	 6YSRo7yVDt7ZRsJ6KINCTQjvTce1FTEQwJGuv2SPSGMFm14dx5HblidzpA9sfpFFnK
	 YZ16je6jKMe6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59CC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431659357.4944.10848764201177981082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9b328b3986699b0432b628e9d700cd18d90d161217fcda936a9990445a3ce9
Date: Mon, 04 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754316593
