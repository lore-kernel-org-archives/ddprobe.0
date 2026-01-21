Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C013B95F6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769023434; cv=none; b=Qzb7hKT+H7X7LnyREgTSOsMrwCmqskt522O5UvGdtA6jpy94AtJ+iWCOuF258rWQwZ07LLFXtZOUsKdA3jiYKfdjS/ngXukBnhT/FPwstZ1h3gT5XLQBgUpRzQMBd+FQshuWlWUmGbOD85TahzRMC1EuGB5kfgXk6lm6ohjwb5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769023434; c=relaxed/simple;
	bh=WxZRD6D+aq3GoMTvagnf9XuNoxWcIKbffc4rJvnW13o=;
	h=To:Subject:From:Message-Id:Date; b=KPT4l3+dOWJRrymy4Q0Gn/wZDqNNGjhEQ/zFmilD1f+IPZOejQmXtcs7eDBFkWcWiyJmqxlIAGqaQKR9HM9FJ0Su8W7CDwxAMS5nudoPTFyBfkoxmQ9k17aU1n21/MjSDHYpMOX3/nVziyxTocYcnCP/F9XZLCfrB4Dr48N5qpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDhXWB+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDhXWB+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05AEC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769023433;
	bh=WxZRD6D+aq3GoMTvagnf9XuNoxWcIKbffc4rJvnW13o=;
	h=To:Subject:From:Date:From;
	b=TDhXWB+vJttybpKg8+5HnXZyESZaFQCEMZ+ZUJ2Tb/4OY4MYvd6AoJJbe0C3gvO2l
	 n3uAnCQPlB6+S7Oe1pau1fqqGSLkKeHT+U7qjZEjLxCpOzQqdDUgemGxmTjC2jxBA3
	 CuVgiO5W3r1koEb8w4oTCZE+ouTOqC7gREH8LrgfVZ5mqu+lmiUdy1GqL4fkENNSWr
	 CsR46bkJSPFhmEq1XD2CQkpGcYRdBUqMAWqPMz0D3uzlqs9cpuT63x/1ecN0FhUy8d
	 r8Bfb9zfJ2xBXDZuOrGvJxuG8Msx7CtoRQzguIboL3faRqYH93d6oLziJitcoYgy+m
	 BV44ZllOxmpyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB3C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902343358.19741.1442589322219484391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00264c7f5ab2d9c133bfcf882ea320bb521d613122fd7e53e1b00645d362cb35
Date: Wed, 21 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769023433
