Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C22512BF24
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736985354; cv=none; b=N7xvytnioYYaLxwgva3qjTQADgfCFOO2mzs5qrdtUbepV6lcUZ9uvncLT/8yYWua9qFFMoaczP7UsqMuoiBz7WZa/AJQfTjfhHxnEn5vkKh+SysEMVhDFExshQZ5xO0QgRONK0E1iXl/YJZoUhpbA1dmU5nkF0Ia341bSF7kov0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736985354; c=relaxed/simple;
	bh=X7dBiqD9GBKd3pCh4yIeSYmZF7ViwOd3X1SMuRwuhuU=;
	h=To:Subject:From:Message-Id:Date; b=AyRXdMFj6AvF/c6KPcNrmXW87VC8ybyVcYlaz0TVlOlvBA0TFtMqeYlwemLNRKnFwxIsLjZQPNgC5n+jQlbH1JWtVy1tjKJDmHpn8w094Ikp/Z/ScIKyUNrnnTALblfeFRz0Doi/PNxGuyN+ixn0FlbUmKzRP/etXSChvK931U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llyQXPts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llyQXPts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34ECC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736985353;
	bh=X7dBiqD9GBKd3pCh4yIeSYmZF7ViwOd3X1SMuRwuhuU=;
	h=To:Subject:From:Date:From;
	b=llyQXPtsQGAX3YjGjdUIrKhgPEgXgCfk+4ikB9zJ6NQdn8p4n7Y/9zJIGYq5BXE8Z
	 J4B4S/6F65D+tdwAkXEfIQoJ3MxC5ttnpPIW004HFktNUtWGI4JWJDjABN6z/JwIsQ
	 zU2IQBma927IfIKpGFCMKSOOg/wbyN76DlpBvYoZ2S99P88mGPGLXMzVIZWFELV3nE
	 06whgOOL2RZEfXfd7rhWqkKmFmiswnBhwYpvt/nxSE/RdndUnZFBxxmjDd1neBV/F6
	 1LKbgKXf8a5s388kjV+CVj41SrL7CfKiLQt4IhLNN0gpU7dD6SC3SfmG57H3N8Bz2z
	 hSJxlOUOHjCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97518C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698535360.25513.7875249021734592013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999f95ed6a7be0c7a501e65e09f6762c3429de023a34ab386da913f1230cfdfa
Date: Wed, 15 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736985353
