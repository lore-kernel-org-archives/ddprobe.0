Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E68B2222C2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750717794; cv=none; b=Ux5Cb8uI7l/qSEYvyNpSiNuR8GLS09EF8xJbtWLW5Xv+YvQy/dLajVqJdCbzgaypq92Rwi7zrXxR52ZmNgp80nPI1fiSqzNn7jvhMVJgDb1zO7hAfQCOLx8k5XKZkgqDIQz8xRUMRPVv7DSwgtYQbdzi2uJzWB/SR6qzmXSyrZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750717794; c=relaxed/simple;
	bh=XAxxpb8p3S7jKq9iXnJMvNOSMvhkZ993o6HKKQVflrU=;
	h=To:Subject:From:Message-Id:Date; b=Bfrjn4pDG7POM2OhH2nD+0czH8zgfc0tMvjaqA+toRoBKesFOs+LNqMig+eulXnikZKieX+/T/qjTPqUx3IWiBZihCifuDN8mm95CZf8Em+gwsXKeavZ8zJpS0kSBKczDkzAVCq4F9sTggAk4aJt9z61YwIDxZdu4VNBkV/toHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SE7+/37T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SE7+/37T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF7C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750717793;
	bh=XAxxpb8p3S7jKq9iXnJMvNOSMvhkZ993o6HKKQVflrU=;
	h=To:Subject:From:Date:From;
	b=SE7+/37TgQwJXNVDrL65KBVcDw1T8wC1pX1N22z0mFujrkRPCUtV10Mg9jwDjBsmd
	 7sbKXj6GvEkHZBmd/pKpSbrBL8ILvSdP4kPY88WIcknaxtytkBB/IezFGvAfaro7BF
	 POT0dKIbtLrZHR6Dc/z2xDbJqm2592ZQtonldyJCIJpj10ufdYoWSL6jjTg8K7i8Ga
	 QCyvADWRzEH42Y0dTJ22SQp3gkJ5+o573XMo717O+eTjvJRg8ps7k7inUnalXQX82Y
	 8pk11nDyjPZwbz2SoIug4xhO/X2bLQl+hwth6+QRuyKbsaRlKMeKN1bnWMgrmM1j3+
	 EfQS44zBZWUZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E1C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071779357.23586.16584009107358145090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a24cafc66631639ec773dbcc2419f24849ed4ccf9554a2ac0b629231dd2b23a
Date: Mon, 23 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750717793
