Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2206834C991
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767727434; cv=none; b=U/gIvFiG38G4cQv+v+myO3c86e/M7gFalGY91MCz7dvf1nhDDQc5Z+/X1jyMZIiheb6gCaxzV75WpOFWKVnSWREIStlTz04v2p74hupBguUl2NbG+SGvjGUs62Gm7dSLHtT2+XvcPwxAJJ9oI8GYURumt93a3HcNraarLfEQ/qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767727434; c=relaxed/simple;
	bh=11aatweq6dTb6BmiAvGemQ4d0AcPpk0wvy8Um8hY3D8=;
	h=To:Subject:From:Message-Id:Date; b=Ur8i5yZEpbGddRIF+RXaWLfQNXJoRWbr622Rj7TNKX967Q8unnFEy9PqIRliSBNdVgKEqLba3l76LCyvEV5a9PhZrWRt7CSdmePRI55TMZ+w/4JCssWclCbF+RUflBRAvT68ClBSJ3EbnYi2oBbrgZNgJPbKqvigyEihmilouv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IG3/uQ5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IG3/uQ5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1721C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767727433;
	bh=11aatweq6dTb6BmiAvGemQ4d0AcPpk0wvy8Um8hY3D8=;
	h=To:Subject:From:Date:From;
	b=IG3/uQ5+aLz7/0bR4+qO6HTDz1ce7DRYHPoXxLmrMmTeRZNBeGk+8cA4x4dxVBDjp
	 0XFv0TicbPmmEcuRUyYF2SoR6ANYt152RgW0qtdulQ2lPcHtNb2/KyZwj9UoNYO+/I
	 F3jAhNnjxo0LQAfs47M+mXz/Cxb8yvsS/ynDjW5POqT8ekWGvTds/9JDFjdeKaY5wD
	 uazF99AWx7dwQhG2oBKTA/A0Xm/atKDyG3Ll1GWkjJhxHYaDwDwqZAYnJvwTVdyfHZ
	 2uQDQmcaWfnRIXqKzOVC4wkfhMLUDPndmK8SpV08MEi269rVxmWcAwMjEBlIHIj5rX
	 8alNkfc4SSh5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA1CEFCF8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772743357.8091.9153987883397722169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7776e80974c9b9dedaa9f9b0af84b92834b8353fe59584c1c1b6ab19a81259ee
Date: Tue, 06 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767727433
