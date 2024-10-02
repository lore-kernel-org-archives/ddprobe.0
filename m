Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2941123AD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727860554; cv=none; b=cvmhttCeggya906KqHTqlivN/G9DYLTCjyuw5m61BWszO23rPHQ2H7AzeGs0pxcUjuEMfSkmHVClcDlGhjHZfWTdo/Cbe4PypUtdVK3A/ixfyGRolSFkD5QE9NX05XN/b9Vo/AqALj1e/zoc/LH1a+qzwa1dtwCCqiHOqz+IL50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727860554; c=relaxed/simple;
	bh=KJU8sydKqGaNkojZ5bsixNojazGf8wEYEGN1PLpV7z8=;
	h=To:Subject:From:Message-Id:Date; b=Y+d3XlL+grxhgSbtaVvq6+zfNvXPehVY8jT84Otk35PBM6s8j4sRUEzVRmjOZS47xUUyPiqDe/Nj6bxExo2xMDCrWuP5fruz2qiIJ9wrTFBY6cxnkYtY5aHD6SZhzLEokAgLbApoXYLMirIe3RrFAk1wi05se7VsDx5ZjQANOcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Feut5noX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Feut5noX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04E6C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727860553;
	bh=KJU8sydKqGaNkojZ5bsixNojazGf8wEYEGN1PLpV7z8=;
	h=To:Subject:From:Date:From;
	b=Feut5noX73jCSUOoBSIIi++E9PnVG6NnwEvnxGcRrvH//696fNQKaFQQAOpeafl4G
	 goM1L/bbEK9BH+XmiAHQvN05gZC2dKHxPBKiUV6oxommHvVwLJiDK7vTDei883UZJ7
	 yi7hirllT4s3vy16Bpiqba/MQ+qXv4B0TXB6N+fdodxBc3onjFcuKoTaYj8xAwzCSq
	 XD56x/LK0JZNZdPVjZuFE/aJ1iM9kr2FjLo4tntu0xTF8LdY9suW+jo/1lf/OWs2ED
	 Y/2uTNjGP8DsyS+nkgtvQWkX+233PDDxIQ8KS4sFVgLKD8Ba5OdiL8EGM8B1Xgk15E
	 L1AzeiAJSp/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99294CF31A9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786055360.27097.5011447065021752604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51bcffbbec83543bfb436300aec59820775bcb420fae06e9767aae57cb8e0dc5
Date: Wed, 02 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727860553
