Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5978E3B3895
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788771035; cv=none; b=WmuMqkfTmGvMIvrfUoww9p+rF6gamBxjhLuC1ZmNU0UJeaGKs9J902UC+QUdzqk9YHDZmIDG/LKGCeCa2XS9yzS9RdzKzut9us+25EiEc6+6pcchzSuuIVZ6YLX+i5y+eG6NVcplIYNiiBdQXUDwL64xtOWCTYgYeSzUw1APobc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788771035; c=relaxed/simple;
	bh=RvRcSzFTFGOr/N6CgFBumQf86kQ41SsfstWsV+eIYZw=;
	h=To:Subject:From:Message-Id:Date; b=H3XHpXGFgoPEsO+tnPB1fn0CDu9kmdNqSr4DQ7BvFDG/O00MqVQ4mUeHnltMZsNYLcL/6oF9ZHmZjT6uUQf6thMUlCCRiEUcc4UR2CbP66mnunGYtfgRjKVF+vOjOydcFbRUEIwx8qU7KwX1TQ+rCmqyecfiA4AQ+aPazx2V9vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcjw8dtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcjw8dtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38FFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788771033;
	bh=RvRcSzFTFGOr/N6CgFBumQf86kQ41SsfstWsV+eIYZw=;
	h=To:Subject:From:Date:From;
	b=dcjw8dtpR2OuEPSLx9456WtDvgS6SShC/xaSopHwAKPI/4Jg8nOLZQKLO1BSt3lsb
	 iG4HGN4nV3ytQJ32LlRAFAdal/HesMSjmGMfuLXFnog+oGcvX0owiUHGDI0MuFuUgg
	 FkFlbSpmGUqOzrXoub8ky1dYtiFnpIX+YYUFMltJdv6NtgtI5YiBgANrwpjgmaNWpA
	 6+kewas1/qzPGBM6+/ak4tqOMxujMJCSk0O8+iErRLvTYf8NAqwV3PBBvcrL3mhGHw
	 PR7VBj8TAFGml7x5MtrhCBoc+iS84rX9S92hev+n7H1qB70nCbssI3TDfinfX/AHl4
	 1uR86150P4Bdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9D6C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877103370.23279.9585464362486388982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39071e1388ce1c6e76a880dc2abb52ee92809c396bb51c0458b4be3de9d8385e
Date: Mon, 07 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788771033
