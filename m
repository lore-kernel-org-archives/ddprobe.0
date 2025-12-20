Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C15262808
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766228634; cv=none; b=WXGEIXvhBwcBU9ln5enc8S/WTse9XzIvinHMdS6cZHCgX5rt50NxO5bL/Js59ru6L0BP4WgeFGqtQMZ242ZM8OBgAqHxxM5W1Kz8ksZZuZZXY0DqdbKP/zcQi+RzeJhMyE8Uz1DhiAou8caE/d0F3fMvYwNOXLk6c+h/LLFFKZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766228634; c=relaxed/simple;
	bh=1LVaEHDg0O5uwkPVCz1/Ayc1I8nJPkUbiLWsHQQ+40Y=;
	h=To:Subject:From:Message-Id:Date; b=LnxSi5E88z3Sf8hkNj+icaTgrokSGQ7fPSxNSXe9IVEE5mLmksIXPgQjD3Mxk+zn6ow4X6k63gt2TMbnp1NSQfK2HIvDsGDUXfOdidFDrb71yJ3JD0jUHUWpVyUBognPX/MquHsVqZcAoaEWK8ofI2w8rCh9c77GAB54l/xSdGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwIZdjZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwIZdjZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766228633;
	bh=1LVaEHDg0O5uwkPVCz1/Ayc1I8nJPkUbiLWsHQQ+40Y=;
	h=To:Subject:From:Date:From;
	b=cwIZdjZdaNq6ggFH5m6V/KX5zNX8g3ZiAjQGKsBmNeyj1330K5cHYjjINU21Pi8Gr
	 /z2WEISvLmVctfviWTrYrgkfBJYgVGq3HbsmVMKQlkVj7nbiSbFT+i6SuW26n8VCkU
	 Bu3EA3M4qbUlftXzWOf35c/zgIAlivA+UKQNcXNT/m9cw/da6UnHJT10gt840r2O8C
	 4ZTjYj7CG7NPKRfjTDzatIhJeNL4f/OAky8qlO4p2r3DiWihjfEMYNqQjbLq+WCQkf
	 4KobvXVX6Zm6+O/lTJWz8sNB2nzEU0IPXc+sUdZoTkCGa0dSuMWlEr7H3JY70xzW4v
	 ZpRjMXsb1QE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27AE668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622863357.7651.2968693804993385845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df6e3fa68423b2cc408ea3367a0069a9541f5cabe88fe0337e863449c09fdfc
Date: Sat, 20 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766228633
