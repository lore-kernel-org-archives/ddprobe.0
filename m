Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DCB1DB13A
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755364194; cv=none; b=pCK1QRun1eq6CYidzQexRe+Ucfhsy+QNpE9CkF5nO1/cBSVZSe1ITswXxPP+aqZYfJLexR5Fr4zyD51LIPi3qUIEm/StOkSg5Lr6G4Av1FZtwDw8sW0AMiR4HzpMzALZiB21BmtgzqWoiLr2juU92EhJlEg7H+3wE2QDmn6Y16A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755364194; c=relaxed/simple;
	bh=/x0apFB+JU2cg9hAs5aImY29sxKpjDHX9mwSOUDbyQ8=;
	h=To:Subject:From:Message-Id:Date; b=UYRAPJ3JrfOJ7v8jsp91TeOJQLQn8tZmq7Lh3go3hKrNuje50Vi6v91NlRl4ZwYFMDEEIxWw1Z34+O9XKdpK0XNRu/010OBN2edtQF7NeA9yRmOsVdOLJ4yM4ZpU/QnC/RhEPxxz4S+0UKl+MThr28nQrPh2/q/wWQ2Jf5h3MOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqhS8BxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqhS8BxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3424C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755364193;
	bh=/x0apFB+JU2cg9hAs5aImY29sxKpjDHX9mwSOUDbyQ8=;
	h=To:Subject:From:Date:From;
	b=bqhS8BxY0p9pbwKfIt4//H0BXBoO+sDbMFLnuBffNsZAibYa6CJ7+9xHGHndX4nvz
	 1BDrjE1rtzcB3yYYHNxnCUiNnY/ktfrasldXaKmIjEaNgQK9UMsCdf+NJf6f7B9ZiH
	 mNy8GgHBFX1sInfgo+lR6i1504UmwlTJBAWSemfQ5L707QZyLEJNNAIJCwmawOF2p9
	 INl5rq4FvnCvVNn0AzXgpXhDUgg3oZHgK5WmEWKQcVfCrjvt5hV/d5kikRhAGwGoBR
	 KI5eNNiySmLZigp5WjgULq4kAQANDhp7D9YDqrf+RVWPSfMbtUzksq7GSQ1cBX40Hf
	 jQh65KIn5/o3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90615CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536419358.23012.13286350621079328948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c607f80f233d35b1206c3267af9c7698b58c56a2af036ca6062f570ad9e2fe0
Date: Sat, 16 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755364193
