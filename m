Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332661A9F97
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782781114; cv=none; b=XP8Iw2n2Ym52OBJq5zh9uf2foi5AN6L5chDgxbcVgeJMG/gr3obCXSxHO7I7N8OpyPCKgGzWDpdRqKoY2wxgSibt7bnvIb0ZPUFUqrTn6yH85o5oaTuPUIb5i80EHoMp4td2cfaenP4x7UOcIvYOuIf2Fk0bsp+q5aoWSPGt2hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782781114; c=relaxed/simple;
	bh=xJzARe/t7KcEIe8cj/5enNCuEl1UHPzbcGxsh9j3G+E=;
	h=To:Subject:From:Message-Id:Date; b=ZrEBs3k+wvIZvHWYNyhEp5PjvU+Cpg/d6zfcpBaXPC3eBHbVabeYYyznu85SOvhV0MhKX7csA/vuKK97Fk1rJXfodxeB2JWtUnYMVBGnsqzNgkQmZ0jFHEvZ+oRCEIM/O9fqf5KOSt9nDKWNGFqdG9VX2eczYn829XhGL9cLpHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tp+ntRuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tp+ntRuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E3CC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782781113;
	bh=xJzARe/t7KcEIe8cj/5enNCuEl1UHPzbcGxsh9j3G+E=;
	h=To:Subject:From:Date:From;
	b=Tp+ntRuOMO3uQFI6Wi1oOyjqrw7iH/+y6fYu0gplDyFU/GkATkyugzFMo220/Ucyh
	 t1LKkUOsbFRBAca8umVT5DAQ00FPOj7Nvv3QxQ9KS7W6YAoxnYUYXg+AOqk/c8y/IT
	 SS24Cz9WM9btonX6Gs9N88lKd0nOMSSFNC28ngdhOnM36psig85mPPwlZXot8OaZti
	 5Pcw0joN16RyyAdh5WMRacL/I7IvsR8NocktmR19VtkmNpE2MTwu/lgk+D88QpX9Pz
	 Z52HstnJbKX45NqgGXMoxd4FcVYFCFDokfTgGr6QbzIPrrt1w0vUBGmEh4K0PNDv4Z
	 TRRsdjQU0WEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB50AC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278111368.8894.248723891095919229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4fdba7e606764c92a5599a81a46c3391a195809bfad5c399acf6ba757dd1c6
Date: Tue, 30 Jun 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782781113
