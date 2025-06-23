Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E001853
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750637394; cv=none; b=GWQpeX2EKI6yrP0hTNSFRoc1IzCxfd1w/BXqcV6PeTQcOYuqII/HF/vCzqJIxymSDnYq+Vtk8Z24+MgY1BIu+QgWKHxua/2iK+/BettCEnd0m7bElTHSI6wi09ZFy/LIOXC4c0CZE1bqXn7GSHPUoK08uSc6QHETxiiU/eQ41tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750637394; c=relaxed/simple;
	bh=EC+ucKoKdOhCKVboiTlhNsZv9EmgcMZCaXbUdWHeepg=;
	h=To:Subject:From:Message-Id:Date; b=MefPSJtIZrtyfCiMY3qciV4n1SdkfZoKQFhswaM70z72tzQxmQU+ph1dNMdCWK9Z+17wwKpHEMJ6uuoJUdho1pAGyF/5O7syaliq0CCjhTBMTudYaELtiQ92AbLJz8sIbco4fqYLN9tLL3UOXl8m5zgTIsdlSBBOWoKRaC3F6V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmgyVI4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmgyVI4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5295C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750637393;
	bh=EC+ucKoKdOhCKVboiTlhNsZv9EmgcMZCaXbUdWHeepg=;
	h=To:Subject:From:Date:From;
	b=YmgyVI4lSTCTzrKV0lHyo6sU7ZBXZfIYxhhqV5qCrVWD6v1gN5axcPEFs9RRhCMS2
	 NXg04uMT+J64hJRgHuAqHS9qkcK54TOMjRPvwrl3RTngV5J0/qEdtzKRa9y6G+PkpT
	 hyXF1hioKtHrhEvOWjPI5y3oteA/HN0yQ64zZzJEB0/7ond4kSlDk2WZQsE7wc1zar
	 Jy4c0hcgo1eCbdJ1In9yOTYzb/gwrzzX+OwvSqQSyM2mGoBzYJeI2wljbQa3EikHCC
	 wQDB3vbAH9LP7nTdvoJrxpqaWuyTX+qniyPcvkjb8s3nPL/y8kJDi4oZpF9lzCZ0QI
	 Z45gvcLJyHVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95125C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063739360.13413.11224975392171010642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8be8f6e72d7be236ff7fb16d7a5328eb0350661a34cd3a2dd26845dd877a7d
Date: Mon, 23 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750637393
