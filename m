Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B03F1E9B03
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746010194; cv=none; b=NDSyvo/wrTCB8WJREI2lrhzvqtUj243ly+W9um6BplJWUfPm34/i4QOFjyJFhO/FabFJulKk8hwb6BB2vh2dpyxYbxbAu9g8oN6aHo/yptmetFIbOvHPbyQVa7lSPDey1k8pJaGd15LKrlT8S5vIN0c8IGe6NZ5uMvWKf13BIpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746010194; c=relaxed/simple;
	bh=465gJUJ7zPlkHdjUuxlUG2ZysdHFSgpr63ZOfjXIV5I=;
	h=To:Subject:From:Message-Id:Date; b=Kh726UVrFQy/QtrGQD6doZoHRq6IMbte3ttJN57xOhDRRJNGl3iwQXo56nH0HnDxbNCzk9u2kqzbhEFysqwZcjRd7DPin5FwE1Wj9OfZfyL9eMxfr/Hemcxgs6bvK5T3yMCAZg8bbK+cUY0kTxuDieJD8YjD1RK4XAjJYo5GTU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fD1qpkUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fD1qpkUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A162FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746010193;
	bh=465gJUJ7zPlkHdjUuxlUG2ZysdHFSgpr63ZOfjXIV5I=;
	h=To:Subject:From:Date:From;
	b=fD1qpkUYBOMglLT9KIYIdZFX3nT1mxboAm8b+2F24wYFAykCgmHsZZ+dyWWYZ1Hon
	 S0r2W8xlvtM54QHC/lNFyRufmvI7xiJSdpruWbNcKzO0daDt3UZf1kk65U/oveNPwp
	 tB3FMHhJEVru1yxx1UV+P0Im/5llXwpxakEuAB/erLnZrFFh6Wp1cISqiD1Fi6VWNE
	 gkgSR55cdRwtcCpj6TizLc5ExrpcpdFaPq9YHIg9ENGU3QdiO42gX36IACrOYHeAxO
	 HRJzvjLpMyhwc3BzaEnFpNhT5Vhd4QNad76UhujkL9DVVygYsiVpotHsG6U4V2/Bba
	 1qrXiQGvmEaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C5C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601019357.27470.3093803880221278001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8032c8dd230ad7ea0890302462878e46d13ec004e5db1a45dd5ab2061b308f
Date: Wed, 30 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746010193
