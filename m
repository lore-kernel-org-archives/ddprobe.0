Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A3931A7EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770236034; cv=none; b=ODc1npWslad1nlXlDlJYqbt8Tp4h8zvbA/EccmK3TLHs2uJtMlunXrNI3s5z5X36KlzOjVVJbAXdUzuNyxXAwofTj+4hESUMHqWwi8f8XSP5N9d3T5MNCgKZuM8dswqtJah6rOnOPRhfx2tIObdBQljOp2kxIMy5gddKxjnS1CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770236034; c=relaxed/simple;
	bh=gko9Uyh1lQAzGOyUG1ltMWDR8bijJDmit6XE8I6Djd0=;
	h=To:Subject:From:Message-Id:Date; b=GeIsLmK3dXTPmLoiJKWz95Z36QHeRD7nvyEYksBZDWVHfPSFTLTEz1m1Ugq/WBY9GfiGUhxwamvDRTlkfcRaMu4Ly0sUR+mfmhEQ+IENmEOGjX6g2AAF4yVMCjks84+oEjBPbmqzIvd4u9lKsz63nC+AD3Lg2ioJ3httlknzknA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgzuFsr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgzuFsr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A7CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770236033;
	bh=gko9Uyh1lQAzGOyUG1ltMWDR8bijJDmit6XE8I6Djd0=;
	h=To:Subject:From:Date:From;
	b=AgzuFsr5nLB+F/WtDQykyJ3xzu2Ph6w1/GcQGrLygZlRxlLKUBMw/B7Xs4dWBO2Fb
	 x3Z9sGi+aG1+7QOrVulx3mNs5OyLGV2spN0lptxSo6FaRdwkC9o6rqSKQHV2VE3n/I
	 d3YU196iAHoACDDiZQhAZ50XW9Y/r9pVGMJG3++BKDuKol1BATrI1fzKrNnHS7oS35
	 diWZzOd2DJ5i5Eqn7J89ZXB0SkhQYRwZynufJ31Z2ovbkDbEgYsGOxNuNtj2LzCVPk
	 7hi5IJjaRVMLy/Kv0ImpJLF4xZhVltX1PSRL8EasEP5f37HHazAp9larumg8qqA3Xi
	 EFeMK6HAKoOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A528CEA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023603364.14621.17658941342765916560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2beeff1cdb6d23ce4945dc8bd0681e07d03b3c39f794636a9225aead1ffa933e
Date: Wed, 04 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770236033
