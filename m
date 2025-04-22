Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE211F12FC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745314795; cv=none; b=Oe7HKWxlhmeGj5q9UdacqcsrgkeEf4U7Ax3I8erF2INkWFhG1TK0Xqkwy4ybR4ua4gAPbqLvmRhyrqBXRcHra2K0YFnt6PfwWxxP1aMXHbkn2SlvF8zBEG58iPOwuyI3NVDyyPhvRMN9AnUwRsqevfM2D8VgaP7eglQrj+fm9/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745314795; c=relaxed/simple;
	bh=HrwN5EBlWEOiHAVzibn4p0K3csgUVio72+nhVX87020=;
	h=To:Subject:From:Message-Id:Date; b=bGAjgeTFi4ASWa6FsAdL8j29jcVuh7fEmel1iPjW77sP6OKsjqUK7IXOazcphQ4M5642LTUEfI96cksG7oCn84hxsM6C3CXy05iddCAwDv1xG+mvHW4tEnYfdCs1AEYu8ed/oA+olk8TEkCAJHvzBmJ0LDg5EJxC0klzg9V9wEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onF9dNR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onF9dNR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02BBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745314793;
	bh=HrwN5EBlWEOiHAVzibn4p0K3csgUVio72+nhVX87020=;
	h=To:Subject:From:Date:From;
	b=onF9dNR33RfqYI7Z8oIAOMFMeblchcvPRcyOEThzIZA+w/Y2C+nCVON4ZOCFoJMwa
	 G2nrUQt3KQdhrIR4Cgig9U0WpP+m0h0kLfRtGaOuLb+dwRXLOzt4m3zKfkq91DMphz
	 TXWz4ZKh3sjBDlKW95WC3b4DwZafSkqSZEMIx1C3M1mf85r0R9HNVuS/mZ9+H++Lvu
	 d8ScYPwSgx93xyBElhiO9J7Xv7wvO2OFhj8R3LwS4BgAmeaYZRP3hKcCb6xUn9o50y
	 nk5VFTgla4d0yurr3W5Vh0IQGsCB3mWdz03XUTvRWPNxD0yG+9WxgEXWKJ2mLi+Gdr
	 A9vW5roXQf6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F833C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531479357.15931.14689099953353688219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7660081f24f435b43ece060ed5e581295330277345c3c5c0953514c0c479bde3
Date: Tue, 22 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745314793
