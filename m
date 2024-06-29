Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4C93B290
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719651863; cv=none; b=o9oqEbCuorSu1arpyS0i+PFtwXLytKrWAXLKpYW78dfN2PyJGUoUTJHXdD2f3arCsmEIhwZpAYSaXUmlWGNEzQaMRxvB2m7FUiqbA/8KriiaRNEgPcxtwHuf6GSTjrqifUNomYLUr3s/8/i+AhvS77AOiAjyIbQC2Q14rm/jDqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719651863; c=relaxed/simple;
	bh=UNzB+65//AhJ1nMSb0Kmgr37wzspHOzfIQ+tXD1ZvWQ=;
	h=To:Subject:From:Message-Id:Date; b=uDUW9r4zr9JxLEWd9A2lLr50d1Car70gQoyWzgKrudggb9zSJ27R/5ukU9HiioyOMwJ8RSP4qQknC90Sb6kwHn85mdV3kjI6KuXfHpQLc6NGiaal+dIyo4aAE/OPI134/oQXU4P/+ffy/rhW/OCvwXeo1zPtzmXO4fmCtbOHcho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sky1AlqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sky1AlqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17A92C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719651863;
	bh=UNzB+65//AhJ1nMSb0Kmgr37wzspHOzfIQ+tXD1ZvWQ=;
	h=To:Subject:From:Date:From;
	b=Sky1AlqUednv3ZPd219fmtIYc8Ek00uPSIedVnuVwCi8n89NMgsHGCZE8iRQXJreP
	 YIcs8ucydjxwl4M3r9xNVKpLjbCPYI/e0c2AG/0HkHwk7FurnYDAzfkOuTORPE6VsW
	 mAS6sszkEhSc0Cw50uBUfIE8ktmqUgHk8wdBU1wtdvqmAh7TBA62ArlR3NFcfWe01C
	 7eEF4voEiUyVz0pLxqDwVzfXOy/AcL2ylnarckEICN/SsnQFrR38XgwKGpNUys2wwp
	 h7eB3f69WqJKzn/Y1blOdpcYIg/tcdyfofqeIIltEwGgXFmz2690sHPoNfBB6KNozf
	 QnTSHGwChE0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5BE8C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965186284.16549.9555186000939828638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140bc89e15d497e55eb87f8949c3ee05937954bcd60f4193f879d1c12818cd8b
Date: Sat, 29 Jun 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719651862
