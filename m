Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13894202976
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758914394; cv=none; b=iQEqz70VtFB0gu0IcToIfxQBCmUXpts/7mMZw72IXXa4bEr6rqDDlkTI+iz27KfzL1sfQfXkYi00w46LGhLcS6dWwrTC7uiEo5riVzpkLV9X48u0tat13Zx2RnDuoVnKg0j6z5EulG0FT5S9zutqe95HxfepsxvStGRHmoK9XSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758914394; c=relaxed/simple;
	bh=yT3F9PrvdQNID7JTM4qJwiMQl99ZTjALWecFxFdfBno=;
	h=To:Subject:From:Message-Id:Date; b=eqvwcvB2HZQsD7n1Y38LR7EomjBPx/t7UwJ/8miTiNmi7l3dErBaiMzcUTOEkh5lbSajbXtkCQlSFQp24scLXOADmYvoBrVmu/Tn621m2X6uy7EFoDSpcg0BoKn1EGOw4KTCmZ8PMFr/1lWRurqRBwjMs9vW58O3V5i1oUZvsnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlzsXm9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlzsXm9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F9C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758914393;
	bh=yT3F9PrvdQNID7JTM4qJwiMQl99ZTjALWecFxFdfBno=;
	h=To:Subject:From:Date:From;
	b=AlzsXm9YuT20Pw0GOQZjzFjgT0VbGy3wSvC/QFwrVScmuJAy6lX2E4hFabNHQmMTs
	 U6JBOwzVlBturPwRL980VT4zFxaHDhokXqm6b+DvrAwbqcre94YV1JiZRrKD7YDAlF
	 b9q1Arp0RER6tw8ZAPX3sotMQVBeTQsD6O0zp4IpeHnH5mW+MAtjrIUX5iGruog7cR
	 N8YASorQMsSGQU+LyYiFvwniNnsFdxGGPRyQU/bEbTf9i/HWXYR6LMcskIEehytyRM
	 g3H9kEwHeWllkwGzBu114mcWPv+KZTlJ8r1cAV9BcOy5zJx9WioMF3RDcnJb5Gxxdn
	 33rnQ72VXL9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC0CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891439358.29590.867752646688677905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f2249f34b4d521a59bf011cb353bcb531d0da67556ce7742a9261b7dc7ed74
Date: Fri, 26 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758914393
