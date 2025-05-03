Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7AAD529
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746285594; cv=none; b=Hb6GNAfBLbjYPpbvA+O/OPfQVLuw6MdikCZmbaTgS5Y7eYFyHvEAaZw7ynVoMTRNEAhA9YyqKOBeoDVVc7GFketlGvHmZzyQM/XvN3lChsmjHU6nygGXjzfnJ4bVsJQZamLjClX3Z1wIEssKEIAe3K7R02H+dxL1zbvTdJSMT/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746285594; c=relaxed/simple;
	bh=ods2acyPhcpl4R1E7bJ/34tVY1HKyJHkg/MUBLaIuiA=;
	h=To:Subject:From:Message-Id:Date; b=GCNgxaB9sLVZ6CRdLA9DSBW/XifcEFpPuQjiIe+IML+AQdPVlOTdg/ydDdUpBXyk1MuPYZ2MB0hb/3BksZE6oWDUEzPOBzZlFBzCvwcFMLnbUfZVvYQTUwk6jYEbaRovmbosjzGL6QdcLt3H8PCRkTNajTMO7/kb+rbJd7avT0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMPKroS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMPKroS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0437C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746285593;
	bh=ods2acyPhcpl4R1E7bJ/34tVY1HKyJHkg/MUBLaIuiA=;
	h=To:Subject:From:Date:From;
	b=nMPKroS0zXHhzQdnJnvGz1oHmKOAMHpXyzPe3la8pNJsftgV5Hmz/ohlJ+snTqx65
	 Pp3kOKTrv1I0YfZoA07Obdm1OHU3RT5bDDCEN4ubc58NXw1xdiQBRd6X9rzhujH1g0
	 cTsUYo6O37l1bsfv91Izj2nqZDv9dfzsztNkjNZr+OWBC0P84ZG/p3nG7foJauMw2q
	 s9xOvFxeqImPg1gJ8U8koaAoQsBaHv+WOlnAHbNetnJjr2C4CBglZ2Vi93OSkld2It
	 bRx9kK5WxBaRU0cS3gx0lh5H2BkKJuCjuCbrSRawOYZxY5gS1GgoFGjntby972S7VE
	 Kng1zHrn2PFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBAC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628559357.18790.9106127074127135046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f91267f3e4c28a07ad27b82dab0ef1c3e219ccf80a669ea777179b8dbb4244
Date: Sat, 03 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746285593
