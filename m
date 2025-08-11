Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162E1EB1AF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754953194; cv=none; b=kAb0Zy56MKhO3CMPOT8FnsIvi4u3PM1yfoAPyfK4dE9uxrRYwaycN3Cs2CTXoQt9Lhuf30ktfCCuBAUZX/iqK5QsodM/whEo6fG+uztiKSaY1zEe3IUy6JRa8ae3mydluBra34URvuImjc4hA5iqWHQVNIKZBQLbNAsB1QEjHuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754953194; c=relaxed/simple;
	bh=kyqJOjHd0DgrQDGD9esVFLdTBhnUDjT84LiypU6YNiw=;
	h=To:Subject:From:Message-Id:Date; b=TRd7Pp71mwKnemLo5lxRh73iniDd+gvc8FdH2DY7T2iFtOPpt8HXhj5GKhEviZKXTorn7PHxzkAqQOuVl8VCDAlGNePwwuZLgyLFj4+R+OZ9NDQGTulSjfJeQfo4vHfkDAhSQkauN9oFQgtexaAg9E7T4SqkcZZHOvFQCYxQGl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AntpNdl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AntpNdl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754953193;
	bh=kyqJOjHd0DgrQDGD9esVFLdTBhnUDjT84LiypU6YNiw=;
	h=To:Subject:From:Date:From;
	b=AntpNdl3Psu8Wg1RHlicTtEJ/2GOgoR9PvhBhRfjptk/8qz+YM5La/oq76/jf0B3p
	 q3/C9Ym9VYRcQtzlbyWlS3EX95ivPQ7CtPBChMyiSsddO0xs/zvmEKasukFK1vSdhQ
	 c/XYRua3tCu1dbGN0yOnytItTifZGhOCS71gQzCWCL96kFMCiXApvwiR7oPFE1UBph
	 k+9fYEl+OOvPDoKTxGH5+0Zb9KXa0G34RgsMEOab8siQAFQETd8v0OtrkEUPy6KEsB
	 uXbt1LClI0R3CEBbWvk8RyzUkfjIwFhuZaK+JhXaqqftBNXcz6zA33eEJqXwd+cOU9
	 Wf+DqYVHEuBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E8CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495319358.15282.10153007863332853045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546efcf015735428ec26a39da0fd039f1635f3e2c6d400b0841f0fc5c929fdbd
Date: Mon, 11 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754953193
