Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215BF2EAE5
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754611194; cv=none; b=BHL6/1cK1jvr0K4XxDJyrIYaQ1meNn6Pcb1i8M+NkI+4/PQlzfMPtaa30b8nd+xz02xm15Cutq8yaSZT9CqD/qaUsaQvqrZSEn/ww2Lxl+hOaFpMV5Imeu33YeYSEypFrL8aNpCTE5JrNxWtoy/bhP/AiR6cqlcydAoVOZm2XtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754611194; c=relaxed/simple;
	bh=FWGD+SZW/xS3SBugFGFfLpQJkvtFEHsbWVxuer/bjNA=;
	h=To:Subject:From:Message-Id:Date; b=Dik6kB8UBS3v+jv8p3zOmAtIKlpvlVjB5uhpKEf3iYrPurEFEIFC7m/XGCzEm2+2WBspYbKyLOzNgoyKJBj64l+xnm5Fwot6keCn4usq5Js9ANHXzSFaJG60izh1OmZkC+E7Rvv7Ucy+gx6nlbzPIGVKl6hIUwNE9pNRExPOECo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNylZnRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNylZnRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDE6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754611193;
	bh=FWGD+SZW/xS3SBugFGFfLpQJkvtFEHsbWVxuer/bjNA=;
	h=To:Subject:From:Date:From;
	b=ZNylZnRIQSbhgDaXif/gpr3KmUvw3oLrpM1OUbWPsUeXeuO5q2wgX6xQ01hzx+w9/
	 kKhcHarVq8/+RzN3WK6O/5jYoOx/9/HFC31UuoZm1r2Ixp/yV5kQnulKWbTVBHf4w0
	 0cfZ9ODfleJ4JL50yLWNxrX0fej4o1H7Rl3L/XsDptWwo/cShq4om3sJXtHPIKrvL3
	 OkXH1RThwe6y94k410FHzWtusHIKEMXa3ecUX1EgyB/oWxe5IXiV3GKTTQVAr0YKCG
	 VyrTOhel/NNJ9Tnw+BnjdK5ixjyuniyttZXpLq6l9Ftj0+JrO2seeUe1E2kanEBWBf
	 F6YSHtA2IHryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F7C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461119357.32383.11654926263749650387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428126b079617ac0c1ba2430716eb8d138b80d2bd4efc5ac27d091d087623177
Date: Thu, 07 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754611193
