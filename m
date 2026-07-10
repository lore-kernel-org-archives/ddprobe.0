Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7F04499A9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783649314; cv=none; b=k2TmsLDoB2DfbkRkbYaDYBe/rwDh4rblib+bhfvmIocFymta28vz7M2+91Kz60n9Pt3hflLOAeKYLbjkRtqMZO7xcg6oA2Bmhz7WvErQvxd4h1yzcQFResZWpN7VL01J1Y8WeAj9u/q3vuqKwSFh0afeJU2fiJUVAmxGYpgTGEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783649314; c=relaxed/simple;
	bh=IVS1BTTWhm+5lOk69yjMaTb8TaDrNB/GiucOQ3TNtrE=;
	h=To:Subject:From:Message-Id:Date; b=mj0HG3A+3UC3BeSTl7z31Yxij0KsmCCMvp4E9YXae2nMZs2bKNgqOC8UEKuQUk3Yj9NAowVMkany5AlIweZ9lWEcjlPRdzyVnsg9jiTTNh2bHQ8bLua9xYEZQAz3yCx1IHaemAZSU8ZNwbJYKuhA0IS8z/or/rHlj42LJOnHd6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR/I5d0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR/I5d0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BF0C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783649313;
	bh=IVS1BTTWhm+5lOk69yjMaTb8TaDrNB/GiucOQ3TNtrE=;
	h=To:Subject:From:Date:From;
	b=DR/I5d0+PbEmkzThg7PARdvDt5e4N7+uSp/59mMeu2hV+1Bq0jh/Wp5DANiZEbMt/
	 2zly12Fjo63nBhzAKASJvXZUq4x9LBh4g6dn/EPpgbBVgHOSX9jfk4ht98y9wjk3NS
	 9FNLo0mX32YA60Re0T96dl6MsYiEhz0yO2iX7EqnZLa0P6LqKsrTE73IBHd9QJD0/S
	 HG8L3XPW7oO+jyfWcDKDbjjbzzzgBf38qjfSvRIe800SaIeXKJjGbo971Ks+mjICAB
	 3xCzADJEsdSESNEF+NBoERxs3efK72ULRnscjZ3RiAUqph7Myo8sk5XJKe+ewidxhs
	 G791gdTb6GOEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF809C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364931371.3240.14277259010839310237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c8b0345ab1ee1c6a15ad3913131acf5d10d9b6a2b24adc56a741996441065b
Date: Fri, 10 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783649313
