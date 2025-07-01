Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1441F1DE2CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751369994; cv=none; b=h9AV5gvqoEafm8ALOw1SU6gzx5LjOjAF0o+Whm14zko3bsZMYgPxauSpY2AAiM72sIUCv3eF99dhIgp7xmx3mPNZ2ufv8DUvy5AHufCY2ITlL1bp0oVTzDXeevUZ6zK6ocj841SwCLwvXcIFMcJFG4op4eEGJg1Xtn5C0/fdNQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751369994; c=relaxed/simple;
	bh=BaBKQ7JfcXel7C1eRtuD5EfF30HgKdMEuV2aV5OqUWM=;
	h=To:Subject:From:Message-Id:Date; b=a8S5q6vcz6kvQYdZxapZTThjUC23+lSXYVxrLclPLas+gmPvdlen+i3xIf9S9c2dCMHUdEqcdZUDbpWEOLZP0WdM5z9LzCk3ANaCaMBae9+bnR9C+G8vaXym26LbbXvfXS4PrHVz5u3Mh352Jc6Lzxdz+3r9n0QLupTUkJRMfIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um9RE/d/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um9RE/d/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEF2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751369993;
	bh=BaBKQ7JfcXel7C1eRtuD5EfF30HgKdMEuV2aV5OqUWM=;
	h=To:Subject:From:Date:From;
	b=Um9RE/d/adhC6KJJ9ddEmj6cY5s1CPvevDb94sYPOsLh6Ex6fwgpp89sgERhQqldg
	 p708eonRLglB9yTT6oz/QCVHB81/EagDSGToSLCFpL4ZcYASsb6dmPAyOL434ltVTu
	 NRrHE4ttlKJj6OCRGUm3bL0LcZeBBbyBv3H8dLqntEwrhcbubkXkOuAwIkCwvcW44v
	 0C9Tw47tbvOCma9CpzeT/iyA+iT/ea92U8xNVATmNyjy7T4mdytBsx1fsTdIVsRCuf
	 R3zhOmljzrZSDr3FGHo/sGgJikdt+pLRHgLLTRTYNcDDNU5WNhbTupppjMy0862XJx
	 qeyeJbtcEKpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F303C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136999357.31424.9020066420460760375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fdafefd1c241189fc1410eb3943d99919c06eae53a75171a61ea904b1e7b1c
Date: Tue, 01 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751369993
