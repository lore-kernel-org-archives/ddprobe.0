Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3A71386C9
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764420174; cv=none; b=Spwq1of07z0OhAWKJs8osySqqUew9zTevGQJy77eojTCAJdTXQEh5CvdNcOZ3zAJv9yAe4uDjgLMCRKcIdsVsAh6gppBVrkHoXN98iX4Oy33BRaQeXY3JIlRMfLjJx8+h8kXc2LNgv4Xc7AyxPV4R6EcbPPuv+6lrHeJp77v5ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764420174; c=relaxed/simple;
	bh=n6Xj97QsJSEdtxETU4pVNAqWZapFn/WWGc5A1AxTKbI=;
	h=To:Subject:From:Message-Id:Date; b=gPPQ4WtsCQzobCILxzpQKWRWpqkV2sM3GncLCEbDpC6FYhxIkp/thys8CZjusftoayJ4C7emdb+79iL4hNglCHq2F9cow23/+Yy94CLjr3DkeTz5CcXU5QvXfYC62r6E94UffNTneBJlI+IEV1+f6A4mPj+mJ5YoDLH8WsBeV9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeLED3Ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeLED3Ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764420173;
	bh=n6Xj97QsJSEdtxETU4pVNAqWZapFn/WWGc5A1AxTKbI=;
	h=To:Subject:From:Date:From;
	b=eeLED3Igx646ipApTWJ+JG7vvNfu+dtfOMwlb4efhMDVqt3VHCcHev4WNjYulLDRo
	 cp0F38b9Ac9WqbTZsw7+PBlI/XIwykOqZigSDgUtK4CL3/hrfzdqFNtMUOmBPrOKpV
	 tNo9wqo8+XpZTsCyWpLmbi+lHpB/FyukuUuTb2I+A4H6kg8PdXzujipbPzID9uq6jy
	 xoDoCRzOAhTZnHwidyzYn+CGyI8Pslul11bl7ZGDTFgws9JRFDWKBibwHfCHQ/GAx0
	 hbD1LaKOr4UQ0/82NGFNPq71SywVxkUxPYa2hRiRdOrmZ6J1aQ9yvkWAO34JO0Cexn
	 oZp7rdEBzhClg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA7CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442017358.30413.14949959415959705713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2a20dcfcb4a19d893d77e524bed48cf6fed06a5d4a37f40169122d8e3b96f7
Date: Sat, 29 Nov 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764420173
