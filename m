Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF1A302742
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782460054; cv=none; b=ZSbgAz32v2tA7p91IU1wd96k5eD0kicI1BvEe0DlRglD7NikONRSJ4AE3C1xd2rwcjofBqNK7+ZrYTbLZSQs8TnjXx5ENZW2teEKvR0yTGZ9Ijmtwlf93Tj3VL2WYjEW5PIiGZLgqJ2XVT5lXQ+orgyCOR7at8h1VGiBANseP1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782460054; c=relaxed/simple;
	bh=g+O7UUq4bQ1wvINAc0iB1rl+XrXHRdfvTuMzZN0PWAQ=;
	h=To:Subject:From:Message-Id:Date; b=lSazx+pOXhdUwneF+U8JRh1KbukZdodqLyEbCeeXf0OW8UH9IAkb0S8zfw/TQLBToSsT650bORSbWKd7CmjTifZjT9enbjWwShvrDoE9TDZMf+QPLbX0lPjHTW2FmtbyucYVQ5bI4DxWleX4zSRR9+ZTO2+r2LjRNn88uABQljg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syUArOKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syUArOKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF79EC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782460053;
	bh=g+O7UUq4bQ1wvINAc0iB1rl+XrXHRdfvTuMzZN0PWAQ=;
	h=To:Subject:From:Date:From;
	b=syUArOKHZfd4qXD18beubYzvlEpFdIHCg2dd4jXyU/sa+YkrdIphz20LD2fI9HaAQ
	 gRvC5lFwD1u7eexd3ACA97/dGFr/6LAUsgabVjNHexZcCm70GWHFnuIqFo6aAWnUVq
	 Wx6uiD1Gqu0Qehd6rzYzJKxc9BTCG6/cTni6nUQ++lTN7rsYanAWICQwzjPE3xmixj
	 +TunSyE4L5D93eyOxP3nXMYB2/Hw6nlnqT68olQT0eyyWq/J8G1sBf7p/WqTpdNAzn
	 D5Mf1HVpB47DGKNmpZxnQ4Ue4lwOZp1q1vQQKGFeBLOq80oMlQ5C8xkHCXoOE/DFlF
	 BYZQYeWS22fOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8CBCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246005371.30435.3589239318160605783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e653faf4b1e1c331b2b89462cddf7e2bee7998555e77a4ad62e560dbff895e0
Date: Fri, 26 Jun 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782460053
