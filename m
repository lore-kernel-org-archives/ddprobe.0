Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524B93C417E
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787400034; cv=none; b=YrNgAwrfDyZOUJIOncqgyr+fIT+SFtWI7PVO7dtkWwproCkqLTJEr1p+LSavqaUqU945utJGNHnGpnMTHfQx0LjU+ykbIIGjSGl9HV/vgmCMLy5lXzbTzZeNagBjNthDOBTkOpHHg3jqN0cWNdYq8gIa62YNOA6+cwyNTfxmdEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787400034; c=relaxed/simple;
	bh=uWJwrI8q+0RQPhxi/IkD18uEEQTYMVTcHrlrkOrEZ6s=;
	h=To:Subject:From:Message-Id:Date; b=TEouMt0DReQXm5VhhcBOZet6i0qvJqVnpicM1Al8mmpUrCBKyeJ/5HvkQBx20o1bkRF+UYfTX4Tz3wK1gSUXN8BaBR5fid5NyQe97Y2XkDdBCB20mT/20Im0XdRA1xmplclb8CDM9ZOLz8acokwL2bp9s2/5O0PA/s5RyaTPxFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhpUmIHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhpUmIHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0895C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787400033;
	bh=uWJwrI8q+0RQPhxi/IkD18uEEQTYMVTcHrlrkOrEZ6s=;
	h=To:Subject:From:Date:From;
	b=bhpUmIHVvsIPcuTpCiHziuF9UC773stzjsjVMRxLsK0+1MOMeZamlx6F7z0PY9k7s
	 ixALuhHQMnKJIqAmN3Ms53LsmnV8MuxCa7Hx2dkpNpjPBp+jP9U6btphwkZD/dX1L+
	 lUF5qWAWwiuXt0F3yZbGXnAsUgyGQnK7PWDZIMiGLMEkRwbVOIJhuNnyvS2o4BlAYy
	 QCAyZu8J7CMJdInraxQR3i70tGAtIuINfOSHJNMp8LlSAR0rzwQrhCtFumEtVcfh/p
	 UMumkNnx0QVTsdp2DiIV/9jbGHRjZDUE9ZWFRZSghkNt/DeKbxsPl1TBhJtuGZiiJn
	 g83fxBcmZfrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3947C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740003371.25687.2660803898786066347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967a238e0f12c3401fb677d95be5a1d75720f3d78bddfdebff94816a4a6e7053
Date: Sat, 22 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787400033
