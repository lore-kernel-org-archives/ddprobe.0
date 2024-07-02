Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447921BA08C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719930323; cv=none; b=d/QIXaJ97qwPDnyRSaFHK3bwkq6RXw+WvJJulaukO2U5/CXuBxSTfU/0Bs53gZsCSjBsVh8dP7OUYoNc3hqudvtu1AIBiJHbIf6WI+nf7M+6gEoh6Jq+4ZHSUaqgDWtA3m1OB4Z2dU94ORitaybFtHFq96U3eb0XYH8pQq+JEzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719930323; c=relaxed/simple;
	bh=ba81OcCIPkGTi0cqSUtyQ9J/gcQ546ZMPugtOhqZuuU=;
	h=To:Subject:From:Message-Id:Date; b=XPOACWpoxuj7EgBeu4JFDEX7tYObvPK4k292vq95mTBCcYih53FciOufJwlLJX/b34vaKMaybVEz/D90eE96Ja1WEgVnPSkgt7pBHpiFnpsgDuOxmg8sp9G+1nNLH9ro/cJX7o1RlIZlgD5tIiryN75MzSe+t0xTRL9e/ESoT14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwLwLADA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwLwLADA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED78C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719930322;
	bh=ba81OcCIPkGTi0cqSUtyQ9J/gcQ546ZMPugtOhqZuuU=;
	h=To:Subject:From:Date:From;
	b=KwLwLADA64xnbjg0pfCBpFrH9D8HOzoQ0dhBiMZNVgLUll3Ot6vbVnC++d+tBI/tN
	 cQZxY8mJ7wuzjDXfhj4IsemIZJBjLwbi+OXA51aYhZ30qebGADvk8X+vXPx8d4/2Qj
	 YVFIvbdAoirInzV9XgHvSPHWb7q85Sbn1oCv+3oK7tGlYa7o++F8ed+XwJqEF3mmta
	 FKbo7y+OG3HvaOKFRZXEvOVtePC+ODW+GuP4F5EQDbL94VG1Mr+9iKxe5V9TGnOzbi
	 afEhXmPHh9ZQqBlcldDN0td3356ZnpLsidW8DizvDbRvEtYwhw9mJcEZkxsVNVTA6o
	 IS/VOcbieiIzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEF3C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993032277.6052.10703762264345982215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4398a0d17028a8d5423c161b55d08a7f5a45f57b7069ec469b70290ae1eefef9
Date: Tue, 02 Jul 2024 14:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719930322
