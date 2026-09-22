Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4305C56510C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790094034; cv=none; b=lcSDsGT7v1QKgf2mXD5pBHjozb3PPOMRDP2rzpqn/vTsdKD+MZBbt0jxRuHTrgPrvZTJM2Q1FN30CTwxE2hBgaAUji2zvvADGAKbHkQm3VPfOLW/exvJROaanlSvLfpCY/jqtPT6GBSrOcdrWkDgx5HXPpd4S43ud6rZTIW9kgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790094034; c=relaxed/simple;
	bh=PCpGOMyvwAZ4Kv4Aw62xteGRPWCpESXEOtR57FqkNJg=;
	h=To:Subject:From:Message-Id:Date; b=A0xDg7Ch1MZsSW5dNbkYTUaiYlHScFSpyPZYei4WP/ovaAE3WIJ3pfQX+sVXGKILuzJu4HV70vHrZiuOdYDHyfXwh48xfePnD8tLEIYUJmkmEyy6MdbwHJd5sh6VMSzSc/9LcXrEZKcnBmnFSILZ2bkd6b5PYJTfrIXGEQjoV4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po9I8Uag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po9I8Uag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E936EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790094033;
	bh=PCpGOMyvwAZ4Kv4Aw62xteGRPWCpESXEOtR57FqkNJg=;
	h=To:Subject:From:Date:From;
	b=po9I8UagXHmZZLxisicr7oxERPUqOJgvP55j4GQZ7IU/AXy6yDQ8Fs57aAg2crBtZ
	 Fq9TnTPtgiu6D8PZdx5zQ9Nt1ly4+WD9gUyYRyVWZMtcJIaH1NUhLbdfOqq/JIxWK7
	 ZlbBP6PD0dPcYA5ztID3yEIFb0dfA3RKNOIwiKlmXieHY8lRowt9mEW7uNwWXsjNC5
	 qRHaFy4HSJw/59h8JknETvRpMH1njkDLV7oGb5C8aaWttPNoPHZn052IPf8/M1zncd
	 +pYXwQCiZKUhcGawLf8a3/kkwfCTbnbdlB+xywzDHTAnuOUeP9Unpd3aX3LBcUC1r5
	 iek3HDcdGkFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C043DC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009403376.28415.1082219408579362182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ab381f4da5e437d5e3f38399a67f4aa62b1660f7f03320007b596429d00f22
Date: Tue, 22 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790094033
