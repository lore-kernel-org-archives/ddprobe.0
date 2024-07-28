Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4464A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722131754; cv=none; b=Ojsios7m6l/nhApx0wCj+DogK6KpJE5mUtuQJHOpy4rCe6BhxI/hINXY93e1vVbwc9V3VUIzUNOGQqIvBVTR14Ec2WANjT63Zu9MLl9PpElDsOyEx/sCw7vrC/RuSK638x4vOto5QALblUO1WJ2iqlS/6LugfzFRepZQuWVOGjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722131754; c=relaxed/simple;
	bh=NtYgezNUmlVQK43CALPC8qQ4x5ez0oo0MDZVtMGCyR4=;
	h=To:Subject:From:Message-Id:Date; b=tZ7lFiZfrrgJ2WFCSpyG3JEgNwxwEzbUJFtv2ma77VsLIr5/MvSsf2jGhNQ5lVyHTkRbMLTShLeq0wPmc5FglcOcxNofhH0ovUmfdkakvMIS1XE+2qlezVQ5JTtl1vw9y3/It2ZeTm+Sz/HwNt95LEV9aNYK8RojooSjlyWgOxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6YPzhxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6YPzhxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B309DC32781
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722131753;
	bh=NtYgezNUmlVQK43CALPC8qQ4x5ez0oo0MDZVtMGCyR4=;
	h=To:Subject:From:Date:From;
	b=o6YPzhxKLRjoVi16QWoIWX9B/A37Fga/Q4zJz8Itlaltf6bJfkG8xKZygT6M9U202
	 tffNmrIgi5f9NcElxZpeteFXixzXXytlbg5GcSjJQZZ4IUxAOcnebibuJnG7vyfF9F
	 Lpb8BrxotlR/ChAaIjOUvAWzPjUtTOx7Dxyuqd2+wBf7n9dXTmUtL3UCVAUniwNRM+
	 biJ4bpvD3Eu9e9L/VYpTr0jZA42Aq4Lpi6pZZgk5bD6cgwBdl1LF98rMVpmEfmejRi
	 D3BhU9Eg55Ybxooaiu5f4Imu2F0DWeyIvcDVWeeYmaYL0GfZ+Sht0WU9pJvKBMErWA
	 eJZDLBJ3Eq2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADC4C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213175360.22717.15218452977664850897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50938e7b54a40623cd5e790afca675b6d9e958394522e3ba62925e8ac09545cf
Date: Sun, 28 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722131753
