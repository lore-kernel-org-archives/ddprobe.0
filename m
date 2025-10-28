Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DA22550AF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761616794; cv=none; b=PIYG355EUwtRWfJvgBxCSGtMt8CzDcclUZl+aVI9EWkiE/2qGnjfAoNyhEJLmyK1nAdoACQw0ktriCzyV+TV/185m7P8Tt/V0W/gXwLkxu18KL6dD1trpK9bH31T1GpEcn5EuK6cA8rrKZOMTX10ppurXFS+yDM1GXL3LW/epj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761616794; c=relaxed/simple;
	bh=VZg4gR5aCPjBfe+MOuq9HJ/F2fgAZ/fjfL1biGgbpPw=;
	h=To:Subject:From:Message-Id:Date; b=dzt2dG/mDAE6g1dr2LtLbWrqkGflDLJPSD10I2Y2KOL/RkLKWawHzrJnDz0g695lQ8/lX57Dd906PYTRPQ1X6U5yreJzoElC+6bbaDAzH+UaiwoKkeB/UpC80f4ITTELbj+DY5mf4AGZ1DT+ok8yPK8TxHDfDb7rPbz45GogwNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQWsbkSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQWsbkSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761616793;
	bh=VZg4gR5aCPjBfe+MOuq9HJ/F2fgAZ/fjfL1biGgbpPw=;
	h=To:Subject:From:Date:From;
	b=WQWsbkSfOPWmCU4k87yxmU2gopfNi3UqN4+wJwTSdQQ0Cen6TS6NA+B9iaQCvMjZv
	 xNzGTj3b1NL+NMH0yMm+e3JsQh0723wQRyyCcCcgdSHikDoewF2NcdAeLxwHOsMYPo
	 eXR3nBkyGvgV4V8OrzUGYesK1gMhqGerxJi2HsS52WXtW1mc6MJk8UZhp6oDF3Q/uz
	 c+18h0cJhCuxHGiFZY6kYVxQJp/HnTCqvYfQkjEQZgpExjugM2Cs03DiLqr3jLOejH
	 ulFuRJaKLE0Reg5BBbdJ+yQgnKFzQ6dFcra3A0QX/dI6m/6SucupZd885RwHwA7eMi
	 NThTBFtyZGsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F9CCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161679359.6176.4289086506695987443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c2583449c94eb87fd60d396f0d4d5b3a7c6ffdb50b5777a038d367492ec2cc
Date: Tue, 28 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761616793
