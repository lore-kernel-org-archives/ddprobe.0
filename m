Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5183EBF1B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769264034; cv=none; b=nZNUsxopZhlA0udWAlIRt8G238w5lziVnyeoz62q98b8vN2IQ79LE/zkCh8tb6Fenv0eLyZSffhV2YkucR1hP145QaoKVxgS9cc0ru3iuBYonCNugiYKwLp6Gyg4j/a6+C9QXC34ihq9HECa869Nd/+IpAxDuijE0wep7agpG6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769264034; c=relaxed/simple;
	bh=4DImFmA1TMqyQje5IhX5vRONotWDDylMiwm2ZXE5xqk=;
	h=To:Subject:From:Message-Id:Date; b=uqjj3MYX5SdGc3GWMW4VweVYbHNIT9tKrOgXaqBg1Bv6Ca6HhADj+PnBZVmKG96df+Jwk8UbiV9EOJ01Uh2aA2kYu67CsuaQLD7d5P0MaBDsCR3iOsCRGfu05QFEZv7uUUdcOmj/Tk7xA1gGL7xUSO62eR/+RNNhe56hEiypFjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYAyyaJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYAyyaJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769264033;
	bh=4DImFmA1TMqyQje5IhX5vRONotWDDylMiwm2ZXE5xqk=;
	h=To:Subject:From:Date:From;
	b=RYAyyaJwfk2t//P55gB4A51QTsEzRaxkfxkIf6tMYsCxNF1snc7NJTIhJouhbnXf+
	 VXbxOiv0w3LQR8ORq8Om/ddrw2Jmcc5oEZexARzWlQJUp8MqAyeeCGeat29yeFI9I8
	 LCGRwqstRa4dL+KCrPZZanU0Htb1mBGIfskDoJNJbLpfXuQ3+F62B1w3dIohYZqQ1J
	 T+vVSxxA0cGCbuUt0Y4kZbLkASrKLDDfkFC82GtWHKjEk4pkjjbCKZh/o9lJ0tLoz0
	 xG5YGdajjFsCVQaIJSV7N6VEO/+ZrvK4aDnpJIq/fQ8k05WXRLygYMiZ43Rdm2cReQ
	 695ybWWGgfj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96131D715E9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926403358.2295.7124967786793155944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8bc21a566fe4ce0096a55e4c4342306201daf71776c379f8a2d0b3540b3490
Date: Sat, 24 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769264033
