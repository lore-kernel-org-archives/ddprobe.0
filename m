Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6FD182DF
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716215543; cv=none; b=lP9ejcBR+vKkcDLujqilRrfz/Cc2xmfMAv5j4rUlm3nQ6+V7n0fOrk6jEzt2EUa5K3lqSjOA+gbGioB37ow+EH6MIRA1zXTosmLL/5kaLtTy4AIBU0x+7p8goF03YjMbOZL5NhZzcfLyGTzNB3hnIQ8soDsTaSrwX/B50eTi6L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716215543; c=relaxed/simple;
	bh=x9lJ/iZPQWWH1eVd0AgDSR7y8Edjy9KSG+ipwURGyqE=;
	h=To:Subject:From:Message-Id:Date; b=XcUTywWPI8sukCymr77C9XWDUHkVSzgZOx0ySRVMzFw4bLqU9a6rioV0saoHSNGNkbNge+II8X0Falgqt/AqbWiaLrpjWuBsjjP66o1PKo00USbGz2WknEAjOWHz2vwkVUuwqHSv5OnBnN0mSp7jRgxTLHO3wSqyXgsQNiDlxFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+Z5ZEWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+Z5ZEWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED0EEC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716215543;
	bh=x9lJ/iZPQWWH1eVd0AgDSR7y8Edjy9KSG+ipwURGyqE=;
	h=To:Subject:From:Date:From;
	b=W+Z5ZEWpkpqw1G2CrC+0Sxgf07MfPKZoMZw6CeWLXKmKqAt9HQLghqqEkYCBEtHb9
	 qU5Z9c7LbG35dlJ3kktjXi2JxdHN3JknNvPdx3VxrBh07y1QpI1y7byGYLZ2dR/d4j
	 TcH6iItEL5CgOKsZJ+IeDYjwgNozIoNJHs8+xYRN/Se6GY+RjetIxPpwJN5qAYw8aS
	 BUr5SG6obBElIhGacjStppx4IxS6QjLjoD4WLHUmesvvQIh667/g3TH+6emMQdzYnB
	 0VgMwkOSpCTn1WUPuAMmuXaOwL1rUyjPG1stX023sIHLjAKtb/cGX/plEcSZt5dbCx
	 4POvtnr1dnXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7DB0C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621554286.3006.2326969969085382313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7646ef0e529f0616fece0fba6d3be82a0d682626132e299fedd68d86f4cf29af
Date: Mon, 20 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716215542
