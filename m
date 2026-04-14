Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4821257E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776134254; cv=none; b=QTSlKJdkbiDc2/t1mJdIxKoRPC3RbWYSAjJ0EX0iBpAzgJyT8LRL5RK0wg1LXyGB6oxa/pwidka3wv5Lg1R4/BKDCRs/uJt8B+eoivvEmIXPHU8Cp/ws8PzpYSyM8qT4xk3ye0oTa7Toj0nEor060KQtOaA2mhWc9UEypuOFC8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776134254; c=relaxed/simple;
	bh=N+EYyJtL5fEEVL7lrVQCGmY7sFTJBpyyDSdkS+rmovI=;
	h=To:Subject:From:Message-Id:Date; b=gC4FQ7Cc+bkI7P/MuNSZgKUTPvdjvFpO68NE5VvgyaIffhSg+ncm+zpQPUWpCS6LBev9J2kSJwo7Je7HsNlcF1Na6PtJuCSfEoBbxSuc1+TmZmtfygSK/ZZeQsXu1y/hxSzhmrf0MlAXfVbD8yGJxfvhTpRqF1lZsFmRoQ5wuKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqqFg0mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqqFg0mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07CEC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776134253;
	bh=N+EYyJtL5fEEVL7lrVQCGmY7sFTJBpyyDSdkS+rmovI=;
	h=To:Subject:From:Date:From;
	b=tqqFg0mzWRiWYa/ExEm7AswKlg4B3PjsmswiydikfGXk4QZ6ZH2Vm1GardZ147388
	 1je4NFcYvNGkTiEWvrY5mm2mnQjNqOF1vtXhmX8jMxKA5itXEPlfsSrkkSX+l3+hJw
	 iYYF9+1hVDhx1savQcc81WRuD0Y79oqpX2ByNgN3J9KOscqAGzfdL8d3dFoCXGou9j
	 cSUZuNZoiRFqeDH3qmEBkdqmuSDNMs/IZUWs3rO9GTipK97RsoMaOs+HJi04dYGhKA
	 LMz6HeJip7ukLFHpQOxiZ2MFfDPzemUIZRJsNXXPALKsCpjM+H+6pvkt68G2G6L9ls
	 D2Ed1oWESuclA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE459F531E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613425369.6180.6933619441281793962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6636a2f50d2f4add145a8fa14d2a17d532be505b1c47413cc4bd5bde4a48dc59
Date: Tue, 14 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776134253
