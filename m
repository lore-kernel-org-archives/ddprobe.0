Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5725390610
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779491554; cv=none; b=JO/Wq22ZaQG0E6/5OuSermusfLAcLUTEHirec8aKxR3GOxLlTyZua6ym+Avb4kbWQwFIg0BcAejTg/bY0nRGBCn/JQEM0w+SQ8KJSs+c4B89ZqSSNtYWLxym2K8NQ+H1pbZ2sfCj4QDjrRkHNBQGaam0EDdaZyIOwJzi3KgKWtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779491554; c=relaxed/simple;
	bh=CXZkazA1AA1CkiVT1b2vhGXpJQuX/L6M4gK9xVh/ock=;
	h=To:Subject:From:Message-Id:Date; b=j/rRKGHtLSlGVNohGtEHNK6yYZ9JA+vfV/UxxiSxxGFCcpKpjvqgyneuas0+Cm+D942gfxwOU66I7af9aMsch8NrSjWP0McdUxv9WzZuhMBlT+Uocal8NT3nHbRXeCHEFjK/buxjrI2h/yBKHh9I5DA+y/FGJ0h5zF5EKQwNUWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWSqG2lJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWSqG2lJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1026C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779491553;
	bh=CXZkazA1AA1CkiVT1b2vhGXpJQuX/L6M4gK9xVh/ock=;
	h=To:Subject:From:Date:From;
	b=gWSqG2lJbwXGI0Br8koUL5zlkMsvSEeYHlX0BEJNcKoCWPtOhcNW6cVLDoVL3wQ0F
	 zv0FMv3wNibNhyIKgIATNfBcrzPJZm78+lAiwfO+vcvdamzffpxabB6Nxqmc2zMq0o
	 EjsoUuItjCNWwJJelKLnF530+oytLAY07VDgtZF1N0GZdYcACrClU5RfjD+7KDZd2j
	 odjfDpcYyQoschwS074cKvL1M+I9PHscqAzZGA2HOzFoolDG3HFQRyiN7VCSKotQC6
	 sH7HOuTp4sCgHIwoKxOBFRLEDgexia4yzoc8vddLa7dOoU4rOthL0oVj24zQikdEnv
	 JLKawabeh81hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F8CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949155368.30477.987731974266223813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413ec426d730e3158bd211eb0807df4f9f22e723613ef98f71cacd10b60b15cd
Date: Fri, 22 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779491553
