Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA0A2C21D0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754935794; cv=none; b=HyR4wCjCwRLeqPNHvEwrpHXm/I4t7/9vWQiYQiGq67demIAOuPAjn7P5F2x6Emzr+fTgPDhmnONtbCbiRq8ubiZ6jAdOqCcHUpoB9nGk99bWrnMsg21GHFMxdxw4UFt1EKfzMT3aEWkAT8DVLKuFxkOqt/2AwPOMGAkAgvfVu5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754935794; c=relaxed/simple;
	bh=gOrrpLD3yvtQju/53S1MvGLJqY0xzbESpm5GkMbGqFE=;
	h=To:Subject:From:Message-Id:Date; b=kiSDcd+5zc35CBAt2XmAqWoL26r+aByrjvGZ2iCVkUl2LijOpZA9RjxN4KUrujiuBiSi4oH9flvp2jH+DbdbbpBdGEcsa+KhyIyn6qOZ8Qx5wj9pwQyV+NJz3sg+jcF+APwDj1s74erEFL/rntIVlyKK8iDsmCcRDgq9xw1JR2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPTj+twM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPTj+twM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D46FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754935793;
	bh=gOrrpLD3yvtQju/53S1MvGLJqY0xzbESpm5GkMbGqFE=;
	h=To:Subject:From:Date:From;
	b=PPTj+twMSu7EWTPyXYEgeaFARbAJk01PyM/e4Dx8+REPwIhoJH3MEfpjvfp+nal6H
	 zDraYS85upu1UiTS0LOZXiQIdmWzpRIikmqHACFjcoH+Fawshk9zePY3YWjlayqRDG
	 WdNvz/vaKTlkFo8SgLNxRfFkOPEry6g4UO3rDauJPhROy1fLrgyNYjMu24byVV+8Kq
	 pAqggxN8Gv4JEBxCchiIxRpa9XJBQ+oqY/hJ8axepXUkS8I7EqZ3TR9B2eh5CDJGWF
	 u7QkEwh+NxC4/7gy4xHVfcjRLwX+2eceGSVob5jSESLeIt6pbyPFz5xKCMbrj3P2af
	 gxRpB7PCoplPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF58CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493579358.25571.5846152068536176096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e72296af233fb266d093753072587534970ece49baa402859ffd813c22294c
Date: Mon, 11 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754935793
