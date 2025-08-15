Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB003176E2
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755281994; cv=none; b=sg6zJXP4FA/sAUHHZDy4DiiNYQ0+I8+q+QGK8dhuQy5l/KMkB//4HL8ovrXYoO9/ParxYRbDE+kwXWtRUfOD0XkvvqiSq64lBoycNvWImj6kslOrn1a8bl81gvvV2WQ5ojSCrTK8EoB6m+wMnv8POTARvn9MNu8eJOuWWAH7qYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755281994; c=relaxed/simple;
	bh=69dy/jB6bkBRgHwgnAwZupzlAooOyouG694l724I00I=;
	h=To:Subject:From:Message-Id:Date; b=roySPFAKvKG5fwWFJoIAewLiF5D8o1XzDDVh3kTei9gPCEWKHW+l8D/rHShJnDJnNUBcCMvTd3C0EgHTy4mMxYqSmsioMegx9PmoO1XBIig2nHaLfMqI5XhjpoTf9Hk+2YLIBC6BIrlfttF3XllxzUjD9mfJ3z9K0txY80U7R2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5d5RyqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5d5RyqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F118C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755281993;
	bh=69dy/jB6bkBRgHwgnAwZupzlAooOyouG694l724I00I=;
	h=To:Subject:From:Date:From;
	b=E5d5RyqImQ8OpKFW+wZo1pjyYfqBEcy5/gudD97aiRiK7/dbsybO2wDUc34oWVAev
	 J/mW1ZxBHDJmmRB/ulkXeNDl8dB0FSu03aSA6XJmn40b8ZAq/FOmei1X5DsAgICXav
	 qbnQd8bi5Jd3VcrqL4Xs0E4JQ+7VCjMZsuEvShBd5gClC/2lOu1PqfzzkHRGan+5RF
	 NkJvSpbC+8xIgevlKlhl0kdqIrwzQrl2yr4EHDqCHmPYOulz3e/tacMkE/6ue50E71
	 vjWZvkfX/S+6nApGXOdZ5LUCj7tjkTEfqX+aRl05se1xADw/+La4Bl7B2C+CdKN7xi
	 5QE1g8V4/ArGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F0CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528199357.1079.7832009226212071106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c8790f458855cb51f63ad16795b047967a879073d0362451648bce1501654b
Date: Fri, 15 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755281993
