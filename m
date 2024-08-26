Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C3B66C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724716554; cv=none; b=kzSzv1Uf0exUT3gmQrIxnDOIJbTvd62d4iupwQX+nCKTZFGVQKS5l07ueuxT0MW5YEhdA+MNRHaLpzIb2xKPOqEv20jxwLJKBOU6yZkCphFXE+cumLnBdo0HNcYmpi41mDNkiTK9oXa5ctchgLg613GpxlxR9mbRlNTFWersbhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724716554; c=relaxed/simple;
	bh=06onLlt1hW+PWzQcppBLl6gBChWowEVTIu7YQa/LNKE=;
	h=To:Subject:From:Message-Id:Date; b=rUKz2XnpqVWBFajj2ep0ltVvcR6wvNuz8PzoN/7Q2heMSpPgRPkYcDfw7WqSSUMcYWH0hHc+tbyRxl1U9Re/UaLByNWq7KyflyYM9S1jZwW5F9IilsUJ0KZSSn/I0EcPRNX7ZRfutPFznJOO+MmomE3EkuPdrpu3ReftnA5IDFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egu5TqPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egu5TqPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0FFC8B7B7
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724716553;
	bh=06onLlt1hW+PWzQcppBLl6gBChWowEVTIu7YQa/LNKE=;
	h=To:Subject:From:Date:From;
	b=Egu5TqPZuXg58Q+T6wdyaD4LauIwYG+CLTOB40RBZ3aaGFe+9ib8WmKOH8uOuTrjj
	 EncybpmtAHKfgXiWkjC6VuUelnnAFTOzinCkO0rspStpU+3knYgKbBmUuZqqQImyAw
	 d+lQyCjLtBpQwrTJ3pcPi4fVnS2FnHg5mn8AdQdc1/P31O/kTepxXRBqP26+As2T8T
	 NE3Iy1HnvYjY2Se42f8ZQT3kEIuu6ztGxNSsfBMlI2iiNh6eomybKj+vyYQtp3v8yi
	 kZlLoNFq5SIEMZH+CB0+xAgxRdGf0sIh5anEUNkS8uA09AjUf9UePjtnE+yGVcwLSC
	 MS7UDpFG02CVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B30C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471655360.18185.12797833910376673702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1605137a0de74842e414e28116df31c63eba4303507d2d2ad5f349ffcd49a7d7
Date: Mon, 26 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724716553
