Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC0A2D0C84
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776018454; cv=none; b=r4q/m5kOupXZG2r2t4d/gSdECQPonqydiX+Nai/+eYL2kolnMXP8EzquW/GofGUY6iQkgi9pIYqvaMQodyOMa5QCtXWZg5McWt52sqDb7ubZZY117EwHN2G/GQADnb7tk2CGlzZqE1TRpJX3FvKW7LEoeIcT8eDgIBs4OKhr8Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776018454; c=relaxed/simple;
	bh=A7s2clHypAqDirZj8GS0AuTPCmwrWVPkzul9Gk60wQQ=;
	h=To:Subject:From:Message-Id:Date; b=bkZl2RYH1v6mveIDS3LgWe1yNCs+q0vf1CYtAUG10sAhpOy76M19hJ7CpTk4ZnpTA0pAGvDU89XkepZhn/dwiW9IJ6QbOzKsa8VtOHyzBrkPTqosxCAUIjv+uOsTYiqNtChBpUjMUKc+kPUgJhxiH5RVtY/wbyxB1AjnTsiMpvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fu5yWX5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fu5yWX5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75ABC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776018453;
	bh=A7s2clHypAqDirZj8GS0AuTPCmwrWVPkzul9Gk60wQQ=;
	h=To:Subject:From:Date:From;
	b=Fu5yWX5WPzIrnWmsaUwUgNTp7evAda2wTT0VIP5/DZ8Q7ghP9Rcc2vP0F5D6wnIlA
	 6yLIt7CPDUf33KDp7mTqd4/biFUUoVyataTYpsyDBl4YhO1BelBTZgQhrNPheIRtpp
	 nxuwsNtURg/QT5OXw7UEMP7ff1VflPSHrIt5Kda8ZSBW7mKg23IQui/iHVErwkxDu1
	 vDb0E6s0RKrRinCd+d99YOVVevex0uUeqANzK47j/NyBSnK8b9m8v6sJxuxX38rt91
	 /xu8h+fpl1lomanRApUXNnSPfz87KaGQK2lFPJRUWWwfL1NxxjfJDuV7VcX7jWm+PX
	 qV32WMIfWwwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F4DE937F9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601845368.31662.9866301459289499619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f35473d6e70b81af8f3c02feb5a59c5943c017cdbff848bdcb8fb0c78c5372d
Date: Sun, 12 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776018453
