Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4844C19AA56
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744490394; cv=none; b=I+Wa4htoyUmLJ1AWMjnjXEKwYgVu5m4Z2DdKeYrDEMGiZUFfMaPUZvkmGwuhpIQSgyql31+QlNV13u73Yxe4wOaJTFXN/4M6exm5z+tHzZ84W7A2ECGtsB/LGnw+5k2PolnPqtxhU2jCajSvJci+tO/jVp1QMqCtQLLpJ3DB9iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744490394; c=relaxed/simple;
	bh=Ye1q73Nz9F6eJJiY0wVqoSCgeE9EkzRqkyWRDSsNtms=;
	h=To:Subject:From:Message-Id:Date; b=nRW1PfAjWYau6fDbFeBbom1/vGj1sNPKaQqxZ/w0nTnnKU/g5oJ6dsD0FXY+cbcbm55eImjDC1DUiFg8FFdY9SC1jaBhmj4MPEe10mUAjAajreUCr6Uk/5UIB9AsJx7X9V/JxoUbLlFGbh7vQSMgxTKxh63SsKTLot7mdHoaBfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iklD4LX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iklD4LX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B723BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744490393;
	bh=Ye1q73Nz9F6eJJiY0wVqoSCgeE9EkzRqkyWRDSsNtms=;
	h=To:Subject:From:Date:From;
	b=iklD4LX4SqC36yhzkOLbifkZq3D669SoPadsxUM5RDkamNwpej+2ohv06hdVSIHz4
	 REyCk8yctJ7I6U2x73d6nlhzC9BpjrAnwuyeKyARI2+/dinIhCKNgbdF3SmioheR4Z
	 FX6ttCX63pop+5nPq0/g9g23MQuxGRaMBFgq2GosaehSsOVk53y9xKmdZyJqsvKUGa
	 StuSMW7rznSamlKkp9eXdhDohRyf9p8NKGiSm/qUbsArGEoJuCOdsCpIjp3aU0dlzN
	 paAd742LyVhPOprYT7pwa2MPbwgPKZ/1DGbtk5n0y5utO2GCXl5tw6E44/0K9Gl5yp
	 Etf0CTRe+3rcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E612C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449039363.25492.4042071291586415129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82aa66348096a0d9a6eda1c94fa28b0e24c3905696b95540aa499d6a5bf2d522
Date: Sat, 12 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744490393
