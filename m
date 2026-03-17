Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B815CDF1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773783294; cv=none; b=h9ukVDw/IbTq3xLEXwOY0ip5s/DR7UVXFBUJBaHjp5KFfdAz0LfKivlybwLSFwtErl4DfdaRAWRJAjqUuhJPB1dbnAbTvApJNaya+tzqlb1COkEc3G80qooN+mQfImqzSghGY/5HXhTnM5g7DmLps+us1WSjali2+IctgyWwz9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773783294; c=relaxed/simple;
	bh=J5zhbvWZZ+lx5BOMYZXNoWP1aA8YGelcAdTtY6LvedA=;
	h=To:Subject:From:Message-Id:Date; b=AoOb+Y5K3kcUL6na0KQRynRMtYS8mWHZvCi2pF5Q21z3Q2+q0CaF3v8Ajv/ZqZdIwlX4a3JXS38FWxTL+NDSZsMnJIdIsmjv3Se1AVSJWdEUyio0vMeYEB8qi5aDyPqaWPdrB7rIKhTWF44jZ9I3jGHuBz00P7YFYfulsyq6kQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDJemVP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDJemVP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B471C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773783293;
	bh=J5zhbvWZZ+lx5BOMYZXNoWP1aA8YGelcAdTtY6LvedA=;
	h=To:Subject:From:Date:From;
	b=uDJemVP/fRaI1wpLKbljde2crTQ0gePG7rBJpZ0G20RIBwsaAahs+woI8tfbmGqAL
	 9CeJy9wzLJOw5d8H9J7/Eoc6U5VnQuEkA6BPmjTh6otuIHSiOv1KAmM7+fOxzd7I59
	 nykimqSU1CmmW69/ArtxcCo6N1j5iILutMZcWo7Em2ftfQIHymOJFBmn3m3O/sjGrb
	 xNUBYItGsq1DxCXij48O9/qJQ9KfylypmjjquMGrfvR3eWNSwn4XqsCaKznTNqa7BP
	 lsmrNYq4EQ3Gaxz7HGFxcTYbKBTx0hxnemWQa8++p5t1C8TvJ0+tg/fXO+LNqc+SOw
	 +B5yopYQg6zog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F05DFF6E87
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378329357.16650.5515727085119646779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932fa9c518ebb6dedf8e9fcedcab05f7fa4916783645a49e68164538c9d23f90
Date: Tue, 17 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773783293
