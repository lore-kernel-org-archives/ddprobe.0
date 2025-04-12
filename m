Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451882B9BF
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744465194; cv=none; b=TMKezeIpXz9jNhcHhuLh5NbpREMsaeh1/EM/MwUhdYE3NbLSQsB85UnnzACyUMfWNfXChqTaNTg61F9gs1L9Vq+7yoj3uOtnST7ym+SVJ3jG4K7TOizLHMjviECvF2hftSDKXhVPUI1tFy4J0z/UjAxy5Qq5OLzUVMlvYQyccAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744465194; c=relaxed/simple;
	bh=P1QRbqzI5Z//Mh7rBPoLi08DQr5dzkUiJkJgaOgZmj4=;
	h=To:Subject:From:Message-Id:Date; b=AJf9qMWdbmgZiFlRhKeQZCcJSCBg3nlR63y4b+8SW8/Z0ILTCilLxTo0/FVe+7TrqJfjxvQ9UVrP2HJCJKuB4pMUaNUcBmyXXs3vz8/OWe3Ts8s6NXX5yRT/0i/edqdDT5KvH58S5mjZtsCGnu86ig8MkrzPicYqdDWJQrJP26Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zqr4Hpx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqr4Hpx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1717C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744465193;
	bh=P1QRbqzI5Z//Mh7rBPoLi08DQr5dzkUiJkJgaOgZmj4=;
	h=To:Subject:From:Date:From;
	b=Zqr4Hpx9Ft1aZRrQGqBkHIOF1Ax1vDETFojtW0K4VAWG2VDimVcTl9s7jr3It5jWd
	 FSxDj7GqFr32B9nUPL06v2NRYljzYkdotcfkZn5kD7o2igZTUNJpNQUAB3oJg1JvgY
	 MuS0vOJdK9Mkx/MZYcWAO/DAzVRO6mhH3EgvhHLRGIk3wetapi1L8/BM6fyXw8V7hd
	 4CG1E4ZrACUhZCcg+qalom7jIuxtmYOu8QNcPBvUGlng7mfQIoJSt7MkwGp+xBV61g
	 fUFwUfVNfCAqnn8u+ib6xV84asMFFM6KRGqS1YdEuvd4ezduVIKcM1+PHoRWlbzc5j
	 EkK6QreViZMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF7C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446519361.8249.13417855764009021514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77f162ffcc73b0524847b8d48a7f9a7f53391e942b28d61a9c3d998556d5905
Date: Sat, 12 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744465193
