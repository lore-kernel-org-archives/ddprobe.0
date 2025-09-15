Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2E2DF130
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923794; cv=none; b=lfiwH7woGUqL6/MlbjoxGNrfpiURzDgpp8SPo6jz/EyLSpXfllc8uvXL5VtJwsQpcsKo4lI+0zlacxWpz5mTyQDBQI2fi+5/O8DR1+WMekUXug0qSk9JfmHqWhREze41DV1MiR+qJv01tDdtIGXPFJtxwwNRIgy+WJjQf81IWTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923794; c=relaxed/simple;
	bh=DAxLRW4kt09B1mRiCKBtkwoIJuzvakCT2g/9fL5LxuA=;
	h=To:Subject:From:Message-Id:Date; b=evLk5vRBSn5Q/AY4vcMo3bHs/Oahp0K0Rmsj7h8onkJWd3jhcaugxUZQJoPmXiLkBOusyK6wOoPwCjqjHxoiyfp9bSw8o5kP1aQodSTa9MxFqT/EBNr5af4iVJuRJ7FH+GIUnEG+IRsM9/xNb0CKn8LNlFXRccKRjVTRnuIsHDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ods8GsUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ods8GsUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A451EC4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757923793;
	bh=DAxLRW4kt09B1mRiCKBtkwoIJuzvakCT2g/9fL5LxuA=;
	h=To:Subject:From:Date:From;
	b=ods8GsUcYtW1PW902ncZZQxcClE54+Y0JgBMYq8QMjQ8BIBq7qKfAuK1OkM96vQgy
	 It3Vr2Hq51OMU2FwZnPSZLw9U9f5SxPC1pV0isJAI8WH9kg/h5eC87c85ksNw9zdxk
	 blqQvLD8FKFbzVZUW6Msp6RBkSrhQazusxRkMLVYr7cAJMyjwy/CZMooYgYcwIrIi7
	 vFlf9b8y0y6IpowUbRclkf9qCtiLNEpagkGblx+tz2hRPDJvjvToajrf03IfS8VAyt
	 b7kAhPpqFqszkiZDfnKspkKkmK0s78u3xknFhQ9SnB1m5dxdFZ/RFfEoogG2h63eud
	 TcncBYepCTjXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A6CAC58F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792379358.22803.15176825853450266031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705ef9ca7a96bcd92babf0c1b86c1ac7aa8c7f25d176bbfde2a7d931073e7776
Date: Mon, 15 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757923793
