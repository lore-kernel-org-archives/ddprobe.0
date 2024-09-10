Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC821F951
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726005354; cv=none; b=UMlqunBt6Pg1a8hAhBYcOscC60AhxSoErR/BrSQdvG+d05pYVp3+6XoI7xjZHDTqoKJ5oHOg262ryduksvtcw2KK6tFLcM/HS9j0NYmvLGqrgoF1elyNMdWa/IBhUS8bFbmPZYCp2foJkp9TVnn8G6UtSOwVapgZOvEmVGfDEOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726005354; c=relaxed/simple;
	bh=dKXNAvHKRmr8sF2j39woELK1ltNYAH8crtwZKi6qS4E=;
	h=To:Subject:From:Message-Id:Date; b=CKjiVa5OvsI30YcZ/QSJ5vaTpVITsDueCzPLLdOFCOovtYq4tLd/CpnV+fZLEHffXwb7AgXtU1rIBilkUVnPNJVzHz/2GTXau15Pflz1Dw/FaKSp/syMKyavg7Ftax6sx1ubqXzpGW8AmJyeviML1C/9itFAWf54CnJhdDE449k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fc6zmls/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fc6zmls/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5BDC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726005353;
	bh=dKXNAvHKRmr8sF2j39woELK1ltNYAH8crtwZKi6qS4E=;
	h=To:Subject:From:Date:From;
	b=fc6zmls/g0qNgG4BKJkWUuquj85uEpM4bPYkSrSMJvuLCps5/BVfH1LyVNM5BQvtM
	 nFEfefTF5PQKpkxSUwb0mzrEJjQ/t+Cs8EDClb4XHdqqFUzPqB4HoYlGcNZjdDyV0i
	 uU+b4jIN/gKPtJmBm7nIyJq5TtlMq6DS6hprkHYdYdnpyob6XBgcdXVj6nRKk3blsL
	 CuJcTpRu1fSkyOM1vhDz9CVTRc+Fv3nAQ4jicr8wPamETzcRN6LpXae348fh/UZPnh
	 sT71ywuNNzv+QArSdQkZGIeT4f9BRQ1norK80irS78S0WW6conPHG6DuHePmGxowzx
	 ovpHSxVuIUOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB62EE01EB
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600535360.11602.12349543292388287222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de06f0a2e7e15523307db86479be2a2f9bb7e0cd6213fb8142ed2fb8d93617b
Date: Tue, 10 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726005353
