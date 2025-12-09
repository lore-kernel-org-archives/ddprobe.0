Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2202618C008
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765323174; cv=none; b=d1vRhaTnrjfkpaTWI9fY3bXk6ia3w7oxnzhS8DDA442cS5RkCZkh1CANwfVmXK0Vc2Z483iPHQ2Cp2EYYWwduNZTxk4ccFqZYjfO3krLPm2TrLFlbvUY4fxbdcwHzSYRuSbzRJOc5E/z6g2io8EkrhkwfPDm7zU0qMN535b353w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765323174; c=relaxed/simple;
	bh=rpEVV+w9CDLTYFdhrlZ50MeF7EosmZYbIGNbIKIfU2M=;
	h=To:Subject:From:Message-Id:Date; b=DD0kYJDXr0z+ILzaNERypU7jrVruK+WvxXgethiCEyNJ+fwv3N3e7O+C7c0iZkKqVB6FOcOmLUHbeh2XOhO+NXMn36O4hwm/F3V6xBi7BptXeysevFC9Llb9+xHdI+JAbF1DY1dlGtk+HO2qW3DIxWW4PEyrx2rrHx7yTutFDSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEuxHymi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEuxHymi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765323173;
	bh=rpEVV+w9CDLTYFdhrlZ50MeF7EosmZYbIGNbIKIfU2M=;
	h=To:Subject:From:Date:From;
	b=ZEuxHymiCk3WdAO0AYY1fNevxg5vjdQpvWvxlKwk0bUbCwdnD7DDsT9uyuB/4Iq4z
	 F5+czTA8MefETp7mWq71oaXw7OtCZPoAiZ/kwGio7AoM3DJ96ARRaa2ilHkoCzi9Uj
	 SGt4jv+pob+TVQ7zfevOTZgF9bcDOx/085N+5t3ax33NZL6lQAfct/gdfLFAettyZn
	 dU91VnGWIu2AB9qGtAbu2qlPePLHp2ldTjEEqOoRRtbcawP/ttk+nQXkvAa5u90RAl
	 jhTFcQGzEKQIfrha2TREG5K/AGYwKJJ2cPM1hV3bOAMzma+49V0zjPUQmwF0vsDa5J
	 kpo+QSh/bPh6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D6D3B9AA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532317359.5355.1157675641908630583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccd224349ed82029113513cb4f3c90c9b88854332ece330dbc8a93dd797f117
Date: Tue, 09 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765323173
