Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691DE2557A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717858643; cv=none; b=gaia7TL4SgMs6izoj8s56t6Zxg3w/8G1OJ6y9QsHeBWjVRSnurd1z6plROVswf6BAJ/tNNLOaZPVPRO8ENXolvuIVxAdbwFxsExMg3qYf7IkNljdeowSO8QgZC1h4G0YbvjdB6ehlXIwvxrLL/L1TxclLuRMOOY6QfKqJS3wkRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717858643; c=relaxed/simple;
	bh=c8qKA3bybxHVrS5K0D+yA5/GFCSwXg4XEBG7fxyC3P8=;
	h=To:Subject:From:Message-Id:Date; b=FFAUS6xs9J3zlN9zuuN7N4RAENxviZ0SZdvCCrs3ClkYK7QsazxlqFDWfBzI5BimfwDA8pfslExm+fP6KbGOUcZs2ZkgQ2fUBxUQ3zQBtSAUp8HLnvcET/34ksxyCt8Fr3rekaYUPVjjD71oP8394sSPXkRCWdf3fPLN/UwEhGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7y1HGh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7y1HGh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5101C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717858642;
	bh=c8qKA3bybxHVrS5K0D+yA5/GFCSwXg4XEBG7fxyC3P8=;
	h=To:Subject:From:Date:From;
	b=X7y1HGh/FRiWiR6A6cfpGZewEfp1ErHrugXLZdxfwfcof3tfI/Rzzu+hS6Odo6DPP
	 hxfY5H2MbD0IgMdqKEGO1ESErec8onkNe1V48hlBBhZFPkFL9VdLK4Vvjd5U7zHEAB
	 JTAdOz55R9qJplViBnz1QO7spdZNBSe2ArKltdRsdmYM3TqJUjytDOBHtbB2aXic0v
	 UyLZL3mv+zQ242EeSQkmawYOsmOEXDCVaH10V97BKlBvya+TYX3eY9NekcRcFVTGe5
	 yaRAUFGubk2QoC1l892TqrnXkueI8bJNuW6x4M9uX4Oz1M3O5p6c4iu5qnWwxIjH21
	 Mn+RkkdI5+ryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE04CC27C5F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785864283.24797.2557877110921073118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d8e1a5d60a03c0f876995e97df5b452eddd362330ab9d9f16837529ff92568
Date: Sat, 08 Jun 2024 14:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717858642
