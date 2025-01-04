Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B878467
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735967154; cv=none; b=QXqQOA6RrTpT5i/nJ+k6XgWeOEJbZI1GBs+nae08QqS0yuIzngk0IyBfXTRzedjMDVZgwniynU/mY2erTvNDQgX0npysRFQw+DbwCaHuKe+0kKt3F3GszlIGTinMzrNxYlTakJ15jTJUqmW0d4oHmPAYaTUWz6LdzlLMuH0af9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735967154; c=relaxed/simple;
	bh=wv+WtjCGPl3ODC+/7EGUew0dTXXMPu8sEYEGBlLCoz4=;
	h=To:Subject:From:Message-Id:Date; b=hXwoXMKNwSmR4njLqCYwD2j2Rs3CVnTzhSgrEJF73xdrtAaDyXuHzdpDMntg2wNoH0a2moMrCGzjmdedGqpW2KDBRqCas28zRRSfksnebd7mMKoJFwgFQwLQi4j8FOCkXA2rzY/mAf/9QttRIurja3NIrrIv5jsyDWEzUVoP1Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qy8fIrgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qy8fIrgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B491DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735967153;
	bh=wv+WtjCGPl3ODC+/7EGUew0dTXXMPu8sEYEGBlLCoz4=;
	h=To:Subject:From:Date:From;
	b=qy8fIrgVSqZyNl9JVZoN5GzlPq/evdM8JPK+Rz6+iXv4XDHupnBExFU89DvxxvRt6
	 hRImGLpETQo4VGkS3BY6r4UM28qpfLgfTzqf4WsV4H855+8ezFmOP0z4Q19Jeg2bTH
	 BkaEImUIOG5brUs78UkOLOl+VJpFdcnoTzeg+Lg47S1mZmKBfQQzflBDUE3l1KKxaQ
	 /Ty0yscM8k53CMzaX9nBzzF6sIHv8+/YXj8X1VgCxu+wv+IkOi2vEzDXdTO+atYSYE
	 MkilAUS1Hw28YhJGBceehhYnfJIMQyBJ8LoYRC5nTUAOvmbQfX6xPjTZ5INErhQGUZ
	 bM02FIkZ1Qi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1389E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596715361.20646.8809366574182207693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a5543c0e19e35e1551ef0303cb733d2087a776841af2e87d594f4d5c377294
Date: Sat, 04 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735967153
