Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A733370E2
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769435634; cv=none; b=U/8NHyU0MDUzeuu04Xx+PJwqOWNRWeM6dA3N2NS+kn/aGx406eTd780Y84hdS0P4YDAFBvQ95IyYf+czGmCUUAkpilTpkSc7QdAPrNbYmkONcW+PlGGfeGp8/IGQsuyn204qzi48CCRtJXhTKMDLslRCNSHheNzBPGXPb9XRqLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769435634; c=relaxed/simple;
	bh=9WkdRawafjCMvxFcS9AQ3d4/NMnnBWntz+RvYCnyiLI=;
	h=To:Subject:From:Message-Id:Date; b=cY1mfxi+1IJmVe7S6dnT9h0OmqZg7efPmzce8gmDF7aQOyNMZh2MZaHKbN9+w/wmyUp2WtYNixfAHE6m9wYzXuhXnc9fQUJpRD1HgEC6uZFQ0TDzoQY0pPwX01esCrpUW1GBE+xQIiThAXfhHrsLu+0HqeGxrTbnalSXejuoBHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/hlRaub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/hlRaub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A8C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769435633;
	bh=9WkdRawafjCMvxFcS9AQ3d4/NMnnBWntz+RvYCnyiLI=;
	h=To:Subject:From:Date:From;
	b=Q/hlRaubN6QSdmZoLZA0Hff4O9E0lDcc7WVvzrAS1habeNNts23NegRDyDYJwEkJN
	 i1xwJXgOZshUSrD3wI2HT98GtxpNHQRjGppAJ6meeBUOPjPvcozgkF8fioypYnLWxG
	 qwBE1Q8iKD8/msE/NXaM66d25DtJDxbmx3DzSOVy+G/Bueaf+LFHlIG0JZlpUfRkN8
	 UI0prBb07m9pa820pkHs+4cK86/dEZgtmYap4X7AagXGyk/PGTmHzjPAA7ur6RzCn8
	 4BTMzKXsBU3sz8cNHM4/PzaRxITLGxmobpDr2D166Yag3WfniqZ8eQrgauhz4W35uD
	 XaiVzfmlwVCwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD67D13C13
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943563358.18654.4129977138514122711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b62280ff0dc42b92b34f0f84107bc763c099aa5af878c613d378d9002e4108
Date: Mon, 26 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769435633
