Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569562D0614
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786900834; cv=none; b=IZTubsJkpBpwW8SX6ton7rntcEJaI7yS6tmmqvPWT8hbX5POT505ErLyfpwFmL+SjxcZRabv5tIDxk/Uhd3nV6tMiKWciPtL0u/O8qHCX7hdr4m6Z9F9Ui85OxO9sy37vunfyXx0cpEEXBjWhyMzg0yfxYhrZ932EQ7PLBxeykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786900834; c=relaxed/simple;
	bh=TMWEfKjaHvrT72iR+RFss+fiIJUxM9Gs0mGs8O4dTXw=;
	h=To:Subject:From:Message-Id:Date; b=Jq9xqCGU1+Ui+QEQuJiu+m+smIQPsx/mLFwb5go4l62cN3ZEtYyux/gUA2LajFe9tZuIBvD/WTt8rpWdv1jilAISCZPpeafK55sEE3aT5nHnIl+XT67ggjM7jTGa+zbYutmjPWXrt/Byug+SkuiS8Ccjch6gnr4JAepmj3Jqnac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIr4GEEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIr4GEEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B64C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786900833;
	bh=TMWEfKjaHvrT72iR+RFss+fiIJUxM9Gs0mGs8O4dTXw=;
	h=To:Subject:From:Date:From;
	b=FIr4GEEaHD5P+HvVbzxlolnfauo/MtD+VawrS7DeWdv0P3VYjsA/hMd31EU+s5b0g
	 qPwb4fbuKnuTVrYT9sV+mdzjFfxrgfhQVmQQhfWWIHup8ZwDUIk4ZB7ZjU9r4enUWJ
	 sjqG7EXRlmbp3apJP3Rq5fI7L2wEP6oROpoRsT9emPxgd9I1/1H1v+vu8ffDMBZJOs
	 uEvRlnKCeVtPg1+hCQubZ9eSEvW3N7FlrfUnFAjrle3/M72sZrz5eDu3u3azeQmF0q
	 /NDdLtVUsdT85f4A+CQZFl43DvxBQoasBORW0Biq2MskROoBrv6+ZN45BTRAbYMALA
	 bQFgwtBZ3G1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7C2C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690083369.3207.9085444279083373538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6896f3a199fdbf69ee7250f74c3ebedfa0088cdd71de570d0a6e52a2b80f68
Date: Sun, 16 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786900833
