Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC954F215
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724654755; cv=none; b=LNTBFYsvRygJBTFpSFAJv8EL3KXmMmYZW9W5TxzkHIAhTWWaWaE1FZ6vOENd0pV7NIp5l0Me3CtLj5E/m+T/aVQZyEuI9f2/tAUwmHYdLUUeeZdA2zUxDG0ervunBWHIBn6RGibNZn91o0FWfWKWsMRGighYIUiaPF/2wWF4bAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724654755; c=relaxed/simple;
	bh=SI+XPtZKhIR2T3DLrYJ5D0EsyygsmKlBNUHIlTUD76s=;
	h=To:Subject:From:Message-Id:Date; b=tkb4hmFIxJljJWGpZay6n+kotIaZQhXciFjU4uZur8K6LH3L+zIFDSll2gmKakl6gjP30YOaShS1mZ4bKQCOCYegQzeMwEVPneNnmZDfBohmaYFPOkOejxNkNCIU51ZoN7XYIrK/h2RSCpPwbcRABSEmsVLHafm4+2AqXbK4wb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAGWlnAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAGWlnAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E82C568D1
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724654754;
	bh=SI+XPtZKhIR2T3DLrYJ5D0EsyygsmKlBNUHIlTUD76s=;
	h=To:Subject:From:Date:From;
	b=YAGWlnAVI97LOoKdIIzYQQJ5JUZLw1j2VtaMALwwqDhGa5smMud/LJtFmb6cAlyAy
	 CgRIhbgLE7u1ccfX7DTsjyu5micRLnlxc0uE6ML2XUjE/PnjWdTX5WQQxJxyquq2KO
	 Sn0IDc55Vf1osFzO1rhuhSmMhIX4L2wkmGJmllSqBRDoUBAZPKaXwzZZxSnfFwoBxT
	 Fb2p1Nb9xbrk55AqilWj6Xjd0phKbz3r3iQQf5qAB/Su39Ri35wdGKsycpsxnBBcgE
	 tXcOVPoqmo6BXWdOkYX3JjuwLM2jAk4kc/KTSy8PotVEcIAq5qYRC1YjMsibBgJmFs
	 wQ1WohlXt/Lxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C18C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465475362.18417.17693112925637262116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af72a0f796a0dd2a1c66fef3dab441ce294e8e3659efa01105778051262863d1
Date: Mon, 26 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724654753
