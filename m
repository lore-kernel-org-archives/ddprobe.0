Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDAB40A938
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791151834; cv=none; b=VZb/sPXb01P6GwVrDnGRzIyBKp2lqRVSkwjzoTx/YIaoxDo+PDgRNLSxPH6jWqz4QakP+EJSUaBEecQju8+cseTn9GRlHnbXk1/kDfMWPgsqggL0/RNlrcQmpCqRu/IM9nXth5UHLju02SPjSTFYQ8twHwH3VDl2jPSi0L1s8FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791151834; c=relaxed/simple;
	bh=VfcDJhnC1G06DgiB8oKu1EWRAiIWnXhlKi4BIXa7Nq8=;
	h=To:Subject:From:Message-Id:Date; b=S0q4sG1gOO4akrMtsqtjkRB7eKzDGUnrb6d8qBXQVmsTUeA+WhjRs9qlHKHAkT7hW2xdkC0F9DD7R31G5BuJYGR/Tn1pOKD2dQiVFHrV6t7RX+4b1DijEEecnssl2uLjheb7HJekpNNOIibaeoArSU3wbS7wjVURrQUe5uyDdko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dflUtGy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dflUtGy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0264C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791151833;
	bh=VfcDJhnC1G06DgiB8oKu1EWRAiIWnXhlKi4BIXa7Nq8=;
	h=To:Subject:From:Date:From;
	b=dflUtGy7r7cnMEMjka/+9fxz0IkNpjE6w5CEJgB5jwOcRsd1w2/ixIO3HgIftbTXx
	 lMz2DOkQaQAHTHcG5JOgE86a+uVXgU38NI/V/4ncecBJVU59bh2lrI33LHoDQxDHh3
	 lXnmi6b+6SlK/2Q5lEH+zyN7PiNQiUCwiBpazIHA2neEIwHuk1jnDP7FZOFYgjA9ew
	 cku73/2g1iySUkMRGw52gBp/cKaIb0T76pFOV9xF3FqfvHeqffQUwdn4Mq8jmjUHB+
	 F4JvZcNpDyyeOJu6pyufyvJGv7ciQUqQpIU9LEF/EmhS7YozkImz92YNCFvqU5iwAl
	 G4W/K63wCAxiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B7CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115183370.14734.13881103001674279538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ab57ffc4fc5d520070920591b8e88c17ab788ad207b592111c28fe789d9dff
Date: Sun, 04 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791151833
