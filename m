Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9792034D4E9
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791783034; cv=none; b=iLoMnZFZS8tuuJui4DDZFJ3qF1o3HKhgSEEOMEV1wBHGYU1mpMa8V/S3W3oxYizqW5y2tVc80oqdjdm2YSr+o1umDAVMP7QFhseJK3b57/wDfeoyDpvoxetnr0dKcGtY9d5ssXF+HqYAj6c/qzPnyyUWMFuEWrl15QsYt1oPtwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791783034; c=relaxed/simple;
	bh=Zl2FVzB/uwxhadFMAKdoDEdkX+LUeK7syMSzLz8eRqo=;
	h=To:Subject:From:Message-Id:Date; b=TO84lSNS2e+21WUKPR/7OogMkWPMA9uVQs/RfNygrD9qYX1hjr97VsgyC9CCRLofFPOrP0f3jaTxltzoNhWWK8D9m8DcJVMJ6v1qq4fhL/qzrJzt7oZkNaMKRVZYNndDoe+LTgDbS0GrFLoAUuDLEm313EYwsWlEZgn52BA+iZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQqy/yDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQqy/yDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5497C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791783033;
	bh=Zl2FVzB/uwxhadFMAKdoDEdkX+LUeK7syMSzLz8eRqo=;
	h=To:Subject:From:Date:From;
	b=YQqy/yDMStWLmUo8xH0Gk9dlaSBOm5fK63iR2jVUY7rpHh8bhlmiQBLf5nBFdC/Oe
	 waugtFRqR3AtouO99mppZgoQAJMaUMro7TD8RVWa3XdSN8EhjA7fHrqYKwVgXetJQG
	 5yvTHKh10Ku81VQP1yl5oxiyYf6VfFRIa/uoKcI7qBVA4QhQceJmJ9zxaQlyvzWXl8
	 T3RZC2/qc+rnwDS/6Ne1w0AGYG63+H9Oh1wPJMFrLsBmcKDddrr1KFa75xyjz/0hGN
	 SZT7E0YLroCNatKFe4Ee24lhM7nzHa6ePle3Q8oQwtEOHKxPH7QYd8Z9z0YtgQxJc5
	 5BNcCdVuEEmUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD9CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178303372.18659.3962943595978456146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81192cfde8f50ffcf8acf57caf0284dc78f842415890da694cd20a34c83738b4
Date: Mon, 12 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791783033
