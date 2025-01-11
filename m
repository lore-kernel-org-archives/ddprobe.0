Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17F7B3E1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736633154; cv=none; b=uVhQGG4RCCq/vil2hw0BO/LVJtNuUxEwkPys4JRuyTCtytLwRPoUzBEaWKovyDvPiGU6Z9FmgOAKdo7Ojl0QXD8ns7ZNbsv5KDKFeYjA6UoXINxhBCZsTDJb8e8HXSw4YCkInFMJwyq+DGYJfzUlXz3mC3YfcUz4ODZYOwn4l6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736633154; c=relaxed/simple;
	bh=U8ObDGCDkj7jgUyuaNkRj9YguQ/rssgxKtHGwx+pByY=;
	h=To:Subject:From:Message-Id:Date; b=IqWHZUKuFpY7GbEIVQL63WvrcDSNwB3eiywFK23ctrEuDODanACTatjmthK3Zm2Ldc0xzsayhvKh7jF1LaIKyFirNQnTSVuDiXqhml9FpnG+Pd5hS2KaS5yGU7YaDDi2zJE/ikeNvn9yGT7ePBEXQ0EmuAUh/Rg8CLBPcM1YNl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kyd5m6bK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kyd5m6bK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B53C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736633153;
	bh=U8ObDGCDkj7jgUyuaNkRj9YguQ/rssgxKtHGwx+pByY=;
	h=To:Subject:From:Date:From;
	b=Kyd5m6bKGl7v7a7Q5QF/iq1wJOB9QgwJsvmbIx/haUBFkECKsMxn6nHZD7TZD7ve3
	 tDrs7otIRwZS8z6rXl5juQu3sZGcq2FVsjWESxgMxRUoxY/cbYh98+ob+XwToGcuxc
	 6PZ+zcSzwfMjf7sEh3vO/j+7Fhj5QZ7HlajlQJd+lku7amPyUqJd96k2txUNbVP1uo
	 m/ne1A32/ihV3TMIW/hWrmzVyhzSHEKhJea+J3kJcftk5mTcS543BTVIzW1eI6T7vr
	 foEZ/VbnijrthA75ekz07dNalUfT7C7PWrnIwv+Aq6bfUSveFVTSzQNk+FPGUqu2yw
	 2sznCTJut9TUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B289E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663315360.11469.17779271291571528982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6a8544df1752642cea830c40048511378fe178e0be331290f7da0d802aec49
Date: Sat, 11 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736633153
