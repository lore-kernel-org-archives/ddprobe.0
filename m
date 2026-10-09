Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370A53B42EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791523234; cv=none; b=XegIjUVmXMldf4rpfd4/Zuqcy/OOg2JiR5IKZKYf//4DtBuAANbkJlx8kiiLwB/sxaQNUyCp8x++6ZYLJ5H2ywrvTuAGbumLwTkRKn31ma8v6ih4SQOuZk57gi0zFA9J1i8gTl3F6RCqQXeY/+WS5cheMvHYg8y+YgQh6tRglnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791523234; c=relaxed/simple;
	bh=YLrwD1fx3Vdaqyum5MQFl7WSaLMmmiIv35ZhxR7CPvg=;
	h=To:Subject:From:Message-Id:Date; b=ZU6QQ7xyRq5+SzjvmRE+ZJ5ZjCJauKJJVIRUEK5cYF1z1DJJ90js/eRVQY0wazE392GDF0pSL3YfOCBizFsg8k4Sp9L+awYQz00zAJthEFDgaGgGXNq++lHzlobUMgvl3TuQU2yw5QfiIgXDrS4/45fDS1JPj8riWY/iJebuujU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqwG/f31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqwG/f31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9CCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791523233;
	bh=YLrwD1fx3Vdaqyum5MQFl7WSaLMmmiIv35ZhxR7CPvg=;
	h=To:Subject:From:Date:From;
	b=DqwG/f31tar/H25D/cWe01mQ0pEYprNtmLPyP0WP7CeRxg2IhGEfPAUvzrInk7hPB
	 jJ+2kzcuhTCTs7JparYc5KCPJmn9/zO6rygrqNJGYiXOVDlOU6SJxShHnRJUrJrwIc
	 JC4PhDRSGQ9vaMZYPVxc0DYaq1xxZbJ9JchL0BrJeI1upkZwaJGkgE09PHm0FqruS6
	 vPglNwrPq9QY8ixHGm2tXrXPZ2I/moVRMLU5N4QboAR2PCvRhCpeFYcfQL5h0Ai4Ao
	 DO6Lf9WyF3tCPA98vZNT2EABrAIvkTxujDhFJdSU4mUXPHv1nkfyXMPtTgUmnI2Y5N
	 dv3jsHq07HifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2DCA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152323369.30420.10124645449472471236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b47e786265bb9528461317a4a983e77af501250061f13a04124183e0e5b8c1
Date: Fri, 09 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791523233
