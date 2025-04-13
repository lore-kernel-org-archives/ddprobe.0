Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4C24A29
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744531194; cv=none; b=owauedH0Pbr0li5W6BRbqmMaLbXnbZ1PawB0xgwMusiZKIb02hpWG+IzyzGOuQIFmi8ODPJP3ejGxv6NhLdFrXYPKxJawctIqxEGnKw3ZcLvtRLnIetb6ND+YljkDS+qcwtMMnZzKp+GILF7U7TWmzVox1CKgG9xOFhrdBZjlc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744531194; c=relaxed/simple;
	bh=+80gde8knRwGozWXVKQIfW/zCExTqYCAErPGd3Z4Gi8=;
	h=To:Subject:From:Message-Id:Date; b=K2RfOzDiGsKPTK4Q3qWrvfZhSkp9O2wbh4djP/9JGfqJLeRQkwVoWwVTToFL8hnhrk1mfQQnGTlDrh7amQCToS2f3w47Q/PA7JlXiAJhRmuNYqzDLyisTrJ8GNhCIYotcmkc/AABHw+sY0iMzmyMTptTPzbsgqRDVUEUEhnFTvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiVvoS5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiVvoS5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3F0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744531193;
	bh=+80gde8knRwGozWXVKQIfW/zCExTqYCAErPGd3Z4Gi8=;
	h=To:Subject:From:Date:From;
	b=OiVvoS5pPYa3wX4q29sPtUoTje4GFyBDfMl5pDQUsTlFTnAV/2Tc9ZFyENd5IMSEo
	 bvdUp+KJ7yeNeBh9mdxif2ILgUQcRUd/ebfRIcPOUSjoCxVGzqGDW5FaC+XZAXSk8a
	 2RjF7MMN05Q4vWdJESDmf9vHlus31mDAxkViQHOGyNVd+plNlfsoA7j3zxo/W0RBy6
	 JComODfFjytMGUf9ib6sN2rxes32wJI4lu0zBwERGU1swjoKsBAZ9LES1VPO9e8S/4
	 Mi/Qt14C4mNUhcJ6F9FWFYcRRi6jSFkzlDvCPezpv6kP64yv/I4PgDHnKbgptvVY0Q
	 WNBShAkxLhVrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985C2C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453119359.22422.15472731552327064758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5155ed5aa4216df45cf0b4c6232715b50ac06ea183da1fcdba79196837f127df
Date: Sun, 13 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744531193
