Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51B13B2A4
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752431395; cv=none; b=tNXXXFOgXMMlzPY1T1+B/EcfRv89FT9+HU1r5MvU0KafTNkdHse0dgLjLYLIgvjCxsS75ATrcuwqlMZY7DFI6DHsJ5j3hZsb+9zwwvM5IpffO9X6I0r4BOFHnVzyGk9bzme9DyhdZXgxIJwioAbfAcH7sZkaJwsAJOSm/zDgdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752431395; c=relaxed/simple;
	bh=FBu7xhRVlAPQih9OIEotEsVMNVOzcY+Vw3V4uOXM6HY=;
	h=To:Subject:From:Message-Id:Date; b=dshkISiXKTPM3vBYzNfVhtvcWAHkYYuB6J6PB/x1Q4SOJseVNtkXwMNnUVamfpoHXeLx1cATs99haPyqcxPulLe0nqOX6eh6nO/5ZeE9MPsCIePmKZt76RvlSwKGJ+9IPUQck62aQ9qx4zSZ2hAZbFq/f/UHK6wbzPUdAQiuvK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUoSfKRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUoSfKRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34EBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752431393;
	bh=FBu7xhRVlAPQih9OIEotEsVMNVOzcY+Vw3V4uOXM6HY=;
	h=To:Subject:From:Date:From;
	b=KUoSfKRGNmDjTvwMWB/W6CDQT53UokjWbelStC1qX7Zoc9p/MK5y6awXEUnO6Hi0c
	 LjF1BcUoK3oI4+jvhtIOF4G+7MdYwCJ0wib1Juf8EDG1vhDwzrnH5dwDsjqD4t0E+F
	 SudMhTP/tZPkSPON2nmTgAxL7FOQfL0qQUPCbU+6322MR9WSosT5XsRgNbUSM+fSRO
	 aAmGvJ9Fla3+9NGJMQhAV8T3mAWBZX0nfCYW8RKG9TAahZKZWrrFJBHY+yo/4nBaYl
	 nbmQVFf4OUA+f9hJkK/3SChVe6DItsUnP39GZqsKVU4c21mWeCDuJT0+UZNiIkH0w7
	 gfhLZok49Bnvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D39C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243139357.26777.2842107711796682523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d6f6d8149e2242bbce03a1fdaa8f2f2816df0b0929ac10913b758ac4718fbf
Date: Sun, 13 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752431393
