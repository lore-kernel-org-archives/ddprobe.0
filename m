Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55201217F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743086394; cv=none; b=JtiBn0lKI3pOfZj5FXKW0NqPRUOLLZjrYRNoCUEj6VJ2D+QyfZuoI+y+1iTWgnDlw5tvMRtuHwZp9YF14O/T4nIitDuUva5H6AcGBd0Uv/+juGIubPdeCCF+D3dFUsHiicyDt+k2BUxP7nDN/VrNZglQgFT4AHxn4OH9546b21o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743086394; c=relaxed/simple;
	bh=OsfZjKyEHC3sb9k3HBqmrYFUAGq35Fh8JbVTNV3AEUs=;
	h=To:Subject:From:Message-Id:Date; b=McLELsOwI4jENzr9RSOG7Rr9/zv+ZTayB7KjgY58Syy9LsOrxwQkX2Jt5SDG0Q3rrmwYMDUvPa9niJqcdtvi7e4VPwHBLK77eCe0UkosXFfCRNosAbX9HU4ofcd6w+g11cCijNRyI/AqRFwhMGSDFhJnSHH3fwOsWZpMtmLoalM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk7QbfH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk7QbfH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF19FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743086393;
	bh=OsfZjKyEHC3sb9k3HBqmrYFUAGq35Fh8JbVTNV3AEUs=;
	h=To:Subject:From:Date:From;
	b=uk7QbfH8vHDKj7NmQE5JhJVQ2J5VneVGgCD5sHMDjCn0f1L/swSUKGoKb7ELql/6K
	 +gy6/C1vhJ7RA4afIFNQMESnF7WF05D+FXfg/OK6Nr+J1zZJVB7fsEfj3D7fwuhHNd
	 LLDcIMl02jN6AUoMBF0TIBQ0M6y3U28ePSZHPVC/adcmS5UNoIB1DInz+dgSycD8JY
	 IhrQAbETjFoTU2y8GIv5zZlwvXVn2JAGqU9zVnN8I+VwNQWXVfwAoQnTzpoRCTUVtk
	 SZNXgOoNV/UaPKQkt897OIWjDzu0DlOyervllA7RlkzllQGF7HEWf4c4WCjpKlXPMs
	 LgJgI+Wttt5gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A836CC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308639368.29795.5435660629726942447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440b3ec6b25fb4926aa2a8a0a195ec5583ce8caab7e1f60faf040d6d466e6422
Date: Thu, 27 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743086393
