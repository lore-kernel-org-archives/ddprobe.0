Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241AE155345
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732921554; cv=none; b=MQy+gRSj6ifIcw3tIuOHf9pC3UpcCchjgbdQVVcfk33Z2Wlix/mSXR1lcxlIy2TWCauLvozPdUx48X7Ly9m57sxlE5xyF0pqCNdwXOdUjzAU5HfQZlWBAqFidOLkql+BgpD7KS5xwFlju9JoReXCiZ2S5eDG2SwFfS57hNlLDs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732921554; c=relaxed/simple;
	bh=d0j7Sp+3yDce7FWRKeisSKB3zDmarpzLrQTF4295C+M=;
	h=To:Subject:From:Message-Id:Date; b=lDiEo6n2l8xJOgz4oI0xmdQMT3QTMwjy4R04Fxw9qOGCdjyAs1YNrUsVTsp+AwFMu45nki45Zpt/pmY3v/HDaA8B6DhsIC3qpEoOhE2qKOOM+kXkKYtZSKt5UfxLv8+0oEyrsMyd3zsdBWz8aXfKK+EylmfwQ+sEHlaZbhLIZos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKBYXoiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKBYXoiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD7C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732921553;
	bh=d0j7Sp+3yDce7FWRKeisSKB3zDmarpzLrQTF4295C+M=;
	h=To:Subject:From:Date:From;
	b=UKBYXoiGhNNUOFjNp7GrNdJX8+GW6dP/y71qrAKhzudvQOymsYeqJ5Ap+kpx7sUQm
	 NpNjKDIK1DyToobUoWYipkoQwj70pd91uw5qepwf5TmBFa/XvkTa4Z7zVntLx15FCX
	 bDYyFnnrt3B5uaGdPph3wRJ2c7yTIlSzddTyaEwNcQQNaLbaDJ2gSdvwdXIOk1r/pF
	 /xuh5dnSNBAJ3T2Hlf9Xxs2dTi4qAqktJVQ4TOY2OU+DBjy1EoDl/0JTsCa+JGclH0
	 IPdnpmvEuWZf+5vO1NxS3oiT9Tc/8tIIZTul1p9yw5tYJCEpvJrz5IrIQlNsfcl3Li
	 55TFeIbg9tD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC2D735E4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292155359.31114.7784002642458030678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e47920f6a431368e3718f5936ceaa68e3c94953b37bb8929a2832181e6b3fd6
Date: Fri, 29 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732921553
