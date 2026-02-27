Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B11236D507
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772234694; cv=none; b=sx4zLcbsTxren+gD6hpvW1w0iTolSPAfMdlHbX7O8FgcdpgCqzl9g3b/L+Sn+nSinVC69UoIf//TQsyvb5GgSHfgdf98clk386BC8OmQO7gxaZ52nboCDo0jFqujAS5guVZYVnu7D1NVm0gfZqj0BdCatKGvXFZcasRrVYFuXzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772234694; c=relaxed/simple;
	bh=DblJX/XW8NqQXHJ78elqs7ZRTPXYRcrqBeIn4Tv3u4g=;
	h=To:Subject:From:Message-Id:Date; b=FO+zlYXWEL1/rUkx+WtOLQbGzTWwFG+Yd7+0Ps90WtMOpi0O1wjUXacRKwzEQyZ3kjmpoWVASlh2x+anIAM0Yq72SMpYt7g2RgXskqbvNFYbKacnNPfNoSCa9s350qIT4X8fUvAWvfQzYWLR8a+cVBxc8knyldSb21iNqryqK9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqTpA0qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqTpA0qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC00FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772234693;
	bh=DblJX/XW8NqQXHJ78elqs7ZRTPXYRcrqBeIn4Tv3u4g=;
	h=To:Subject:From:Date:From;
	b=IqTpA0qbHnl4RIhejtgpvq4lelUKeAAfESfgVzlF8mZXJu17aeOHHYmw/ucog7J3S
	 0jj3jW7k1XXaLy+tYeGGRHUaaFmROmJVUeNAsOtAeJzKrjjWDJ+nnH8UOfkVNREEhA
	 ANHXbhMCqtjsHt8aODTvzKwruHUhDXklngPctpmuXC8ImuABCc9HTlVcBglvdhqm9c
	 KJXhwaUx7CDGks88jXkjI/mDO9X54G0twPDTSTGnjjgdM0Lnxa4QJ5yuxSCugI7iV0
	 UA5b8vyhk1iVV8VNq6X8hLRiO9GWMHwQsMKLJpuVwV1nmEliqE/J6vv2bzjqFzvk5K
	 OkrMAwazquz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C03104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223469359.3468.2870234681371849046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c044d3a05691fd91e228eb149684c1df6d734e5e642b063f5eae2a9f9c8e55
Date: Fri, 27 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772234693
