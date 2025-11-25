Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E73723817D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764078774; cv=none; b=mfv4j0oTfWpd9ujNZ2aOJ+H+E4yGRvPNvWRorGGvj0jp6zzPd0gxBLbxPaj3ZfwgAmn/yYhaaP/VcjhfGQ03eAZvcj6AdeZaZ0nUXIziUDhkKdQfu222qJVj21//qpW2N4mNznoNuSD2eYU5+ryoTfmygL3FXA4Np669U4U18dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764078774; c=relaxed/simple;
	bh=/dqCeuMno3q5xJfmhQun2wAPDJcxHW47urBTlHjaur8=;
	h=To:Subject:From:Message-Id:Date; b=mX0V6mbqXpNGW7vh9bJd9FIAK6Pjs3by6OGJNDk3IBu6aJcu/nfkZBZjyaHyKHHIO9jqNG/OKHOD5h4HkDdEGvAfLJeAoeZY9VUl23haybaKZgAWwFozWWgjqhRP+DsCCXCQLGCHd+g4dIoHDX/mSWDbVPGcE0wdWitr+DhMcQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRxmWTgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRxmWTgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5552C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764078773;
	bh=/dqCeuMno3q5xJfmhQun2wAPDJcxHW47urBTlHjaur8=;
	h=To:Subject:From:Date:From;
	b=sRxmWTgOdjAzNVlk+sCFJTpZl6R/tjYcSdLtPZJb7gRjySNNY0iArdvL3nPSjwUd6
	 QdATfCABVz+zxmkVWa7TIsiKAH2rBdx8WbmMXNWvwu/Q7ZmgJF8cHWHuSBrBTco49U
	 ptpyK7p1J2LmAnmZfLIwFoH0IKVvf5QbaZojbfNc4ayq1excDEgI4oQkB+fJAMN7kj
	 f4ioCWYwXBjAdrz6roluL9sK9ShUPLL7MG+wYQW1MQbndsJk2ITeJZHlW+INb9mXCy
	 aRrn/SL3dTpw49pMqLrBSo1kKJRCRON5ChNdUCOQmiuF/rGa6+wiLHEghDuekiQ1nI
	 tBhxqQywO0OLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93212D0E6E8
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407877359.28511.1955920972022417081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8d815db713d03f08883f411a239df852a93e5f2c4f39cfd0d1bb94ad2bb9c8
Date: Tue, 25 Nov 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764078773
