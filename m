Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2180718DF9D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761464394; cv=none; b=J/Y5BT6lQI6Fg+MKErPB0MIC59dmbDP0QX09eIq7GGicMfwi4layu6mUqWgEBOcc7SEUSkdpFQ6zCOqySXAxczJgavuXVNQBLnabB/HGkrqfevmrYKu3rtNCf5HrHPk/Xoc1F4uNVKI8BxQhrNwgjuFaYvVYnBFFtVKfyaHr/hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761464394; c=relaxed/simple;
	bh=Fbs5v5vcJJAxvg965GCV4v4gjSIMhN9u3K00+KNuxa0=;
	h=To:Subject:From:Message-Id:Date; b=Mr/UrcD3CDlFNWhSBfbzhTccVoySPUqICdsr5e70uP97mY/ZDJIGVTL4wFM8EVowWI4BUZQfMUSDQbt5i/9b1u2pToRh81Q0HRCN+4rupa6LcWIGl1YR0yDqu9icli9YY7fVXNR6whKBaITy8XP8y+iHGAgjmF/pnk1Q4c/Vlc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOm1qQTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOm1qQTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E351C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761464393;
	bh=Fbs5v5vcJJAxvg965GCV4v4gjSIMhN9u3K00+KNuxa0=;
	h=To:Subject:From:Date:From;
	b=TOm1qQTz9E2fjRiAcir+M0ZKU6e29Wr+3qD+k/hcBIA/LqOUfEhG5p+CM4l8TpcyI
	 Yn/b3KASclCE5ch/LwdN+LNkakb/TO2mKjYJLPdYpL03iwKyPMeEy3BlsN1t7rLQ+Y
	 5m/vzV1NyoUllrBz73QPKm+5FrCkph6LAG+8rLzduNAw6GhZ2csATvDP6G+avDewav
	 sjIu0uIyIKT831I+2Tlmk/2wvNOfxpX8UgEhnUOumQcIXJpVj4sJSGVDjtfaW8VZpH
	 IYqcophmyIfHA/LIJZplkcJVSo/C20eGu6Rb08iUw22HVK80UIB++YlhqXsqEk2TpS
	 qXn7Kcd1sUQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59ECCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146439357.9290.12490241747578493965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6396c675aca950d2e7e6a90d68142b3e5d52b22291f6fa764515343a4daf9b3e
Date: Sun, 26 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761464393
