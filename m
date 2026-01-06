Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A27280033
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767692634; cv=none; b=CwWEcKnoMuPa/qGStHglowDr61pqY+R0MkMuU1vKwYdf13bbEtxEapG1rDtix0Qhtihd80cYdP8d7bXBYrizZ+PwsGo1RRUklWl18YiVpGPuJjeozPntg0QhbXHy/6DLJkEQ1YLAByFLIUUVjlRImt+TUkwYqaJ4YLmTlJVXNOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767692634; c=relaxed/simple;
	bh=hFSfv9SH4RoGWXFGdu1pwp8en+MLTJHDAl/rHN1Ce8Q=;
	h=To:Subject:From:Message-Id:Date; b=o5Bak891SPSS2cnggGUiPJemTqj0oZl/cqttxkhrBXgpFUYOFOYXgl0mwlEVW/PloybXCLiXy21U8RGcmZ465JasJUO2O36B9HrMYaEb3tPcL1XTUttdvNSQhBkyg/oF0xQSLCJKDsBXGopYFXu5spjDQCbBRWvF661vSoCvXKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/1UxtdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/1UxtdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C43BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767692633;
	bh=hFSfv9SH4RoGWXFGdu1pwp8en+MLTJHDAl/rHN1Ce8Q=;
	h=To:Subject:From:Date:From;
	b=F/1UxtdGa4gMGdZ+hPkFSl18v4lik/x4Yg2QznGd4KnjFs/hag8upGiEHxMC2As1e
	 b5SUPk4vdo22CR78OCJtHk6EEXpxiBecQzpkYKThMWOqoCHxx2H7ksuY80iFBqr63g
	 WMU07jaUwAjLdGdjZIiCabEviacK2UczRyZCIn/cvkqPMCraLaPp02Ll+HNaCHLy3M
	 9bHx3lSqW1xh+rseEk+sVe9Y0o3LZ9952Yb/KLLKfNCaSJheH+ayTLrnEWsAHS78Kj
	 QFI12iMF5Ca8U2Ghmz+Qp0gJMcOfJZNqskuAY1OBALgvK/2RGkh5F0d4fE/w72/So6
	 0ApmDQdHExoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA48C47BD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769263357.27828.8848232950850752156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce88a646a1a2b08dab3b878017253490a968ad746a8d339c3ce99b0396fe1b7
Date: Tue, 06 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767692633
