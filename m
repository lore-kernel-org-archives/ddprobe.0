Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5362533F59C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785472234; cv=none; b=aPYr84QXlIpD1mwHP/OlO3Yf/0jN414OXtzlV4HapKN+O+SU61MRnRrYVSODEQEJCrdIRlA5Pp4o6m7T2VGfhxfNs1rGwJZp1BjVrip5Qs9HfcHhavPBZkh5pBNeJBrShn8FdbAR/Fyp5O4OZ723h/IelXnNWyOQZiGVEdhQVnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785472234; c=relaxed/simple;
	bh=IxF6xoeEWbD7Qr4Zc9bYY1jHQI3P9IgF3T6NUVo+ZE4=;
	h=To:Subject:From:Message-Id:Date; b=i3fbYz1dpwCcGEYFNzWZZXs27h38xvYm362keYnvXZBcZcyUXHd1j1jmSYbacKNKT2V0XJudI1V4aGJeEQxGZ6d82AFFqjk3RwVH0xc4AOtDqWhIMdcAYCvcMQgYZJIiYrq/xPdO/mpluwLKV2jE1hyFXrk5YvZ2KFRx2WnsjmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9XNMaAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9XNMaAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9528C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785472233;
	bh=IxF6xoeEWbD7Qr4Zc9bYY1jHQI3P9IgF3T6NUVo+ZE4=;
	h=To:Subject:From:Date:From;
	b=J9XNMaAL1pYnAtRhAB705h8Ln/XGdyyyP8ar0rMJm1qCxg17y095/tn3POQi/Ik2R
	 cQZSBWyF/zpaX3hgI9MXDiPq9KNY4CKBR6if7uGuBfK0dZz/xd5rtXdGEofEuOSkgq
	 HZd021ZxC/HxjEnIdQfXOQJlJgsOTsqP8Mq1XNMHvhX7+BhDhffjjfBnvZmIykiAVY
	 T5/TyVWOF1W4OZHBMQASJwVj+7+1xP99yfaNqM4gm0IcgJ0xzkUv5fbTjktgyvF+OC
	 kNzAKpESSWaJG3KTPnnGccH98xQuprHNgDkvPIkb4PsYq882a1xAtWzWEYKB24PVRP
	 UKcPtt9et4bOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF792C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547223368.16202.16657981344265609670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a467a5235125aa58f4f38fe8b836987248d77fa93ab20ec9d8b37f7d5501a857
Date: Fri, 31 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785472233
