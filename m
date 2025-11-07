Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162C3298CAB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762513794; cv=none; b=CoknoT7IA2176tohfisBxTET6zg4+3h1mnBVsc4BtLWoW5GziL++1zVj7bTX7qyfF4NU8jb2vltIZFom6lxD369rQob4qnvjoUziu3OfC43KqEhpZNxopwgCh55rh2rgTDIDVh0PH0Vvxye57StdnW/8b00q6vmQSb7mkEFj+VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762513794; c=relaxed/simple;
	bh=zlVJXm9rVfLVhTN2Yyj2MwJZHLp3DQ/qeogG6DsD2TA=;
	h=To:Subject:From:Message-Id:Date; b=Vr37XOea/YYJOvt9Y1O5IR2zFqC6w7nUIws9njJhYxnwuQDj79tcqkdIMri0fmxDpxnc3+KEZhUEKM8leWRE7NdGXOjmYrsKMK0IxpnbybsVxqeuJa755lfM63pgK2jesFGlnHzCv9v/MyGzocshRJRslmrh4Q+y42dyQYMFfdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7mwWR7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7mwWR7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D539C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762513793;
	bh=zlVJXm9rVfLVhTN2Yyj2MwJZHLp3DQ/qeogG6DsD2TA=;
	h=To:Subject:From:Date:From;
	b=b7mwWR7CP+MmRKYnoR/dspLJYo4H/jd2xifNfO0DMwhSfA4kky9HQvzu+kntCzTp4
	 eYMjAF3b8iixvkz85DsgucUE4IyqNsOTf1IFPeOn5ZxHmcwkKIFxMznDYb7Y2dxLZn
	 Nxb9iWCFj7WwMtMVkzFjTSD/z0obKyctoc8Qfp9od648OcCmUwJsF6n1bwdoXJInUW
	 sfwlsF1HcOBjxGUGUMc7FGh9sSdgY63v5O3cOi2RA0PcxkCF2EYHAvZUnXGkwGlqBg
	 6BF+c51oeLNHvhvsE8xGCxtSJIdc4EvnmhUZXvPtVsEQOP6LcBMWQOHHCuO+DcOLbe
	 GaaDkY8xLUYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF82CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251379357.1504.17206441199736900732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b6512fda384b32731e7a44a97bc2f6c0225d8622f673e10019204fe6d6b280
Date: Fri, 07 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762513793
