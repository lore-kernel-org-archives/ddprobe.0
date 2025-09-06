Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DFA33E7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757144994; cv=none; b=WjwXvlm/vhDxH36D7M5c8mxIUTAEvQtznmI/y08Ay2CWGLcvvDgLA1+g+O7tevr2/AKaDwy5UJ9LnSlNL85kMyYk22pFjcfjB9SKRMDIYffKihPCQJcIy9to+0Jf2ieftZlzzXsgAfW02R9SThWrs0BrAwh2D4dYNLwcfXD5LlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757144994; c=relaxed/simple;
	bh=3Rbq07tzaZQ/7eJKxQgY7D2u+R3ZLawk2w9+b3HvP+s=;
	h=To:Subject:From:Message-Id:Date; b=ZOuTgVscmubevrtN6VKkjV3HPIbsdM76ReMYwOptixW4AF/gffRqlWLcTkistAGob9388KJXu5v3G+Zz+G6YdjfUseFjO1WTC3c93IB1ukwBB0jJB31pthzclNNbLQNhw6yPghAJHqgW/Gon1qlsb6TFJzOTp9LRRXp4aCHf86w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWG676wl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWG676wl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7710C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757144993;
	bh=3Rbq07tzaZQ/7eJKxQgY7D2u+R3ZLawk2w9+b3HvP+s=;
	h=To:Subject:From:Date:From;
	b=OWG676wl0gj/+3S828227D8jk+teMJwEAFY6N774cy+nzis8y3hW9tNS8gjA3aMHT
	 y29+IP9n58LsDvzsm6STfroTLK79cHA0Vt3ZoZBospk05A2TqwXiIV3cmteLunGrhX
	 zXIhk2EdxzHcrgMHE96IlEMn4UK/oUNQsgJXiY5e6dN79rGVPV4BwvrTsrvozU+EpE
	 oPHUXtXYT3rPdNt70h7t38S68I/KEVziBOfC+wzZoJlKaUB0KvdZWUeP0lcFjQuTcq
	 Idn/Nz4Vf0eTUuUqzt8YMx1QNCHJXu8rfzbCb9UuUWoGwmWg8Ch8bu8FyaFEdfnoRE
	 lrlkEA5T8uOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CBECA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714499358.18055.15490448337648393593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4794aba11b2bf856f6bbc4333fa9917758e7039183aa3863bfb0c716d38dd858
Date: Sat, 06 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757144993
