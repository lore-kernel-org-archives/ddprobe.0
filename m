Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366AE2F5A
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742638194; cv=none; b=Js8lfH1c1T/TFOujlqBfelRZ99m5s76OPH+nzNX2rAacDnQAdGUSdrTeavJUnPip3/ETU6EKUbr3toQsB5wpjpHllTlVMsfh8s31w0pvKssNJYbgdEmhUQbB/OxmcBCyITIKeMTvZN6wo0PM3K0NR/bcS4h5J3lk+gR0ogcpSFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742638194; c=relaxed/simple;
	bh=18o0TbNwe8UgpVQycVrllJPxKN+HLm2AmsevhbuMx08=;
	h=To:Subject:From:Message-Id:Date; b=KNmt/78oYZ2xQW78I3LG96gAtge7kpGrX//8lqSH0VoKDPjSR0q2p5ttO3K4Oq8ca+l11LfhGkR1VHmKVKXSrENd/jy+fG26rMsWVDZ3rTbgVkueuWu4WKTK1g4cATut/VP7TIz3SEJ6Xl7ImZW5lWgF3gv4ojsFcT0j+I3HTM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsJivMxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsJivMxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76D5C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742638193;
	bh=18o0TbNwe8UgpVQycVrllJPxKN+HLm2AmsevhbuMx08=;
	h=To:Subject:From:Date:From;
	b=nsJivMxFugOVPwqLbYA+ho96iwxZCwfLIA+DS/0aGZshweRPafbRS3jDTVgOLZU57
	 GbDBvRPsC11NYaCTVrd9PNWUklKDdRwX7EVPtRGySxjgg4Yet/tVZsaOrkwErwbztg
	 Rm0e0zBAxnoR2hwS+ZIU0JuSiQwOErViICzkOt8xf4Ttb4wG+5hBuzRwCD0onO5F87
	 FrIXb0QW0bMQOymWVUQ9HKZXaqsgmSFEsXsty4uLHw8mx+6+bal79Y0nshLUczq68K
	 feeh8kW+OzUKxet7uyKjwvoZ2GouV4k8w109mtMXn8Yw6gd+F8OyWPzavhC1APmB8x
	 pXAmZlvBI4f5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C194C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263819362.17255.1968339169561484195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e299d898fb28684db41a2284e6e57998711cde779bb7166a8cfca092dd8ae033
Date: Sat, 22 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742638193
