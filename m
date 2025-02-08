Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37671F2B8A
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739053554; cv=none; b=EZzcAg6zCYiNN+g9493oRmmoNHTm7Tk3muGT9jUmhh+4UGElvBDKoawUpzjGWBcQFo3vxFxYOsW35iDuubrIlDfCyrUWrsr/yLDRzS7laKFB6B4Euhmv5GcvMWhmj6l4r72aiJeGhJfzPzLVCsYnmMBDiqjFcuY7UsFC5ZS6IQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739053554; c=relaxed/simple;
	bh=3Wf0he7owEoSTNFYsgcPhhNlPeE8zILn2ravZtGKOT8=;
	h=To:Subject:From:Message-Id:Date; b=KdTpgpVVzsZPjVzF+/mZ0rPL5YXIy6mu88e1Ho+jSPjPppuRJS6cnio2BAGhSF+xTy9ywGSf7Rt/cElI7516Hzwj4IoYW1s+UI7RmzTa/NOSVsLEnPibHJIDlnGia/YcqqNu3tQzJdKCod2BWAcguEdZ2zfF5IKC/3M7QlW4Fs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QF2Gbgmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QF2Gbgmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9CFC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739053553;
	bh=3Wf0he7owEoSTNFYsgcPhhNlPeE8zILn2ravZtGKOT8=;
	h=To:Subject:From:Date:From;
	b=QF2GbgmyQziWd7OiyoEm8C8FzVPeYBWgcPVf1u8M9faa/VX34xu8b6oLwnUGkJccm
	 29S8NjhLQ9k7kB4R7wkpRzC9SxizZkzi0NfRmchL5sqMgHQ6qgAZU/PFt0BFv0EYCV
	 2RUIWmO7pxMh62VHrlVrrPS5ft4sZsf0CxOT6jnDIPwNXsrZfnALIAyI5J8bB8/zxO
	 RUgW54/8SiIYTAbp5QZKHHlpbofNVomx1CazrXwr2uCv5tWx0J5/PgeuJVFI07KxQ6
	 iKEQYaxbHw0jhSJsSAMsXn/buxwpCE7ODi6R53WDuisRwjHJAR5J2gVI+90mF1310l
	 Flw7R2r69cNSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE6FC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905355362.22497.5914844625963703809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15229b2f37c75cc29d983d8f4928858e5754bbdb273f0a10e8998ae1eb3d538
Date: Sat, 08 Feb 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739053553
