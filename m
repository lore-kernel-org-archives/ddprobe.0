Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D702701D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768034634; cv=none; b=RDwRya0gZruCuJ/bt4vsERV7WSW0BeXo2psz5V4ERSOODQ5WnKYurZVJOltZralxXlc0cnqgqsnI1XMfOxhrEybqaFVWRlXqcMn3C2kInA/bRFTyq7fteM1gDDS8P2KY6CyPatWO5Yzi36zjQVLQ9dmhOEm6XSNtJ01lx/qdpy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768034634; c=relaxed/simple;
	bh=Q/H4R7uGfJY8QfFfZW08fALUOzPsH/D6zqFdbNjJucg=;
	h=To:Subject:From:Message-Id:Date; b=u9aNkme0rT1oeyYCiZLtyl+CbLbR9wF+PU0ajsqdj0k23pk6OqN1QpYxtzew/QjUmGKKsyj0QbWSiUjD1+rJV/eobp3oZTsFrFRrEKW5mXMkDBZHyeNiTR6O6swRIvhYS8scp95OkK6mcJUDpmW1D9DCvp1zkQNkRpsdsjSeOnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOgATfcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOgATfcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768034633;
	bh=Q/H4R7uGfJY8QfFfZW08fALUOzPsH/D6zqFdbNjJucg=;
	h=To:Subject:From:Date:From;
	b=uOgATfcbTcssh8gMaGTNQ4klY8lZNJl+jvEYDNQoSLGjo6LjOMirfWC68CZRMj0SV
	 QhiojnO4tt47VfspUNj+w7q4pcTFEvRrHm82Te0Cfc3hVI6rfIze0nYWP4QIZIEjNz
	 TKr6kwQLplTD8N+IhhBYVbH+d/Xd3JzvWq8f75ImrR11fZl2AhGrnBGpzzLP70u9s+
	 ANwWPBozwaZ/TSBVb2YoNQElOaxR8Q7w2bj2xzTfuJeo/JJi9WhlO1HY+tHn1scRJ7
	 80Sn4aRDyTE2HE2RTHpoVatJfpTya5HGqOd5ZNRlqQ0aT9aj00dFU0foiuyszY99qM
	 BUboeybK77fLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3AD277D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803463357.4188.9659095017736075153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3bd6a31c068e517a9fb0c0e25b2ccff200c178ab895c0038c10e83d1aa506e
Date: Sat, 10 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768034633
