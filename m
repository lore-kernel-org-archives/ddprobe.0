Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C72144BB
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739444935; cv=none; b=QPKGuzvovxjBcHyWTJBv/tSiUWIr9i15h/7uA53s7UjGUoYVaxYBQ/IBCkfgqB5Ec+QRSwJiQaoQpotgOAWydkhbdZSOCsf2K/r27uuJmpNomV88gppl/J7H7f/YHhc0aWc3HfOutoPPbvLQtOjMf8lntf5vRxIduWMSYyunMjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739444935; c=relaxed/simple;
	bh=BQ3YZrAu1MggWNEmEk2YoQmRi3OKEjAhHiPGMNvf5Tc=;
	h=To:Subject:From:Message-Id:Date; b=rgTU4ZovdDl+tOl51vOwm9ihHcrYbEYiyzRL9PCeQgvd6Q6oRSSvlI+sQuMU8097haurvJinyWXQxCSJ84oCS4uKkBAzQgOsEBTrZh+sX1PPZGWxKKPjioiU76yiq4olq08+sAIsA4qb+s7oR2lDdQ88bq7vt6ytxEEOemKqaLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzNCZdph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzNCZdph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2961C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739444933;
	bh=BQ3YZrAu1MggWNEmEk2YoQmRi3OKEjAhHiPGMNvf5Tc=;
	h=To:Subject:From:Date:From;
	b=WzNCZdphu7q9RKHShhwZ1wNngKm62Rzc/my+yhMTEtMZQlwvcFsQ7FKN3lgFbhipo
	 8vD4n8HDqfHgXXPppj8LwPGe2fsOqhyT6Lg+BNA/1PPXO0VZRjd//zCVc2MSGtKCNP
	 rXCxH/WH6clgLcA7NXvF3qckuAFFqaKOZY90I3HsiJr68AAuwopjb3jZsC4jpLFrkO
	 e+s6V1jk9LwBLvD5XtxfbVhiaO7sJmS4OLGzU+IaTrnLzbCNOVKnjigZCBndP/G/D1
	 DPu5CapMqax/TqMcII4e8nkB2GBmzZ5MY33TrJualX6QMcAZca6zub0wV6On52LYCU
	 1dXDBsGN+zvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F0C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944493358.7653.3160804150282594256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846edc3f1f71b9798b161f618c1c4d5496fc5462304561ce14a6567469a964f8
Date: Thu, 13 Feb 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739444933
