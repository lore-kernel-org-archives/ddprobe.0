Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0F71C32
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723937754; cv=none; b=pRkGnaxt/p/jrE5/ABpJdATuSxLUg5o0FbwbKGcRuijRU6KMXVm9Tk9L+w4/0v7wbFZC2WC+hPj4QLTf3BXCiDbGNASSzgsMufVtQg5cDTPSQv2QnfCy9WicYPFF8FkFZphEAFRxqfiyp8V+BDbYr7tYWGmLKTUasSPGJR0TLp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723937754; c=relaxed/simple;
	bh=8Ep7kNhlb/BHvl0A49ZlzvFIMBE2QgRN6YnHgQvzBG0=;
	h=To:Subject:From:Message-Id:Date; b=k1+39L0yGEjCq1L3tatYvrwQ1HK4hCqY+HIdguQShsyFwDkA7lMUBj+YpJGCyuMOXo2rfw+OI3If2KHvkdw1EB+aFCg95aZ2Equ26P+bg/RwRhfRTTw6WiViWwGZ8ffzjRuWRLdsk0vSZZVF0u+5sZSJRMSCTa6iWSgIsHFvebs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEx5xMtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEx5xMtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B443EC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723937753;
	bh=8Ep7kNhlb/BHvl0A49ZlzvFIMBE2QgRN6YnHgQvzBG0=;
	h=To:Subject:From:Date:From;
	b=jEx5xMtkrcx6utzfJc0m6dM4QTqVt4jxsr6HyFiH+agLl5Pr6oHBPnx1Dt8heTG2V
	 mrSWcJ7+PkTo3T4jEJ1MrSS2ZJvKiulKgL6sNSjWQ+4TwWvI8S5LkeeAV5c39KeUlu
	 EBLgHNJbnEMuC6AJj2zmbup4EIGd/txZJ64ByGJztGvrkxMMMQebjhbPxSkHkcYUOy
	 Lunzy3GIMbyBEVo66lTu57GoG4X41qCtaiQmYFFkpSCBFyPVt6Xn+eqryFgzbvD23c
	 11TDuYxtXY3U7p2Pzaz8oFISffnPDRhT+kkMfXvHBO38VvpYbt1d+HCsWyJ1qJ6vcx
	 sp9MJSx+IrEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA1FC531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393775361.3558.10790601316536532406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f55191725d686607c1741a6823309dcba3e55b7e829375e1060ba6ef48cf022
Date: Sat, 17 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723937753
