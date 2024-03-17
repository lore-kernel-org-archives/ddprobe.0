Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EDF1B813
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710677896; cv=none; b=X8vnNwkgUzSHuyKW/yMytDdjgUHCEBVdJQagVkT6hWrWtQ9xmxpuaBRRlklr2zuT00B264r9hL4mr8kjfw6d8BHcZRESwWr7l49WAiQ+oMu0cD0Dd9ZrZai09lLAwm/S01h4gfolvXPTqJsgGajrzIzsIMoWSnkL2k1/gpMOVbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710677896; c=relaxed/simple;
	bh=Rzh0jkZ2dtBomq0ccIYBG5lqJqkrOrNUYUT8YGqP9D0=;
	h=To:Subject:From:Message-Id:Date; b=I5lzlxR0IWwLTPyGc00NeDm7o8e4SXTAjK5yn25K7yJq3zFZouWI3kqk7Yq/1gLYwqSCYS50v798KDC/4BUPhOo8aZh8sN04s1dib3IA9sORxpN+me2cR7OjljFzKYTxvcEYV4aFiT3hGklZTSCsG5Iu7Wa2R0z6aYEuBYp0qJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gz64ZD3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gz64ZD3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719DBC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710677896;
	bh=Rzh0jkZ2dtBomq0ccIYBG5lqJqkrOrNUYUT8YGqP9D0=;
	h=To:Subject:From:Date:From;
	b=Gz64ZD3piCcqSqZIo5HpbIzNY5gkN5lX6mOA9Y9HIoxRxDKmmlFx+DVj4FUM2j3Ok
	 1Fr9EQ0eLDV13B5wcLkxiVMkHKhiNMQqUDpiboBSWnEYjI3lqWauWBwILSITvrbG8g
	 qY9q6Tr6+qN5G3QGDJU7siGIbXvSAWA45gEKmro1TWQmynv4zsoOYXnGkOaUDQfS9m
	 18Erd/MVqFcNcaBtpqEdiaGADx3jgR3keH6+6G6pJZ/wos/JaZyrQlB/Va44zwP+at
	 D2VA5BURhx44yyAzITpsliUHh1zsPgSTsOhOBT834pbN/LhaSQ3RWwhVbhbKgJ7dZw
	 H7JBwnDHOpKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60202C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171067789636.24785.7880490828364010645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2735921fcb994e322c7b90eca0a611b971f50ccc292862ddfdecf1333bb94da
Date: Sun, 17 Mar 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710677896
