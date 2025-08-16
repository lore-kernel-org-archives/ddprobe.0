Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2899D3176F0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755325194; cv=none; b=h1d4mC34nVcbrb0xHXmRkdYngVCIDnFoiRg5mJU1k9kyeyCghsrYWFe87I20756aVCsWulzhc1r2fzDdeCHr8KOopx4rz3DR8H35fWwH1Ui0w+qUFUnWn+kdInrmLyJxnzv0h6I7jKTAVTibYxXg2JYTdz25MmNPxLa3qrscYu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755325194; c=relaxed/simple;
	bh=GoExloc8ohryKa/2VyC41S28FDrxRkkjsf9pr8yoGpI=;
	h=To:Subject:From:Message-Id:Date; b=F9uhXoun4Ss35MxT8WW4Kx0h0beZg+2QXK2gP0Z4Kc0nTXGcxT2MCj9WpmPvGgmJNi9ifIJas5kw2MCKOdzxH9gGOvT4YDvC1KoRDSeJwRTzebyA3HTkH2RzvdAFiXnYH1rAbN1L9/fiTdKeXD4w0LFN8S1zrATQrkPz/Ztc0yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCNjRoh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCNjRoh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0383C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755325193;
	bh=GoExloc8ohryKa/2VyC41S28FDrxRkkjsf9pr8yoGpI=;
	h=To:Subject:From:Date:From;
	b=SCNjRoh7od7IaCovf88/vi9/1CMvpkaGD43oz2tPwn/fA7pNW6Y5Rx4zDfBYOanBt
	 e/ORKOf6wSq/J9USBvWQC/1OxCcSKtzFSIur+y1XgdBRVtn9gjdcgdb8/bHujCKqKC
	 BYNMhhrhQ7+sKnGnBB8O1EhG+lMkxuh4PolElw4RSTXABKodolzo0vWNk65RlmFKy6
	 xdRObIFZEfaw0sPa/FeHEw3hF24f58DOwEhLaoKLTEvq6BiXXcr2JhKlrK7RFrexsO
	 woVYVVtzMVGo5CLH89qKVsLSXg2ydjC+LjIRGf86B1DEdOaE5hryaJ5rTpw7pQZ82P
	 aN4FUUkkgRLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB52CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532519357.9089.10359441726093321040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5f530bac38e31d9f801aecdf959c8ec4dea62eca5f1d68312f7631bb0fb225
Date: Sat, 16 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755325193
