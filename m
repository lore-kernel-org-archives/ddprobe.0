Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE7A3B47E3
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782799714; cv=none; b=ITdwLuq//vQhpchHsABFCxXLLWpaWKdu5SzaYd9Ncy2+oiYJ3oC6YdKqBDelZPuuCbhbWkJUn+0p7IqMWuKhMa6yf38WC89qQj/jNvx/xoCMFCLWVEommy79KUQXkP+ORfyZ+/HE7MyPxYNiuyB/+FEVk8WGxXE5+qsGoe7Z9E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782799714; c=relaxed/simple;
	bh=pjYMDdO3eT/1O5wDOxiD6IwikQfqK8p7xBWmVJeKJOA=;
	h=To:Subject:From:Message-Id:Date; b=ij8Lvn6TyxiZDxtZN8bhklf7v9qA5aOFK0m95R6OM2lYm1kOaLmt5oUo2FQ5FlP/5jbAUCIw4aHZGIVx6V31pyfgan26Q98lniK2deqI/pdJZxqJzTeDcf5SoT+/rr9PEPJdTu/qOHrzeZFm6dTO+zTC8jTImI/aXWC39JFYnqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgcC2x+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgcC2x+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06F3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782799713;
	bh=pjYMDdO3eT/1O5wDOxiD6IwikQfqK8p7xBWmVJeKJOA=;
	h=To:Subject:From:Date:From;
	b=CgcC2x+1RooCoyFB/8o78fJQlKd6XhZWcwHw9Z3pTRt/NnFs9i9dhj/iItKyl+tDY
	 UO+JnnxaK0etFj6JYX2HpcC0jVPiGYl6B8mpRlvvnMt+PJmEUsTF+yIFwIX8qQ+P1E
	 FExcWwvTpa9mt3W7jlevWVJTAadsQkjtstyqjH/SEjds9jlsgEk5ONKJ8liItCMC9v
	 87koMFqZMIN8KcqeVSHkGYUc7t/uW8Wr4DR8/00OF4TEeoSz2A24Pj68iWtj4dzW6P
	 6mhYjYOEIRXGT6GSPnUAVTDh5Qdr1UaOWyJtK9cjenCuB8F5IFc5q2lLCf2rJwjM7/
	 zXc1xA8OX4I5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9359C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279971368.9927.7935895773741588563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914ea4c2595ac942708850e77a4a66d6280afd611022f6d77e8e5567aad00d99
Date: Tue, 30 Jun 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782799713
