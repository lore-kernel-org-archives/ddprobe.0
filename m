Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D71C54B1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736880354; cv=none; b=iLEZ0xUbeyba7Vv339zsfTJARVVJ4dp53aPDV6fzAGOtibhT0p+Guei0+XePaWtSJPDMVEOnoJI0zk6J2kQGJJS5nEa22dnqevX1TPeEHVhwAWZ493Ja1FpWgcgM9FUImgGeWDUeNGsTJKcpU+K0bPZb2sTWzE3mgf02mNKAir4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736880354; c=relaxed/simple;
	bh=BQq7W4BRT/TaIBR4YoI/fEMDIyBPdHc/qSOvGrrcHPc=;
	h=To:Subject:From:Message-Id:Date; b=F1gkzlKMtHg0tYZKYikhTRQb5CcylgjPmCMsNB6MDUYP9K8KLWVb5j0j34psvi3wzgVfua8psrqsgHR0Z4GkdJb5aUuv2FdCBQL/h/V/Q66PIW9KBPWvaApNtH6Sy3Eb1xtcvDaFa5DDtdFyuXtehFdtnvkNsdguXRWLNOJg8XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L20eLsnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L20eLsnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB898C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736880353;
	bh=BQq7W4BRT/TaIBR4YoI/fEMDIyBPdHc/qSOvGrrcHPc=;
	h=To:Subject:From:Date:From;
	b=L20eLsnJmHYoYfmAL9QGg1QdNzy29q+jY/iKUWgHc4Dea/yN+XEljLeppbK+OmFzJ
	 lY4KtsLGjTGOO8mDaLmdqdhYEXtFgxJonV47ibQKJ19aS93cbhpoyalafI+IIoPY5W
	 M42xEXj01PJraBhqXvhxnFLw41mKzW0wOQyZtgY9p3FyCkzgy/uzxqzIF5w2baJk6w
	 aDiEwxf8k1MqkrfAsPybhS24MMG5/4aoHOi5DvXvOHk/fyISaEpmNKAQIG1TotQc5C
	 P4std7fugY0F327oI9Pjw3+BM+nnIQAQRmp7oJfRy5UMy9wd1BVfj+IexcN1CekHQn
	 ut2UxmqtqE6jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDFFE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688035362.32588.15556567598082371442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daaf927605f700cb989542328db9fd2c2ac8cdbff3d27a3175c80d2ef3e18eaf
Date: Tue, 14 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736880353
