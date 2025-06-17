Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223A728AB1E
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750140594; cv=none; b=H+oAa2WO287rtv7MUcf70kMULR1Au2Abd1pQ6Bbe+CKpRR8TNosRn7VjrMmeGcsxIutuZYPS47S7QSrnn0lgOi4KpXx3JTESzsH++/X5+RRSFmJw5ejJsfTkqiNGaTs8+tw/E+qQCoeNfi3Q4My5Mw6b9y786ctIu3EqEYUdCoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750140594; c=relaxed/simple;
	bh=usG8xQUCFu+FOt5qOdZ1LJA42DmhZS9fYA8jT+VZfQ8=;
	h=To:Subject:From:Message-Id:Date; b=nahNTR6jK0ePkS//UZAI/4QDtyGoX9s46lNQUKKjTyOGLp60vXpbmxRPDqb9EYcMU+VFdK3VMcwlv+J/05xLkTfHxaHM2zV7+Z7ZcCq4ZzQWf0q6Lh4mUuxPRWmJdc1CZenukZsxKlV4PBlrj3aGETDfEXBP+PPV8nh14yCMjiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pdciblx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pdciblx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0900C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750140593;
	bh=usG8xQUCFu+FOt5qOdZ1LJA42DmhZS9fYA8jT+VZfQ8=;
	h=To:Subject:From:Date:From;
	b=Pdciblx0/qvqdeGEjzyMDHMyIP8IdO/hI7g5vik3dFww/6tioTLQk7CZwplnPzMAi
	 HfzUMHPwlJoNscCGITYqCngvlLTdZUaV35GmfNki7962Puu7hHkhS9g6oScjXZmNrG
	 OIa20CwhMhQbqGNXKuVWPTwOPr2UpfFWo2HxHn2puXdWXSLstsOs3aOvU3sxleCC6J
	 QRqjCZaTfocMiIC3TirweztBh5xHSnmnnji6Zyb0nHCFAaB17qRAf3AoLeFW3tp63i
	 oBYah4K/6BEtswFvC6dk+bhLzKj9btr2WF4I7NGCUuuNNUmdiDVK22iTsdeS/izqgL
	 1y89DgO1q/qTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051FC7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014059358.10614.4009788473641680951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f46d48f457d8cb22ac588607e1ec8b29329cfa587a41cf6d6e42847093a8d97
Date: Tue, 17 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750140593
