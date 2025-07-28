Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168F826D4E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753716594; cv=none; b=auiD3IN/BuWOyEgmLv4DzjmvZx32O5ptzhioJOjvfTpnwzxV4fV+Wob2te+64mvPc4o0IbCMvKTkFAppXQeYx+mG9FtWAlQwPC1B/VQSXuS2325AwXR1Z4clEmsxR9Z4F89kXDro/X1SKRbEEx520NW5d9z6wkZv4GOKwvcb1jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753716594; c=relaxed/simple;
	bh=IuxCR+F6gS9JWj7Qk2oKJmy6et1Dv84Emw2h/vKW4yw=;
	h=To:Subject:From:Message-Id:Date; b=To76IHK1yj2V7Edi9pXyUpvkWHapY9+cVCHtZSMto6NgwpWMHE7DUnf09OburWXKRQ52GcYqYnkRLGPcvVIRlll4x6mb08H5ZdA2OpCFn/J00HG5wMbyVjPeaoCVBF5m4Ul6/b4ZmZzP5JMke9XM7bMLtOSDlHcBoQepZdpTs0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSLIBOEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSLIBOEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1056C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753716593;
	bh=IuxCR+F6gS9JWj7Qk2oKJmy6et1Dv84Emw2h/vKW4yw=;
	h=To:Subject:From:Date:From;
	b=VSLIBOEJtXJ6Wqm7Lv4TzzV/jWwkHA05+khrN/JnG7FCgB696lGMFSClEgwZo9sK6
	 fh2BzeDktEQJIsuq2B5o+L4JPw+tjDkKhWSx+xXucrDF8zYrH03E5RlVcKCsQekd1E
	 lT90H27aqE3WGkpr+YJ/HSP92BSUJESNUshGz3G86fHGpUP39YEN1N/N6yP0uX0gh6
	 GRWpOomcsvcBUR0LCitSyPpzrk4832sCk9Ae3ATlUZoM2uoDiBD8WIiqxHWTi/70PE
	 6SL4cfYzhBf1H/WNvKmZuYLXnrD2uyEJxH8YfJseWRHmMgiXNx7PGnhSl/NVtji1uR
	 GavNzLO+pbuDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93591C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371659358.14922.6949491784456493551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e027d9608e232a9701349b711451ebc14eb8efdd97701c9d03503768281239
Date: Mon, 28 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753716593
