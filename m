Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110871F4287
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735307154; cv=none; b=nDxSzSYVzupikHS4f+eEZ232xh1z+8ELwe8eHmzmsjTlu32lNy6E1++OiA1wlA0qSpZue2130+vS2y+oH2vlezX5uKo2TrKNkn6hKBpMR5w3dEqcJ0vLa2xbUiNXA8VaO2N0t7TLNKp/dLSoYV2HObFeBalAJ6yuJvJzgIHQd9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735307154; c=relaxed/simple;
	bh=ycWd013FFgKAQcCMnXKUG9mG2RiACexUkRlRycgHjyQ=;
	h=To:Subject:From:Message-Id:Date; b=t0Wd/8miW23WHxrs2TH5630VNhRNkKkn21qFn2uOQ7KZaOBz6omjYYPRYYDqwGPPbOaJ3eK6DLB8MKQmSM5TajkC3gM+47T/5w+DNcVug5YeVBtMyAQVZPBtUFGHfasqh+Kl4E9YNtCZawlvMWWPbkmvx268JY0tv961jnmemec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd5U4YA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd5U4YA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513EC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735307153;
	bh=ycWd013FFgKAQcCMnXKUG9mG2RiACexUkRlRycgHjyQ=;
	h=To:Subject:From:Date:From;
	b=Zd5U4YA3G5ysnBKm6SZJjuHxPZlrnuspx8Txjg6P7YfNen9ZBolbIZNe/DgJsq4oZ
	 i8G0K4u5b9XiLHZzcxTNlZ0woh5QbK3hSS6+FYvy1d3dod/T2UxuRuq5ZuS9QJB8Zw
	 w747AVlCEz3K1C/1urDohjXTsRZuhsL0A1M5gK11Lbx+0xeYo3DTiMUqMYGu31nWF2
	 gEWcZrYVvfiAlKtXtNfc0eG7T58UYDqIY5PCgTMnW8/DrM/fGT5iS6UEDebuzo/onr
	 zsnzm5Czg01Yp0EgsO0ryBBMDSODFWB72JP7K4G+e+5x2BAY9XNCboRlKu0V2Afvuh
	 G0MRUq6El7n3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92429E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530715358.18891.9312481131261321030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3b4e8effc4c4aab3faf08d055f699cca811457a2d4458351e2295ff07f96ea
Date: Fri, 27 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735307153
