Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DCB2F8BC8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762293594; cv=none; b=je4qBhqww/GA2i9BqdpLQWshdFOf0oV0NXRwIKZ4DtpmaP7ZmiureB3P6ifiFXnqftpFuT17FtKHrYYNMeBV73zaWU9a9URo4sAXdF5PHgJsnJMK8JC91ZGhkCIz2AIF97BosCULBEqsdL36xOzQpDz1byu9MAHvERgjcBU1pBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762293594; c=relaxed/simple;
	bh=r6IsEM0xZ96EYF9sJ+Hz+2bQaLG4Z00TZ3IG/U3aLoQ=;
	h=To:Subject:From:Message-Id:Date; b=iDclS9jA9q13yznxDDex53/xo4nOc8og47IhPWlCuIqQQmqiObMrwYmX64xnvdBXG3P7iIFCn3eFcOxRt6gM9jbLwxcn2xWZ5MlgXkYPR5m8RGkiVbsIMXs1GXj2+Xcef0E0xsRXKz3A3jRJ4IA8I7UxTlFGCQpR59xH2mMP0QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuIWijO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuIWijO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E165C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762293593;
	bh=r6IsEM0xZ96EYF9sJ+Hz+2bQaLG4Z00TZ3IG/U3aLoQ=;
	h=To:Subject:From:Date:From;
	b=VuIWijO4+TXxiwJzfgYc9ktY8cjvO8LLgZ9l96AqKNXvQCEmDMJtLkbRyKTglXaWX
	 Rsu9fA8CpDoOCXcFssYjU3rj9MbYyANBPtOnlhQmo2U45or+PgDH9/loISIMsVM9AO
	 IrSBqLThXm7QZ1nl7dCIHQlaghcNk7xvzW4A0KkW0vxQXTMwqH3ZE5Fyh1ZVVu21zQ
	 KFu66ng6l8tv7Sqq+321Uk4lf05wyeJ77iNIgGfuieIyaFxM6ARSuFLM5oZKvancEj
	 mGmm4puGDCWSqr5kix3FRENdT85dAc345P1WK1Jw/HVy4DsrYoRmKQv5pn3U7C+WvU
	 oXMimipM26FbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A8CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229359358.21912.11925424344995297803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aec0abefa5aa209455bad675d727f341cd52f4e9bf0e846bbec6732ff80b41b
Date: Tue, 04 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762293593
