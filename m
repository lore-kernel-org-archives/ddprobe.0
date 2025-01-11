Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45239372
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736574954; cv=none; b=AnlIJ1aavJ/9LB4RCEoCHNn77gAIEqJlCSJ4NiFHkkjVJABU9eoBcN5hyNDz0U9CiOzNp4gZ/SFWZSo2ubdX7VzyslHagj132Yu5/ASF7JunVmbtrR21SwMssa01IBnKadDln5gtVIJtu5azmXviZXOyf6nZVZxGtxNwsvnndEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736574954; c=relaxed/simple;
	bh=vmI06EtSDIAvxcg7BSU81J/oIRsVarlbJI0mcXFFjas=;
	h=To:Subject:From:Message-Id:Date; b=qAqSRJuUW/N8xb/S2e9emzXnDU259CL9C+ipLF+1S8/UrqwvTLXxD1S5sfwvkM/EP6AA8pYXMS1Ye3waXPhYEH3I2jAh2xR6oXx73c4vkAH4aEQPlXWfcH0TLGkaQuv1npe1F9/wZ57Gb6FzWhZFleaZn33YX8oMAoqg6HFgexk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI1xqZm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI1xqZm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF5C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736574953;
	bh=vmI06EtSDIAvxcg7BSU81J/oIRsVarlbJI0mcXFFjas=;
	h=To:Subject:From:Date:From;
	b=BI1xqZm8G+uhJftS3LnYFVaHHoeo1juBGuf/xSeI5qR/LE05l8vFw13T+Lrb2JWbp
	 MnfMWK2uQapv5x+dmLGPYPvqbFdTP1MW09YtraIL6FWXnGocYOG4LOF/dKzjJfZuGM
	 16WKigvhxydJfsqLxhLpG3sn7nmpufminWnUdgeT7dnrNnjpI56EPzixqRIgOIW7/5
	 UO81lZ8ZQHXubyewpwj3J/LnbwRhGFBeNyJDb3PH36z/drjORutxQ1xvdHDYbHZnYi
	 ko++g0ow93yTAUvgJd9hjaaeg2kdiRgUB4wfGnD9HsHbcBsMzyDbOOCu+NnsEzjwdm
	 jVUXJPUUgoQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D53E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657495357.18386.3569406507836477103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718919061c3b6bde4f3c4b45a4325d876c1c8672c71f607fc2842262431b3f71
Date: Sat, 11 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736574953
