Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EC442CB1E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790329234; cv=none; b=Lw/FmFNu6k//usoPZxIqEiI2szbBOqqbIkOvwVNIy+sshG/Z1tmf4/0bkwpTkHymKjoqHlQ/g8exYsgRsHFdFn4Ig0rJn0oKPsMngKV0lDDPZVLTFx+VTEiT4OG5yBVRSDJOKVQqKc7tXRwx0aZIIMYkRZcthfhWZwf6p7KzDAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790329234; c=relaxed/simple;
	bh=94p33hreG5klVr5lnKNjIDQZoJHye3cfLpxqYn2LjEk=;
	h=To:Subject:From:Message-Id:Date; b=TDJ9hN1Qfsz9rExZP/ZoVxh0uzSZxeeAa8a08iDgxw5L9nYfi08o3FL0oPDwsyhDY4dBE+XAbyUXTsPuJrgitgsoGuj0cQ8GkYXnCrCWQm6PL5B0JENLghWQokCUAsUev9LlfR8/BI1Z6dEPq3C04jIZXN9L0rXBvgL6YSkRszI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Goe07m3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Goe07m3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8818C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790329233;
	bh=94p33hreG5klVr5lnKNjIDQZoJHye3cfLpxqYn2LjEk=;
	h=To:Subject:From:Date:From;
	b=Goe07m3Jqu2BiIr9UXotrmCK4UuF0McYADcxBS5/9BwBUlhDBDYSpeNh+19ZNnX2T
	 SJVIe3PfLKK7yQvx7A2CBNNpaT79FsN+Gx7/y4sdVub7v4W4DvwADnz96E47ywmBxU
	 ieOa8Ruhacyg5YYXuPsYagp16ywKcY1Qy4VyvZ8h8xeDxNeWZZoPHu3KdS6Wtp3w5s
	 t1YJ6PDS5LO/vTeFp8N76+Oepmw47HfvsieM+SzdD5cjtTV3ZQT6SmVRdGBCqzI4vu
	 o4HOnQmrFpm5CeAiI3wvCDiE0PlY0Fi7oJ0ME7Hyq2x/+NCezuN5TRFHiDNtn+EL/m
	 VAZuHLwDZhadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7D6C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032923370.3263.9032426946839699498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b51c10c696c03352d2966de0ba39813f35e1ff87fbd542ac97c09b01c2a0db
Date: Fri, 25 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790329233
