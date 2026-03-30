Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B5337F749
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774856093; cv=none; b=kbeV9fuYBzHSXmu/SeW7yCaCYfaw16Utu+nDaOrVHaGds3ZVgxZb16y4ip74M8E8+pzsd4GIAVIrs+IJrlerAe3YRc8pYU9bDbYyNQwgpouCmMDgJlOTP3986yGTXwo/YQwWniwB5i0vYXDqaBoDs2PZxRDXiaelKSP/2zPjvKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774856093; c=relaxed/simple;
	bh=gCUAw9QCCGotfcSOpIs/0CbHr1UF1QXUEtkwCw2GBw8=;
	h=To:Subject:From:Message-Id:Date; b=OchUrRmLBd6Jxt9HPI2BWD1BDClUngERHAIi8BaqZDQYd7/Q5rIk4evazZjP+cyk0voZs6bkRpuiwK5MqhHybE5ubRCht+pMVkeUO4mD1SXU7xTACA8FIPYLa43HEy1XeGE1K6IEwkq+3rREiaaHx9Y1BW8xCNn4kDSqQLJPiXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSNRkh7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSNRkh7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774856093;
	bh=gCUAw9QCCGotfcSOpIs/0CbHr1UF1QXUEtkwCw2GBw8=;
	h=To:Subject:From:Date:From;
	b=FSNRkh7VZyzlzDHhWkRVoehyv1zggYLbqhP2WVf1Gd/aOlEpp/qGbWMCSaAT8Bd3M
	 HduYsiDrorDaDNn8Sgf/JTvNhdj7IYJQke/W74nZSt37eXp9UMja6YHaW3i1bguSLU
	 tT4Q6ZcYpiQ92HXOHeJbrlcPITJmNx6pYNyUtrrgGisDop7TNHBTx4fcfApuox16Ve
	 UMcmXtIOx99zn//KplIxPK14I3c0/hlaj4WeKkTnkmAMywa/kgjt9TGu3yv+uZb11/
	 62e13tJsII5i9dtm0xAUOF0+/tqqnP1yiZcjH8xY9O7vV+5VZqRQ0zZKvkEasUQxl2
	 HKnJTb9pCq0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA3FF495C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485609359.2445.5286879044244507483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce82ab62ca7be1f6474dd747671706c9d161a6c39daac83706ce7e4d8a5fa7e6
Date: Mon, 30 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774856093
