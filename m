Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F92367D0
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744534794; cv=none; b=YoYWCsEoZj77W++qO1/jGfZkmtAPdPcxCxcRz9FZXT9S7uXWoVj3vZkfFqEkR/7rRdwTBs8LZQXRDkBTmyAIHYIkWnw4y8hqloezYeUU3gvw86YFJ3IlkUh33pJ28BJo28vG3aztX+e6/liki30zYq2nfIXgewnF2DKxv/jfOyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744534794; c=relaxed/simple;
	bh=rFoG+TjgXbaNMmK1Jk+LEFLFX0bgEeJLLh8DbpRiOwM=;
	h=To:Subject:From:Message-Id:Date; b=karaF/rttey2+/4SRwEvwTYHKMIuLs7kZ3KNV9hURO6RiHdv/kEcYIAbqq5OEvWSU9FRF/5hXuYBd1PnHV0vhvsTKxkLNzo45Pkrtg+xTQmnzTOjRPM+k7L5u1ESx4x1c5VmBOyV6UcT3Y9RUwGvH55JE8Nikqf5y7z4HcL+8/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGfCHn8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGfCHn8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76EBC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744534793;
	bh=rFoG+TjgXbaNMmK1Jk+LEFLFX0bgEeJLLh8DbpRiOwM=;
	h=To:Subject:From:Date:From;
	b=nGfCHn8/BX1eykL0WVE5QrEls9QqM1SIkGuvTgwFMwphzkMYUPOcW8aefQbvUCikj
	 foHnh+plYzSGo2FlRPnO0Q0IPogQzZj+akPg1sqUYqQEn5NTAd3tjjkmvWTcWce+vr
	 J3lyKH4sJgRkLZvgk8McesOGb4MpWQFfmopyjf1dicvnQ5tQOfWTrrKwSF7rAnJjjC
	 wUy4vnEjKLvOUfixeMtfoiHnayLuq89/2IJ1zQRTwsZZvGK9/Kzt5O9tTqzA/tU/yw
	 L8Os2Bby7VSSM+ESlMuo7agjZt74AHjB5/JbshHUgqsQyCEBLjOLfSew2CoWfW6Pel
	 hoW3k8I4VJ7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9976AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453479361.30102.3441004679974810082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e6afa5b32565103e54b1cf7d50048a70deeed35e05894ffc928df8eb00c1a8
Date: Sun, 13 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744534793
