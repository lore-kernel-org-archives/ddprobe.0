Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D32E802
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737939954; cv=none; b=j9+nhSrS+x5LU0qWqeBp5/zjIbCNKLYWQ4gc+638iY9dVI9dP6CP9qDh/KFcoLa09qkF0zRXr50nitSl0iW1dD0NvszVn/uD/U5MX5zvzH867B4CjfhkEmMLLjw1rYD0OXZ+Zf6C4t5u98Ltk6CS8FBAHoH8ruWYyMpLCKKKjoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737939954; c=relaxed/simple;
	bh=4ofxGRKYGhA2iUo8pcxfrwyFXVH9C6Bux5OGLSQYKhA=;
	h=To:Subject:From:Message-Id:Date; b=kk7GPr8cMOMa/88R5WBrhG9P5dGJbm5h8v/00zRbxqfUW2NFLmjMWKudovFx6UVoOIfzqR04gzO457QXxlGTG+5EwTuSb7TlF0mEDwsCYMyct7JQNKNFYQcwDotaRx8nSQRnJPLhnFrZrS4YSRQzkousrYvLnFJPZx/Amyz7d/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2FjPqZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2FjPqZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB90C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737939953;
	bh=4ofxGRKYGhA2iUo8pcxfrwyFXVH9C6Bux5OGLSQYKhA=;
	h=To:Subject:From:Date:From;
	b=s2FjPqZ8KbfY6s7wqvquwB2ov35Cai/TYKuC1rLPJ71Ybki4tsRozEyByCyyuUF8W
	 Cct+5SJffIgG3HB3cyHkJjETrXtL8WmGzGLk6zDhqG0H3aN/iORSesph5foxn30h0n
	 82OJeU5fg8gjZ+3Zdx20RidEiZP4OLvOGNiUkg6sXcp2MHlpJVO9sZKoIyDnlOghvw
	 S9Igq3RHE7bomzlKd/5Fi/+taE5JXK/k11KYRLFtrAjkVgkzpz/AUbyRUTGXb9d90P
	 UdfgrL0SThLprwc15VgjOBIPN/+LEAvAbVczg0wGNJb+7Xawzuhia9tI5o4X3MrvHx
	 h7qZCZN+0SF8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9396CC0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793995358.24258.16932654199262267003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5d95f101e86b8ece7ffe1a09ac4c07a3831b4739118a289fe9eb2bb816828d
Date: Mon, 27 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737939953
