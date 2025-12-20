Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D42E2153FB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766217834; cv=none; b=BDlcvFu7Fkgla7mFHAvr0nIag+kvmptjhA95YxpC8ZGj9aK7uZCEqjcL3Djv+aXAmtlOFHxObEQa0AnyQaTznL0IiXkQ36pEhGRzUCoOoX/X1zPznavOiMq3XMqeh0D9IU1NzbGlVU5Uz0oQt2cKhGE0Zc3OL/DZSAfvDTqabdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766217834; c=relaxed/simple;
	bh=uRWFbxBGd9/WB+f2wCTooQgvj/FiJs5M2Zwl+POJdeo=;
	h=To:Subject:From:Message-Id:Date; b=pHYYd/MnEDYnH82NOta6k9g67q9D6bR4TsNAsvdulDclm+JA8C10aNQxsdQxKGCYs57q87A6VClHuC/QzPwQpXOl6klam4kK43iGhdgX2TzTlTKYgsAkABoL2zgJ8NTPQMpdXiN/mrjgw+Aoe347pEl8bI/QUtTcT2MTQXwjG2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrD3RA8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrD3RA8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5811C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766217833;
	bh=uRWFbxBGd9/WB+f2wCTooQgvj/FiJs5M2Zwl+POJdeo=;
	h=To:Subject:From:Date:From;
	b=BrD3RA8LR+0Fdl6Dx8OT9e3sUNzfvxEgcTK2ABDBj0OK5OLOVjZBa9+AwuWJoIWql
	 fCTAzmqyRVBspyOKSpknZySP3wqI+9ps46vqt3kJpeEsRetWfmQHTFS5nn5GkCP+WP
	 NHVpbrK2ml2vAnfRKXMYJe3YrQl/I/W6KhR+DI+K4ePRN+DxRohYUcU9Y5iCXe7FwB
	 8L5GiwgHYDUOeu4mPoijoSAveEEaJkyv8tRpzj1flkuN0fHP8haL9oMW0TwwolBlqt
	 M1jR53VV4IkzaaqQhinV/lxierbXgQvK/fNZoo1C8qD5PPBDmaWpbu3wFqWW1llq+W
	 5askfTS1EmeYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923ADE6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621783357.23443.14188272045613971727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de200545f427ed66461a11171056bbf9dd7b37b93fdb8735f565e3641687af5
Date: Sat, 20 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766217833
