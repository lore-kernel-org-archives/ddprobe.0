Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F2826C3BC
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757715594; cv=none; b=iSVluCJHL0WcAIb9PFbbUYwzp9/DIOQ67bH/zVEW9daTQ4Jo9Rpdo6Wkd4ytck56SLMGEs69p7X6/B6+LleCZ0kmc3x/f+Z3KmKPEsYy3T2OZpVz8/Cr1j8EiraDiGBH7ZjtBIFfV46iVJwhHJbwmjQbaFnITpMJYSYOWNFN/1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757715594; c=relaxed/simple;
	bh=IZXY0iyyKbdrfO5l21Y+rWBPYy4NbYCrkFRaGvWpFSA=;
	h=To:Subject:From:Message-Id:Date; b=GnqyVcWjw3FBZhgJDjg+F3qGfpFpLNjnCEInnmQO7IcRX/mcEUYxRzC0C5v6jWibW620Cb81FD9J2bkw6mc+IIazZPJ+Z2Iuh5Ht/jMGbY1cAPcmKPCPdfWMkowcPKDbE23Hm/Oc8uJJ0X8jVwARagAb36vs09caCm0ts68qGSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMKlZReM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMKlZReM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDCDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757715593;
	bh=IZXY0iyyKbdrfO5l21Y+rWBPYy4NbYCrkFRaGvWpFSA=;
	h=To:Subject:From:Date:From;
	b=kMKlZReMi+BKVkDIDdFEPPY9lwci/oBJxwoHVBAYjaSi+WGcCRcjkm7c2RErOQOKB
	 q/sjoVI8lhyZTXCiCc8Bgh5RojZ6rkJzZqgbmHR/ZV6Qf0NB9L9ECTprgkLZ9foxz4
	 9UboMkCcfznSu4idi7SIA3auW7QTLA/FvIAIOn3Xu5aXuqpWxGK2q996ap6C+v/+Dc
	 zK5F5Ddth8jbUORR7WjnnKBSAGSJffDJyc51YVk4htIvRe3XtlgODBGkPL+g4zQzG3
	 /AdpTAxpORdtylC8SUlQ+JWbhmv0HdJMrbtU0KoHM5eaCPT60xfBLNqP/AyNaUE7l+
	 g73FnZ7T8Y0Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E474CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771559357.14845.10207465433226225110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7faae5ebe7658a54589e4e3dc3985a52ecaf68e7750b526329f14a249505a257
Date: Fri, 12 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757715593
