Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195112C159C
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765208574; cv=none; b=XldxPjGhr26Bl4ys7WwmO5OP1GcxM6ChOK+rqy9Cwg/haKUxNKBUGt0xoWZTsxqEYJHI+pKdGFZn6KCaVNlD1d4bY9BDizjv9DTLEYXYvmohYfbsyxbQgYGHrJrj2781PynPf2+KZiRdhxe4tXoKy1c5FfCqM1Z0RX+GI2Abzz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765208574; c=relaxed/simple;
	bh=DgFtnqVduB58s2H0yqTEYxa6uXsmASoaFAjlWHeq1Dk=;
	h=To:Subject:From:Message-Id:Date; b=SSjAw9B8lA8U/jGWsqpNUEAxBPHUiDUywgJd13KYyab1D528uDxn8TVcQqsWAeMNZW18NhBeIS5ldtl+cYwrttDBOOuv0Psn9PFSb8+KNMn+4XnNmHiyTqonZHTKhbrfnZSvmjbUNCqPbBSE24mjbPifHboZhD1GYD2+P4tqFT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hutOMME9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hutOMME9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765208573;
	bh=DgFtnqVduB58s2H0yqTEYxa6uXsmASoaFAjlWHeq1Dk=;
	h=To:Subject:From:Date:From;
	b=hutOMME9aJ8KtgnvQI40CPMIzF5sct+Eglv9wKDRKICYoee1suSEIAwNHMU0Yvk8O
	 LeWxN29rq6uWo3MZQuK/1yrQDUwHVMbxNqK4LAfHFlmtiqOg6ABfqbMqv8PXvw/5cm
	 CiLF5UQporToIuCVL5MNXggSar4ws1g4ukuTSYMquLcwM/+iEpQ0HLu3GDc95Zl0Z+
	 oxkKvHdyu7Q3U7h5RvdbEHTZvgDVeXlRHBVQzyegMwNWK1J6Q8HMxmC4zgLgAtqcAT
	 MAQkMSz6DM+3SFalLK9jaqjs6Kwj2705c54X92IXTgmXBoid1MoIf+1Dm7pskBqV0j
	 Ze9MsTM70mCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BFFD3B7F2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520857358.14698.6461466726386231629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74550aa04f934e350e4e1883b693ca44fc7e1c9fa7398ae834dabebab4fd855
Date: Mon, 08 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765208573
