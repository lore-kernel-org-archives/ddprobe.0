Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE5A487BE
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744159194; cv=none; b=WRyWI/T/FZlwMD1CkMydAfYyr4HggKBNE44ecF1yt/5KHos3gvzy73rKunriHYzusYOWXIZuJ9NM0JVm4ntcXnOVJgxJ4ERE2naQPxdfgbh0DpcGE1JlHf2K8aG4zO0qC3i3llk7jLCuzuUnXqNVcRfyu/BGfi5PbPtbOOPL5zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744159194; c=relaxed/simple;
	bh=zqWOs+qfl+3eevSD7wZeG2dQIbVYC5ZS76XhraoMrTk=;
	h=To:Subject:From:Message-Id:Date; b=hMF1pP40xEVbvSR2zP2+CZCYey2SpCMjDxoXqjc7KW7Gd5d/IbeGw1bEnAjYwstfBOXgEK04VGHyxdXeJ97gSKASLJVViRjLYW96C2i5giN4v+xQVYKiXZOCm2lsZ2V4GPG9AuayYtgRfzFNmYlDYsvUUP7elxkpYpJA8s9TBEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkvcbxHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkvcbxHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A88C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744159193;
	bh=zqWOs+qfl+3eevSD7wZeG2dQIbVYC5ZS76XhraoMrTk=;
	h=To:Subject:From:Date:From;
	b=nkvcbxHbmDKxJNqmF5QlDWygKia4VHet4/LTmhCQOmFRgBZuWZ7DUzHaQ/z+CllVO
	 R6hUOI/+QI85aswCp05ooWHUliG1kqpDedH/oBHSuZUGchBE32ObTVthrhkixyHT1S
	 dX5Ax7HoKH6m3pntWN+XyD3iQXmkJ3Cpf6O12r3xwCKuthIe7H7z6ho+8SM/YFJV9v
	 QfV1+wFCIX3+4Ptuhw0Jul+ODu8vMDPmg24GFKGb/wZdukwbHpPl1pal7xZHByDaFe
	 c1SndamYDnRMfFzvPzQUR2xdiMaxZd6oVc0r/GDygXgHY9d/h1Ee9Dy1/as33FbtUF
	 nt1pvENDQpapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99826C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415919361.2879.8505402205319693002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9805b837beb82d472002bd10873bfad15f3036567fbc13524c4aa0e9536b8353
Date: Wed, 09 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744159193
