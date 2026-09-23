Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67233481647
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790205034; cv=none; b=BWD4fg0KFvAnPEULG13M3ZvvI1jV6EgevDAO77AY9i6YyP3YK3Lb5tJpLpmTaxzztGwOEJtQjd//1Ibe2fwhwVzIKj+Qz9oLNThy1NnBLoICb/ugvk6UEgfDws+SL+F8tY+FPEzW0wAcI3zFbKGVe5eosdcn+1ueJ/RJAd54P0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790205034; c=relaxed/simple;
	bh=+2JhhHc1H35JlcORuICqEpOT0kv28Trkats7CDn1vn8=;
	h=To:Subject:From:Message-Id:Date; b=XY4v9yCoRnaIrG2b6Yyh1DiNvYiS4wGUdN2KgqNYOWBckeua31orVbF+5Eb6bZOvMY8FD470NjG+BWSqFxPHaonUx673n95VDSlz9wSu5UQkxvItIK8jIs5Uq9mdxS33RGcOO9Ia2A2840h1C3BimF/Mw7RCb/w5SUOAv3py6/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOQR7JHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOQR7JHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4715C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790205033;
	bh=+2JhhHc1H35JlcORuICqEpOT0kv28Trkats7CDn1vn8=;
	h=To:Subject:From:Date:From;
	b=kOQR7JHJYtehhlnuo0DAJDqfPiiLOS+dX01y6+uP2BM4DvBKnFklBaw3ibv66m3A/
	 m8aagMBNTxDY5R+7R89ZvxEq/HA2ZXrwXZhtU8ldK82j6lC6ImVp2cuyzZysLSC64O
	 2FzgPW0Q4YhTI9KkYQbQ8eiheVy/4orNr2JKO/EPPFxujFM3kuk0Y1+Tg+ACqqyKNq
	 6E/u3XsWxUyCx1u2WcAE7NwjLFHLuFxrSiPm4YkVS3H2iMUDEmcF7sccMwCECFg0Ab
	 6MPkeSCfRDlTX366I1SZrDHOj9GduPkY0e3XeDgYIlyOC3UJPAyOHr9hyIy8cLy4EE
	 rS3akW2RHPD2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F90C9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020503371.21992.17702001323655165224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f0a194ba4afc433ec0b82d18ff0dfeb7b7c922ea5d9e3376d37e2e21b15d62
Date: Wed, 23 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790205033
