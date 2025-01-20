Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34126200CD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737389754; cv=none; b=KNA2RmmGMiVcdWthurvSqG9K7QxXJ2/t96ATgcaDNecFx/zU3LtjU6TSmMwtySA9IyX0DQABdAGabKscePxERJAsK8o1ZP3DYZclsRj6GOmB/Evl+YCOmA0sF5n0TfB8xjQqXN4RUZQEZeDk9etBbZH5GAB355cCPlkBpxKEU7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737389754; c=relaxed/simple;
	bh=Y/rxYq/tpYLnADRjCFVr93qZw/KuliEd9TLRMATQ+Xg=;
	h=To:Subject:From:Message-Id:Date; b=ooNPh5EhtVqLu7xm/SVmk23XxV2+uCZz6kBU0VzjucOmhmSVvjkzErDbwVNswQjDXlfWzNYJDe8dwUSb2YiIXLDHkJFWhPI5v2+Nw3kPWknLIJJZ4h2N7dUl8EfCJJ05SijToi/i2v0SAOYRSq9d8hXQzgKDhdhnfd7FMJkgzBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqxVlJFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqxVlJFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD16C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737389753;
	bh=Y/rxYq/tpYLnADRjCFVr93qZw/KuliEd9TLRMATQ+Xg=;
	h=To:Subject:From:Date:From;
	b=AqxVlJFNjgC8z4UxHXBJIEaIqy/NgQrygZkamZL8N7ZVUXVcp4o/dcp+9JYFpPPaq
	 f2eckb8rfuEUtNgzJUmI7ZfnoguFGeX0iLKHG7nxR7djfHiTKiK1/4R6WPpzEejFMY
	 cQ/4D2R8rGX3QCuTFrHLnRxD1hEw6Dvc9X3pOtNJRASnrYA1u4xxtITspfUEHj08sK
	 N1EAqWl6CEFzN9gvklZ4Pi8YAZkZwC1vzLM+6D/L3OyuvZD5Z/dxnHYaJrArY00h5h
	 1HguNFnAZahaR+KoU+alUZRMCat9nUEODpOGQRY7t0VN7jlS2ugMGukPwjQJ61Yffk
	 HASyXvwvxxXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A8DC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738975359.30704.14728095307530954925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5294ee08e8a9819a2e5b6aff3081e014f98e83216b0ce3ffdfcca7e4fae931e5
Date: Mon, 20 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737389753
