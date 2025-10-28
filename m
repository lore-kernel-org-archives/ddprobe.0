Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D71933B973
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665394; cv=none; b=I+9FKSih+NBL3rcSEmeYN3q1aXuWo//LjmbNxHhEv4L/G2L4+5/lwoGAPa3tig8mn/0f3O+W6cIwBy1ANtN9dJJvbYVUkCwICOkjDWBOLoxvjbr/eaNL17qQtRKLBRS7h6WSavuSX5hIiwAKK2Fa9Mj/T/l1JJXOw7gdpTtGu4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665394; c=relaxed/simple;
	bh=ldcTlmU8Ip1XxESirW748mtADKFFpNh8AdRCot/6KcM=;
	h=To:Subject:From:Message-Id:Date; b=E9xC04StH/Y2wt6LxWC/eZ+noxo5HiY8BlhEP+5VRE70+jYyCVLHI5V4EYpybTbhbmR1FlqUGsPbEfFIxK0YOylJKtoTyGOkn1H1dtMyekysUs+wfieSkj50EGYGP5Or3q8MCpDqtobmifD6tUqvE0MMjPcHKZvh7eR0NZIWLmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETug9Hkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETug9Hkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761665393;
	bh=ldcTlmU8Ip1XxESirW748mtADKFFpNh8AdRCot/6KcM=;
	h=To:Subject:From:Date:From;
	b=ETug9Hkcxu3uauBicnTJQjN6CKr6BsPdjsfkSTlmDiIrOGoLuSbTLVAe19MRmyy6N
	 qUetSAEh+YUBUh3spWJamN2Th/2CqKOvUk3x8qcfB37RbtORQrxUebk4EIB/+jC9Qw
	 m2h7xVR8DyYMbDFWbikAgmnNBQKkdyBVR5viRznRIpGxmCRgJ0udenhsP2pNZ4xdQ6
	 GFsXWh/f8dKOyhpExiQPg3EXfOYaFyjP7Mj2imi/JTuKi/4R/NuGS6UC1jNFV67cNx
	 i0m6L3ifmVhwoP9ROUlC4OcSCRFOSgDLzUdgk46uzD99bU5QS9EZVsQw5GTf94c/Ij
	 EVd0GQHFjwNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C5CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166539360.13981.2431420325305023781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777974d7277fabb43f627c0ade5ce7b164718eacd92a4c3d09587b2a044c5323
Date: Tue, 28 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761665393
