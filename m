Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EE91DDC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749079796; cv=none; b=iXEF6Pk9SGfpUYto4d+VtG/I3Imo3xDvCv4m555xKiLQSYxSJct9nbaJGwlPK0TvJO7BY0zZVSao7RBHA6DublmjPwHZAVRhDD6Z8mHOIfeTWRfZirGMt4SQ5wXDLBVC+2ELwQ7oWDTdOA0uyVz03F1ku/BW1kxNfTJin57O5n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749079796; c=relaxed/simple;
	bh=WBKFtw7MvwQ+P+dQe6gxcbce1+IgUeklkzStpYJrIYw=;
	h=To:Subject:From:Message-Id:Date; b=WuKFjVxNjetTRyNTvxoiHMAYpKkxSiBqw5R2/Ta7HExzaCiiJ3Zmusu0/SocZo5+oCd6etpB7CpSFIqXQnfJOmyXZ++hcEdrdF6A6iDyEiWe0fMGSsK2i7EiKVwa9mBT1fGb9VVVslqELk9HRZzxNnUnh2vk8ga89PRa0pl4iow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geFz4bbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geFz4bbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3758C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749079793;
	bh=WBKFtw7MvwQ+P+dQe6gxcbce1+IgUeklkzStpYJrIYw=;
	h=To:Subject:From:Date:From;
	b=geFz4bbh8L8mccGdMXJWFfRnlQ8BOIvrX4VhK2/9nMAPweGOZS60gcFgKmzSq8EIM
	 O3KYpO14WQ81mkgQlq6QsmZwswfxoiAXq18YYY3eqsOYUfjGMJIPrRRJsIwhzcaO3p
	 bVTWZdgN88Lzj0cWnLApoSUljtk+RZA08AVnRNiWxMMAYr02Un1ioKjfhe0SV5YbHl
	 H5Cy5Prb/USTINacfeQhxovmsN7rvJ5IudfuYQf6Eh3YzREPk9TLFbiih6Rl4spuAD
	 ZXjnMwcHXxIulYEaMpUvRNE67eTwt7aDfnVzRIxhsEsWZVsed6BgifhuoV6QARlDYI
	 74Iq2GDsz8KQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F918C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907979357.13366.8251576456489328301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c6c47cea5a7fdff031caef7209dec0c81639437f86599ca2c4aae35bf497f9
Date: Wed, 04 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749079793
