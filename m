Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A49208C4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719012143; cv=none; b=VCNqiNKw0ke2yQWRMHQUpU47B1hhC1ymzRLJpWAX50dVs7WOUbW8dLcZ0iiMjBkoH5zi74iLoYlWNUkjJvwvPb5+HfXxq7roHG59bQIo6WqptGXPxwiStec4CwOUzr4lDnX263zvuUfCqPLQutqjiWBr2bKRvJ1+SpimuRZGuWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719012143; c=relaxed/simple;
	bh=/xnZ3X4Cej3IHa8GKenmwl8OJT+0xIluaavx5wEACM8=;
	h=To:Subject:From:Message-Id:Date; b=Xc/x5/9hdbKf56mPATmB18akIR+qXUXDRZv2RzY+rbaZTkvBdxCGnhWilNcOTI1BDRG2C3SBYdhW9u+WCq1mIJ2zKhL15uuxZnRC6Sq6uHBaven+oI7KMhCsF0iIDjqxLRF/U5cs2PviJM4JEx9Zy9w684ShCzW+MUxErbLvtoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa9rbNiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa9rbNiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7995C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719012142;
	bh=/xnZ3X4Cej3IHa8GKenmwl8OJT+0xIluaavx5wEACM8=;
	h=To:Subject:From:Date:From;
	b=Fa9rbNiunWDbnH4juBUkrVPrXgqqwkOTQ+fr9z8sv/DNqcsLq6e3mEBEgj1cf1eve
	 +6Hh2OwMiKLXIFVpFGTg9VRy7xxMwEJ2t2MS9nIH/qTJ0rcojSWaQD6SKxBgQWIuWz
	 6RmutZEV4J9bMCOOK1fOE5TWaIFQu9rcWVYR4Bp6GxVj2duQlkUoasFZCp5vG9ELP7
	 07t/OaqfEmxmut/eQLADBvZhkpgrtqO0/6SDtQP15DweDSOybLdOU7DDp7xUn++nV9
	 vOuu0YLxFjx6R/C7gLRYRnrW/lI7eW46EwOg+sDgcI+BlA/MuBRjAZRNF4qlWAOWU/
	 I97pYMQ9alTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4AEC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901214281.2945.2824571320828589415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651533995d8406bb1d466be1471a470a5d49f64de11f52b724a0587da68488a7
Date: Fri, 21 Jun 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719012142
