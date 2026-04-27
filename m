Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D437636AB76
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777321653; cv=none; b=N7q+eqeX7ni2MvckB5hDQyBt1INlY5p5dvxl5VEkIk5HNHMuKq/eRzK6fyF/c4FUvabn3vMDY7Q74lwdVXB6uUxvLbf4kpp86X+Fu241DMLOvwQ2ouMGcRjk+GMIMN8FUYbSNuGryxuWlchWTLWAp9V13InralDlTE/MTVb42VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777321653; c=relaxed/simple;
	bh=THOKY8OsTbu/GgzsdxmRdcIIYPjF2P6RzrhmndJNMno=;
	h=To:Subject:From:Message-Id:Date; b=mB+Lt6P23jf/PxeHf0MxJskA7amc1X/faRZmkb0gFHHQS8hgsNqkARFlA60EykWb3d+tRS/C122kpkVr3zB9MD2evt2ZI+nUAHeqBuy+A8w0Cvz1CvbIYYvk2Y4tnsUoq/9OhOoJ39v4VHQGTl1r1CJa4mgSc6JOCNOOPMWwrUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj2TTSt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj2TTSt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CBBC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777321653;
	bh=THOKY8OsTbu/GgzsdxmRdcIIYPjF2P6RzrhmndJNMno=;
	h=To:Subject:From:Date:From;
	b=gj2TTSt5TwXOT7qHU/hc4mQiLQ4GLeXxuvOVQm8dURIZgPVxPDPONytfLQyVfbcCb
	 Ae6vn1eALAtUxfG9KB6GkYyncY4HbChgaOl1vu6NbWTq/R1sqS+cp6q4UphE79fg3Y
	 6oKivjVBxQ/5vachXQNxoO9EQHGnh/DT1rXz+bOiDod7UUil553AubfLmhrg5pxT80
	 562f7nonai3FMe0RHitJGFsVwtfSWaaU5PsPPOqTbgpKXj8FpTivHvbPBIVdLGY878
	 vRyQJbTJIee2AD49Sdime6c7OMrTQwdkE4Bl0qoJRxswjm15aFjbcfiprIZ0aC94lf
	 BnSKx0cVgQ4RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A3FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732165368.16629.944090086584279124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c245b7e25f71429a6fa932237b750bad610cfb07165396de8694e6a28ae32e
Date: Mon, 27 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777321653
