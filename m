Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF87A334C2F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772216093; cv=none; b=WPFl+OXVydfivQPV/x/RH19l0cLe6XXPMvRY/Ljnvn0RdRhFqMPU7zDGzmq5W9vvctiNdMhqtPdw6mYTTIsuO88qdF1p2iOvpH5ZGSylVtwAvUf9qHQ7QxgNdMHLGUU2nFb2Xfcaa66G0Cktx6V3toL2d/5SknjGuZB4uze8tXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772216093; c=relaxed/simple;
	bh=htKoGcwcHCGVQm04BTCenROEQsviTi5xswk4B6ToRDU=;
	h=To:Subject:From:Message-Id:Date; b=j/PUAsnINLtDok1/rA/RuBn5jycOCOd5di9dnMjpwWd2kydaal9OAZa+jWvjXbR012uNToixqZOAuN5pT0aAOFjpAFRnyKEZNa+qWp+imgB4LV2b63cjH0gepN/ORDe97vEHO5IzOT5xcBhdjaKB36UNdH8g82ZG/YSjLnd+4dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCSrAoDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCSrAoDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6690C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772216093;
	bh=htKoGcwcHCGVQm04BTCenROEQsviTi5xswk4B6ToRDU=;
	h=To:Subject:From:Date:From;
	b=CCSrAoDm8PmYwiqjYF4waihmbrmKFFG1I21XNBWy1ogOgkxhMt2Wcelch5JbLFXFr
	 +d9HgxHIhhMK9gbC2u95CyWqF4YlvnFnqZBESt+05QAsi4bJl2xVw8g6SXkDV3D1EI
	 48SIvjhMhdIn/589TCl9a4jcOpjHSs2l5/GDL0eOR3K35zIlTqWb8jIBW/mqjaBQmZ
	 YWozioNQmG9RSQaGvtKlwuLl1w9Y87DUIgSYXiT+8bt5KVMElE4g7SLn/KfoQnaRTV
	 G71Rk4K0KhS+lv8qLRYw79fiMRrONkMI8HY4IxYK2zWeje7PlBKqMX/yqz2ux2MF4T
	 KUSYlH2LJnzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7EFEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221609358.3813.2905237603373735727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdc4031238042851a72a537805ba34c63f7919ea923b4aa4d7a70be58ba162b
Date: Fri, 27 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772216093
