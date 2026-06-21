Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8BC33985
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782042994; cv=none; b=ps4OOKMKBRQWth9b7FdVrQ51VCQ5fiHBAOOfT8wEvmVU3h4IU1Z7ASeDAAQEhVAsgr7xgXGe29216Q2MlZ8C8tlXZJYPNSbazXw4/gnGoCYw2dCMIIO5p+ruzHH8bkHvUDqDYY0GjLQ5t3ACYg9VdDMVnhH5k3r4dZZFGHYPE84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782042994; c=relaxed/simple;
	bh=O0/V1izYoYxLPQXqLB8iaWHzYs/io9yH8JQOA6bDt2w=;
	h=To:Subject:From:Message-Id:Date; b=f9D8cT0EZFPDfPWGg81G2fNDC0qJCYemyCC8gz2vmLL/zQe6u5aKwiv+lidWaC/JaaQJmyjHWWslk4MSxhEmATJAWopDJjG2rdbNcuF0NQHkdTHkKvI3xS1IdRDrwmBY+qSFOIIA0N4x0nIvQmOEvVT/TisrZsvqQA6oiLzqlNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFP83lPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFP83lPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEBBC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782042993;
	bh=O0/V1izYoYxLPQXqLB8iaWHzYs/io9yH8JQOA6bDt2w=;
	h=To:Subject:From:Date:From;
	b=dFP83lPmdPZY1o1Wg2bdzvSvksxVrSw2lMeZqXggI/ukidlOpQUci2hvQJYgxdeK4
	 GTVKxm3mKhWCSblhOLKoO6Ch2Du90jjDqKeOAAq4KSB1Vp58UMp/ODAAFFTr5qtyVM
	 caonTkSTRR90M22QkpzObZpmIkTr5cbwD3Fyt4nXMg+HD4yd+6OXXMeFVr5+iPhZ5o
	 NfZQr6hxp2YthlcCDKiv0jbPwUm0Yg00KsflX8Pwgzjp+HnKSh9JcsTvKFqFzYLdEn
	 74DCLiXhcWqwuccTFMl3YkzqbEpqSwqWzZMnyBp/luuGBZ9xSG9/au+sX7kPyL90CY
	 mXPqX5d73a8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A3CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204299372.6053.5318099991963566436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640284038a9963d269c12325d7f0d9b9bdab0b401fd9e7173e0c2077ff66ddb6
Date: Sun, 21 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782042993
