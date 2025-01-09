Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB6A18132A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736466954; cv=none; b=K7LqlGoA7ePeIYYLl0EZvTHoLNicj/fkwh3EuwCOf1pTjFMtAaXhcpvQsT/qw1kBtMjC8dLKOJqDhtFhYj4cSETWBZl2/UdtPNYBV0sUMZ+XO7dCOZqlsmLQi5K5+xregV0+FOHA1UjRXsrsk5TieS6AOVFLpR+AHD5NzPp1sRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736466954; c=relaxed/simple;
	bh=GvAvX7S97DZZMrG6jr2sbvSyNzyypr9zN6Hj8jh0Qq8=;
	h=To:Subject:From:Message-Id:Date; b=MIZIfh26pKhdIB7RkQ2831mbgQK3hkiesRiZl/qmelKsaP12y5l9Ue5el1B09lCtJ8Nt2SFEnAmZJNNA5F1hLZQrFU3qhYJBCE4v7Yfx7NcD4ldrFM+lZ0nzA9gZrXMdWMFKIU4BYcSdKPB0BkSwJvxuBH45jntjHQqqR/1a4x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNxKckB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNxKckB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3AC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736466953;
	bh=GvAvX7S97DZZMrG6jr2sbvSyNzyypr9zN6Hj8jh0Qq8=;
	h=To:Subject:From:Date:From;
	b=qNxKckB/OsNl5d3ilMQrwHEbDwJ8Zohrpr63aMvV0GHdBwg0TU0HepKMaqnRvw6ox
	 25U+J4egg9EHlwP/vKqk2GZKIW40aS79597n9YpW2AuF2XVzXWO3+TG4vJAFJ7sQEV
	 Z9GJzhL2yr6/3QvpmDW8+SqlDoqozxeZ2vCIElcA50aw0kta+lScwDaOiYTcyeeUzB
	 N+5f/2MDF2rFTc/8N95+MEowOicsuA/09pTJl3Fmg845VfeGOBn0DIBOz47rQvJQI6
	 sxb2rc6ppPsN6f2ngBHJsdqU/9gSe+FeTlf4uhaXJLhH1oKY2A5TTeq4m4oKNzRcZn
	 1qrK0fXzjO2ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91929E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646695358.2832.9476414988756009744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d2fed0edef93a24cf5575ddc3a479e8dd479a1d524861edecbea79f06a182b
Date: Thu, 09 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736466953
