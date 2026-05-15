Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2814C3FF1B8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778868634; cv=none; b=Mu84MnitJFZ3T2I84cOtvDQVGpSbVGeJ6/h3W0KAQZAngDZg9AAr5wm0SwYKObeFFpgoWeC5a+IGRWicB7YSoLbyltwFdNmMGoD7q8/Ia2P60drYp9thCpaLS3a6PLImk9Y2cO15Qb08UWL13UA8vXrtnFxZotzzKwyyS1zrQrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778868634; c=relaxed/simple;
	bh=cL0a6RA50+7bZfXo4I6FJO6eSnLU16ln2Cg1yKwYeVA=;
	h=To:Subject:From:Message-Id:Date; b=en1Inz4gyDANf1wndQ+43Peft4NTZdx//0XnzsaPxbA7Bba1iwt+K7CYkE5rClu27dPz0Y15u7GPJ1GjSUBZfHN7aOSo3jea2UDogCR8UVfWGiQIGz7lSjgoga5kiDHDgVBbtESjaDgfMtWRw/Rm1VrlGR170UlaL86QaqEIUeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn8SjMQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn8SjMQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAD1C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778868633;
	bh=cL0a6RA50+7bZfXo4I6FJO6eSnLU16ln2Cg1yKwYeVA=;
	h=To:Subject:From:Date:From;
	b=gn8SjMQQTrNVwfJE5r/Pb69h/WAXmsntyjlx6R6Vg0LWShhpDFjsGLIpElfq9J0F7
	 5Ep7XWlfk7yh5Pqi6EbgyzyJFZ33j6Wc+tVAncfx/WjM9bNlyWyx+4ZM6NCo/PqbdW
	 6JDU3iy3iyahGWrPfH8fu7J4253AvJPS59eprt+kw0Jj0sdR5MMpyXDZ/s3fegeTYs
	 CfMPGvCpn5lM8I7QmbgrPbr1qv7GuNqGB94n7gzG8CbiSJOxBuHunHtSrmGcQTL2RE
	 mIuoD7bEgeK1eK0BceaJWRvrSogo8EpsZcE7tBFmvGB/TdPtFsl2+SqnL/GmM3QmBw
	 Dkrqsu71HfdwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6EFCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886863369.23443.16181231997476539384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12288617be4f7ba7e47a3f760070c83b98c8631090d63b2d07f762776de01f7
Date: Fri, 15 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778868633
