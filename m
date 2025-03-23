Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108C15666B
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742755194; cv=none; b=LKuIstJib/TzjgGGTHIRk2PtJxoOWpP3zUf8q3VCzDLoirA1kkw698HTtSEmeqNFCL4/sAfe3FicT9aIVt7db6veqttVB78AOpdnJy4Ab+UE3dlVWBOKhzp87+d/J/mG/5CBOROiEAPUQTegGl28UOUGOzpmKSMzhEAWt6D3VLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742755194; c=relaxed/simple;
	bh=tw4gf3dSokHd20tePzxePPEF2/OcSDyVRBQytNqhYFI=;
	h=To:Subject:From:Message-Id:Date; b=Qwn8Mpx7D+zoiW+wU7kDckBJxydV0cmdicNv8ooIbzrLBmL+LHeFrX+QyGXB45QQsKTVLr+13OPCGDD5Os6pSmtkN/9wUlMypI1rHCRIxe1x0xtmqr8l9Lb+idUI1jte4mZd96+ICqfI1rlulfOw2Oa6iXC0EancpYMlRa3wRhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQt9MiTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQt9MiTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D09C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742755193;
	bh=tw4gf3dSokHd20tePzxePPEF2/OcSDyVRBQytNqhYFI=;
	h=To:Subject:From:Date:From;
	b=MQt9MiTv+/RHZXDtB3ugs6aid/yCmGE/rUG3zSUi+gy7f1UaKc2hZ3tH8QvZmLtck
	 7qpTuKa/kbmv4Kdm9v7nM6vtSbeZOQCuY1kdYU0gXUKziSc8/TruULJJfzEcaOfQP8
	 2yWoB4mzpqaMZR/mKx+iOe0cmzsJoJ3J0VGGkwEVLxEiz7DLT7z5FlCD2/6fgxAqD4
	 1vNXWYdn7glYy48rTkZpZO6cU1eqtVl9UchYAgkxxJYI30wVumDpAKr0/Z1oSBkO4l
	 SveIkp71F0OFGnVjdbZXgWcwL5a5Mv54TMioTLbL+jl2KyblT2UqIvlq6J1RFCOT9V
	 mxZCskwSY1W9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8538C36008
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275519367.11362.11702009383416051586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebc5159a171484885f1235be67dcd5259176d05ea236f9d86a016bbe9256ad6
Date: Sun, 23 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742755193
