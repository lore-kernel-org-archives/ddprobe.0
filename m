Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4F726AD9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741067334; cv=none; b=UPkOgu+MIPTPzVGR+yVWtuDc5W8KmQ+94OnL//Z+bIpG7D4fjVXv9Yf49xSBZZoTDC/8fWDh9DxVXlHjt3d4VwGoKgsLTA3fI87tUM4LkoD6Iwtxsg5LurXDB9Kbcb6txwFtYGb9o8KAT0vr+BPAKk7Fhb2yoBhp22u4XJRbF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741067334; c=relaxed/simple;
	bh=cTenfwbb1nX+pAhtfnvk+yRQSRrLaGMZ4FKNgVYo8+I=;
	h=To:Subject:From:Message-Id:Date; b=rzEkMKRaE4LUQaubQlM1JpBvy0NONi1MkLBp2CL6IF46bH+NkYFf2IZkMN1ZTrsuALpOXdFv3k+NzUlbOP2IV37UQZGWBQm+32NnVZ7q0rvbLJeKPA4Z98AE1k614KEkVtbupgK8ecIn/6oeJ9/vAmRGDp4YW0ilzFeeeqLz4Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpcIab/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpcIab/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D34C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741067333;
	bh=cTenfwbb1nX+pAhtfnvk+yRQSRrLaGMZ4FKNgVYo8+I=;
	h=To:Subject:From:Date:From;
	b=NpcIab/MEDy6Nj2uElrStqwPxOjddRdObG2CA6hN8iwltsfgq+BDkqgArFe4ZU1y8
	 MXZo4RV0Px19mIc0PD0DwpsDLg5q/rKfn+WCQ0n8FnVyJKkhcEvIQ3ZLeVeN8xdB1F
	 EWCJHG1bhFHHGmRvcgOOVjwZTAtCcN2wmAIdyH+94zxQya6f+vr2pKkBPa42Jh9Svm
	 KfSKnvxNP99927LPzYn4RNqCe0LwGuZxsluV3fAnr5QOMYJdDYEWo/KHiT/e7KZDt6
	 Y6lxmh/wlAmkHIk+iaHTxsezK9CbyUiVzH62RU7d6pAg1qTFVT7HjWlvvf4708UmWO
	 1uksRBiaYI0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A252EC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106733361.22926.6511179392116384267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99be3eb99aca3a8fabf2fe693ed62e15a59827f4d7d712d8f8df8640001872d
Date: Tue, 04 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741067333
