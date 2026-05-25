Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2498E383993
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779718354; cv=none; b=MdHp1VDkZLG2FemsEco5c3WI/mgQsqerQ+s+q18sj3vSOwabDLkhJhF+qIzz4aXLyoj/ywV45yt5RTDOijBPg2s6i8XbOBLuPEfBFZuUCIa+SWB0fGCEK/a5QfgPQzUTVBgfPVlauWsSJoCodjoY0RnYOpuwzIHicOY1R1sNyC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779718354; c=relaxed/simple;
	bh=W0tLCMKrDlPM10S5vNDFMNDs18Qr0wlJMeeHmJ4qGr8=;
	h=To:Subject:From:Message-Id:Date; b=UpPzHMmf0YaOO2OJJot/fC0d+sltY47XINoCZJN3h0azwvRde++5HrGY+BDmxFcKQBhthg8aJh+WVV2RaUExf6dxUv5m7ytu3gY5PIctaWc4+GFr7S97LtdRFqEVe2kjkHnNDop5DDnEt92tVqDEzY289gsfbBaXxy0pRWT1on4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtUpBMMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtUpBMMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6FFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779718353;
	bh=W0tLCMKrDlPM10S5vNDFMNDs18Qr0wlJMeeHmJ4qGr8=;
	h=To:Subject:From:Date:From;
	b=DtUpBMMqjF3LYBDb3U2jnT4N35dI51DjNrXfqob930rW83NX3Er8RPpONntcUntcT
	 c4KrqLgL7YRROAPF97Dtxoa2rgFLu9DcD7RFqd2YSrLjlz9gavmHWk2qtoOrGgSuOR
	 EudMa+woV72e9kYicxvxE/epX2jy1v5UAk5kuzQ9OSVJ4nxQGqYu3wrEdGrJoBdBJh
	 DdvW1A6u66jGGQUPCilVSF/K2NIAfov6BrnyDooJdoYVPHuy4AZPegxmxhrlFgDXjI
	 U9adkNcaPDGndTQ4M31hrlbhIQhDDkCCC6WMyyayiGhLy9ULuR7ZfvDy/YrFjjKvoV
	 7zAi1N+7lL5YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C02CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971835372.15674.16064345552034924517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c4b9af7c399aed7e696b0cbbffb17dc5a8c5f531f2f4428a402444a25cd9a7
Date: Mon, 25 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779718353
