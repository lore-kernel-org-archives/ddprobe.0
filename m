Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FE7EED8
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753488594; cv=none; b=bmEPrsyBqXhoDjSS9lSxLL37Csx1zCV6ojCGbQEDIiwMPHbj6wu9s+Wlg5enk0fnYWlrRSKUt25mlsCAcz+sb5Wl/Ovvw5Uk5pnN5b3tgwha+IAH8JlLU8qUi4SUU1yHwnUvyhsawxhp9APcjS/shYAEnpTro4secAmd/zBV7R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753488594; c=relaxed/simple;
	bh=N0cwQCQKMk+y/ChRK65RraDHBN33q+9evhNYIzEsnYY=;
	h=To:Subject:From:Message-Id:Date; b=b0nZfI8j//jWz3dhZ+MB60a1qPQjzwJy9Xp7p0UtmItLEB5MT1nw3Hb1AeiVkA73JZONv7YwYa/r6lJFJpWcuj88W0XS3thzKjRlC/BqhLPejZMLeKFCOg4sfVpiHq748OGYTlnmZcClOnqdBkYag/Ue3Lan2VFEHMCsodVYBSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdHcI4eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdHcI4eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A4AC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753488593;
	bh=N0cwQCQKMk+y/ChRK65RraDHBN33q+9evhNYIzEsnYY=;
	h=To:Subject:From:Date:From;
	b=bdHcI4eZsdxhWOHyzvBlCuXYqktWUZDLqwpbNUgNQhHn2B0fHT3ztd3hagYb0BtHW
	 +5eNqcDJur7GKe85tyhZAKjEhDfsUcZHUSqD+8v5UlYWkDcjjuLUMhUX45w6tuv7WU
	 57QlffIhcAjSfviTcIltEZgenVKtpkDcICUzx2rJgkqssYWd3FQAqis/APT/nW3wvt
	 ZpNb5kEY9j9lbf06VdYeZm1Yu/QEFGfujHL0abmfDrPwHT7CSd2hauanAqy4Rfn1zO
	 q535uXeYFPN9fSU/GsBqV7OUtTC2CxKGVNR8aMaNRGZjNkDs/iuXlxC9HABLVJc74i
	 qqwTb7c/7Pkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90300C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348859358.8096.3952827926761128989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cad7becb45dc80c4b5bab578f64c0493c213ac139ddea2b20be4c3ead60b32
Date: Sat, 26 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753488593
