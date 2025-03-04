Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACCF25BAD6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741099734; cv=none; b=n8GA3dFmg3VWtGegNajJEQwO0DUvQIc9GYN/dxGk7e/f9G0RLdWatlJineWEK7ZCr8O1K3UtAmYSWKYgA7OlEGJFXBnZIVHcUjq8NWQaStwY9zyz1RHZGr3Xm38+mXr7IiLU6PZ7VsXophjKIpyvA2BYns3E6flANQbFjbYAkMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741099734; c=relaxed/simple;
	bh=jU9MuTM69lR+tmriscKuawqxsmbDkwv+G1uIHEVl5Xs=;
	h=To:Subject:From:Message-Id:Date; b=dDypPXEMYi8/yhbDgmNMXqU8bgrInDSw3qmw4hKeyMeo3D33iDxOmNKBW/xkhPtXX+mGLJze+9YaHCGoJnsYDF7pU3JmuXp3XdoZPjMI/7HI7X+j/EIh25EhZCOyJMzi7vQ+VPDQKbOvmPe/GAcfQ5ESZp1of9yt7QlLgH588u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7MWYIak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7MWYIak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741099733;
	bh=jU9MuTM69lR+tmriscKuawqxsmbDkwv+G1uIHEVl5Xs=;
	h=To:Subject:From:Date:From;
	b=j7MWYIak9c6TOOfwnDFJXBDfslt7Hl0fLsN1s705WJfU1zmPo0Kihn8JxnNlB8wrf
	 v/WisZs2lKqZUE/GfwMKjvplgWuttfvdHHwzECpk2EIW5BusecWzIWMPQxB0jXMGX2
	 O9mHlQDq1u57aO0y0SLfF9pEz1/UVPw0/jPMT4QJDOoE6tAY+hpqiiXoqBP3ppQeIO
	 t7Qdm/9k41KF67xMGN++qhQZ9mbTXtkHRN34XavQqY7LQ7apg+53Cb4H45Sp+OlPIC
	 rhTcptVGkVNFYXEkzEaNjq0sElX/KGbNKPIg49Ppv5zREVYkorf22LEorhhu8Sa6kn
	 QU87nMCjuKjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94792C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109973359.3103.14640221116474414223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a305b5fe46d17f9e95740c799c2690901b75fd5b8781c1b0c614ce63348bd0f1
Date: Tue, 04 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741099733
