Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4B2D5C83
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771150494; cv=none; b=ECzs9Y8eQltlOL7tuhm/GbB9f3cRV6FJZxo9yo8Gtpgu48lwMBKj6ZQX2X+dFGI6hrDniMMLhrBPjiPr6uPe13TUDIATutRM4tyIQUvfRXFngJNoGcGNxj3D61+prbF3sklymeEloHFv0JdiTH4UTXM7Q+WgeaHTx+tEId4tFH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771150494; c=relaxed/simple;
	bh=4RTpoK8iIH0xEFH6aObn+kKHq7aGSg51rCM+Q4ixQDw=;
	h=To:Subject:From:Message-Id:Date; b=g3PzWeSMeUEnTIHa/uL0DqPftJV06kpfVueBynZ1S5ZfXWQCNfJqi63HmjmIUsFNyjobULyMBx5DERLs2pRR8r+/GacMv2sHeF6uXc7UenGdF3A4AiAP0yU/w/014R4z1HUeoYVYaF7PrYZSh497BdTjN/xO+0JJHkecuYAu8Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8/iM+Wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8/iM+Wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8497C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771150493;
	bh=4RTpoK8iIH0xEFH6aObn+kKHq7aGSg51rCM+Q4ixQDw=;
	h=To:Subject:From:Date:From;
	b=i8/iM+WnlIqVFK2zq8K45tNb+2gtyhUEa2J2Ps3tJygJKKkS2+bwl79jYd/xuv5pG
	 V9BQcWexH908QV+8qXNjekUd8BZ8esoGVnHi+uPEPjJGm9il+H+sGxVYjiJcqs/YWg
	 g9kbgYX17fiHzV7SfBXC+AWJ8JnhkTzeZhYfXAhmtKhuYhs86Cuu3pqmbeUO77P0vt
	 sZ6B5ptxiH1TK5qkjMmXC9759W77nzhDGS3cSndV4nHfRRZzdzljfRwHcG687D+EAn
	 FK6hgDlLMiKQ+UtthkGXkdw1x27XP57lZ9GCuxpvrUk/u2YIENoogvWPPcTIxUnP9f
	 Gxa+COoAZs6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D62AEF586D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115049360.23956.9841759005158188631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b95f08a80b76808f131e9b306c95b545e17ce8bc15f14e4a205385162ca9a7
Date: Sun, 15 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771150493
