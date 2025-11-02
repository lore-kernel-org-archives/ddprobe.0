Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C23E25DAFF
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762070394; cv=none; b=k2Fwa3sYve8ud2cWrijrOvJBWn0vylqpbEM+WXI4lqsL1ZnlaJ9xszOgKk95G6UTFas+zf+pT7IPMlOYmW8RYVCSEKXTJ5dMc80c4irJ8xVzizblMsscAJ6kQlIv+hBLQ2tlBntIJ9obtyt2yF780VVbaY00yWvu1y+3GDoCa9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762070394; c=relaxed/simple;
	bh=1VPYEfbBwM78Y7NUgJwE/lp0lA28HQgKxQ+TeUnkHtc=;
	h=To:Subject:From:Message-Id:Date; b=cAyX7NFh9zoFe0oPG1EEhJ1oaQ4uAl9cgvJ9dvFGzSIycUcAnsxNdeac/N+yT62B77pm3N5Z7DQQIr+9fAsKbIa+XPmB2wL2tKfHRKl/skVSlQ0gW4HIEmKNoBNuqkdg8WOqANIFY+EYcLyKpcR1qBXvcHLHfNx22BXgloRxvpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j45TZRga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j45TZRga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA21FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762070393;
	bh=1VPYEfbBwM78Y7NUgJwE/lp0lA28HQgKxQ+TeUnkHtc=;
	h=To:Subject:From:Date:From;
	b=j45TZRgaXfxPA3Xb4ae9FBHu87LLJ/N9WA/OjQ+OAbRNixAokEgNy7GuUr7/sckoh
	 ngo+rRYm3dxIEj1wSOaZOmKq9XMVKAgR5WU6KaNfvj2xanPOjzIVjNJB8rqSfg3xWX
	 KY/DYANYK5QjChcTGelkBf+IeiXIsGFswO3Tf8XVxPwBlJO+a10OAtDi6xoNpzb6PG
	 ZlslyROQ2GBssc7bwxLb+H4MSAXkWEjdOsMKpcen7dER4hGOVQgZHJhUKvUtOSl87Y
	 Y7q2QFmI9PVZe6n0X+oQW0LqXDOoLGIm40HJ9FYBl/pZvgiicrOh8/W19cLbBJF1VC
	 zH5BnqWZEDx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F49CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207039360.6784.9632654494475548797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb52a014966a6f3a8b823f01b0a031d1cab6b2a7ad26b40842ca87faa900a33e
Date: Sun, 02 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762070393
