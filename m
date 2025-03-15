Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459BB19C543
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742069394; cv=none; b=FJuKhEL7K3JJ5lhFdNT6S/098cvfygYIdtt4mNQOOxXPWyQAiRElDL/LoExmHHZ8KVR3iK76O07zo/G6XuB6GAJe2r/o9jw9OQcOBK+9Wygsfhc+K1tJyCCTfk84GAM2BXzcXahph4luI8NfPBIRUJpTMIqQnaH72O3jMNMBzZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742069394; c=relaxed/simple;
	bh=CfsE/c26TGlSZiVBKocQ1XNEDOBkMqwE/f4zIuDA1iE=;
	h=To:Subject:From:Message-Id:Date; b=a/Qr0S+e6DvRtfYeD0XxEe88Fi41dzgCEN2yfToYzDiDvfjKohbzUro6GgeaUQCrDQ2oQq/FQSaV+we+6rBHkYdAE3IFleFpqp30TtwNHXTgqr5ZppLIRacQDjitkFCgZb52kqb6+SxXA39yGfQ3CMzAUCq3Tdro9wA9ibdSFNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8dIy/bS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8dIy/bS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D8CC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742069393;
	bh=CfsE/c26TGlSZiVBKocQ1XNEDOBkMqwE/f4zIuDA1iE=;
	h=To:Subject:From:Date:From;
	b=B8dIy/bS+vWSsA9XPUgOCujvcgzeFCetjST7d+sLzOaQJot3dCRiTxoY4GnT7XrmK
	 rS0nzt8aSQSUALJk3DPObX8jzFhJRGXiQAZ22r01L6vKn54c/W/wnRfO2IK4Bzfb+S
	 AKYXMp5dPYdawngvV97i1dQNCdm+NSOCe0zHKC5Zdi5CxaoYUArco6xs5msUT24WZg
	 9lQPL8NHu9ZMHxoCFsQohryWc80pvoIV5LAMerhR+I90Vz6qkoUxhaa0Kjl+jY9PgD
	 RPgnQDYkU28b9YVnQsIQnQPTrwxWkje1l6HaWR04Aaxom4t/2NXqP9KU6tQ2PGAdeB
	 TuvsGPFA3vLdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99649C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206939359.19274.14259265855169282840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e7c58dea759e67942502a009bd042aea876e1a78d97bb74d73fdeb229fbeac
Date: Sat, 15 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742069393
