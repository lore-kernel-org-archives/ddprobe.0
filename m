Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E2D3128A4
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762343994; cv=none; b=VEAuch5jgZgWWT+qUgn6RMGhu/97jRMR+2jzsXAnJFqZA3liDm+wIVnNx88YYNibOyCmbPBprsVmPJ3xszB5iJtamQ7ga3yKo7SuCUbcbDcXQS3LI7S+5oFm3MuMHGT5b72jSKoMZJHOho9Tm6WLQNeKGoVNTKlXglz0VDa5jY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762343994; c=relaxed/simple;
	bh=EzBk9q/qoEUJ/V3CCpxb92eWMnEweQEPAbBpTM9boiw=;
	h=To:Subject:From:Message-Id:Date; b=WSOemerRZ0K+VkhDtVf2GI8TKkBR+KSaFEzZIWiT9MJyjWx4eS5AKn8YQEayxdzBen8UtaKyrKPNI7wChpWVVq+MDpjnHrM0MPXHMw69Fz6SEHNzy+qcEITZ/+EsKPeFQ9VWXVtXfkn6H+wbqKXsEfPCmZBtjfIbFFgsz5Mnbaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmFXpklT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmFXpklT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED1EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762343993;
	bh=EzBk9q/qoEUJ/V3CCpxb92eWMnEweQEPAbBpTM9boiw=;
	h=To:Subject:From:Date:From;
	b=dmFXpklTz4sNdaE1GcGW3fVtwit92LJNJg48a692NiDa7cOebTqHGxbKPQmgJpFci
	 AzT44qoxH7f3rZR6HFPuBUsNlir3t8Anzl9H6QVCKcxofvhVJh540k3V3ftNe1oykN
	 lurkTFiEijkDwuEIZfCnYWBVmyN00MWArghihB7K50UnJxS/FpMR0gxsuSvA06LfST
	 AOohovTul9SFhJyNlyJdG4CW3uhbvWJtNCMC9tS5SdOzKgis1H9uUL3l/ERjPZOjqY
	 Li+KLMBNtzZ3JjvCeMBgH4DQ8n23di+nTAHLpW/gEKBh4d6Ji+hS0I8UEUuHCXwhh2
	 WYLO302xh7Qyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C216CCFA05
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234399363.19158.16837956418762831342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9627fa2d9a8b1ca9289bb7d4f127a7f195922ce9ba792605c79253496e3761
Date: Wed, 05 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762343993
