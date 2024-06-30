Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C96374CC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719739463; cv=none; b=RQez1mShM0vtkypQvKbdScmDUSAcfipdG//76bQmTqQXFQMCyuMUjfnqo+4mTYHXO08JolNIudGv/lFOSp8OonZBwDkHlyiGHqFnWCAcR4DmrDusOC7b9pdj0TdCKYFGYm3l5LaDRn5avZ+C/CZ0YDQlqTIFYS9G39zt+Me/SGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719739463; c=relaxed/simple;
	bh=8GhZdNRsRqfOn8Eoxmz2HhfEckbjXnmka/lVTuPeP+g=;
	h=To:Subject:From:Message-Id:Date; b=jgb225YS/IusJiEINy1dJrCgebo5rhKUa0Uf3ZjeD0xX1r/o5no0SBdIodKZyuBC7rFDIC+gzJSDmCfYl7xs4NXBFnsIWkvDpQ7ijFx27JATzT62vLsHujMBVNkWZOplSbdPqQwAlcYqXOd2x14ylONaP0V0SWZ5MUmRoQx3rno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6bSiOO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6bSiOO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9237C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719739462;
	bh=8GhZdNRsRqfOn8Eoxmz2HhfEckbjXnmka/lVTuPeP+g=;
	h=To:Subject:From:Date:From;
	b=p6bSiOO4ilEQddla185zNOncBeVtqo6fGIKZlBg7YNqfPrAkYrtSPEzBO7wUpktxy
	 Ob8rJgj5ULFxqgSEl9zQp2QsOSxL+I51P5OdvFUBXcZWB8p5pUueC++9lZcCRCPqJH
	 EmUlYA+JJZ3zBvkFiUXC83Umza7PpzltVLv7vlF4VNT0evN3IHEk9kAKtb0KJQObYq
	 AuRXFFuNzyHQGqLXzlDb2HY4wDC3sow57/Ui3sOBow8yTTRyDW9A734peYOP9PsLF1
	 mDWWmB88xuWPUSb7iNQgPf8eowUzAnRz4hhyR6G0V9ZsfKVHlURP/r+1SOhI9GOONs
	 p/k8F2PxvgiiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D97C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973946276.17298.13494464585722245389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b850094256cd6f15fed9add98d51618f598ef6d9a92c7e53fae84ab044dad865
Date: Sun, 30 Jun 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719739462
