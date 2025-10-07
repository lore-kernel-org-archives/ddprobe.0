Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638023E350
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759871994; cv=none; b=ukptdTLzZnAISEkX9Io+aalaPbalgFWGfxw0cR5QJRJTEKI5d0nwK+LW4OGwzez3Efn9q6EU0d57Rlv2gR8XFqRfTP2b7sdDspUGePRGQwWVL2F3KTHAmZGeQygB5ETHi0M+/E0q0pRCvOrzDX/embH37SPSw0LIA4UYRncESEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759871994; c=relaxed/simple;
	bh=xJK+gZg6YNVtuhv7DEfk+U7Fn/PCf7oNjLlJYRr+loA=;
	h=To:Subject:From:Message-Id:Date; b=JgCnv9iEgg96Y1i1hiOHPfAEEy29/0KM7XK06vsVg56fmSCDvjfnU72CZyFTMN8VVK4mjDRxRcB0uNXlBD3045kTr5HgezbmaqMo2jURoEFNpgzpTKUaFwC7UnlNmXE5FsTvMREFk9DXRkA7RvTQKp7fr+Z9AVpLEKghKRUCFCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf7UL79Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf7UL79Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1389C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759871993;
	bh=xJK+gZg6YNVtuhv7DEfk+U7Fn/PCf7oNjLlJYRr+loA=;
	h=To:Subject:From:Date:From;
	b=tf7UL79YjrlmZONPL/EQuRVFQffFJm2IGs2Iwi6gHSKUUED8CSeCvN9CW/G5Fz5X1
	 8gibsLHb0Gx3HQYNE6lxnwtVAMcLptocyAe8eTj00YfhJgUxM5/kKxmhZxesRelnh3
	 s25qcf6m1GGui+33N++vBHOVLGxVaf3TYCk2un+hCmjuqxMD594PW7K3QQ+4r/GyLp
	 bzVYHHDhKj7ud+j0y9u4PdM4oEy1YfQcwI7sgzIlrqTTKiMAc7MikJR1XDofjHnJqa
	 2MXHIreSJGANjg7Jehd3sRoP0tgzrnFUOgwwfZ5Tiw5xi+JwveF/MjysV4risHGgW6
	 7OUlKqgVfqTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9ACCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987199358.10289.13658767361757120305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570b5addd0911c39b5d08621fcce83538dc28a76500ff18af6852b1970b93baf
Date: Tue, 07 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759871993
