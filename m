Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C521256D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736673354; cv=none; b=XoU0pxWTFKYD2VahmpbqeRClbLTCsmgupkL3RJTdBUcrT0kVC4ODyE7AuRrtHuDF98mZWvv8PHel7CnvsMY93FhyKAr6uXHqx2BC9P/JjSP3k7FAdYJ2p6cxqsjBFORLWXcXv4Jt9jlD5hcJLszBm/BSG8BwJXfoeKpNdNCkKBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736673354; c=relaxed/simple;
	bh=T7VjFQlyFU6mWdYFF15yojEstavJR57AtID1bnf0ADk=;
	h=To:Subject:From:Message-Id:Date; b=tNZiVuy7b6W86mUrxgm5KQpswvifX/NSP3waE1mQemBiqWSKH0G4VHJmvcpWelr153hUFRJdPyjRe/RXzm+dDX6nVzqhN0ZjA2QH6vefT9SmvbxtuSq4WmhGlv8Tb3fNLs/zpAzlpg7qS1bbIiTbqRB9mtnVMifUW9xIR07Wx/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrY0y8Ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrY0y8Ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBDFC4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736673353;
	bh=T7VjFQlyFU6mWdYFF15yojEstavJR57AtID1bnf0ADk=;
	h=To:Subject:From:Date:From;
	b=rrY0y8LnSd4khq7Q6O0hDd8DYP7lyTtKFuiePWeCLnLR9euxzdZUagce93LH6fW+C
	 1kjdtqelx19vbDcaKxPd15Gqtvxli75eGxwodTvSA++DBhQzqGzg8yqoAhFb+auZmm
	 JG1G9nImgTeHPEi+exinrf3Y1pRMd4ire4wNoldtVvQOPy8u8GYcW6oZYW7I6U/Emy
	 6Lyvs84TKx4oKAyQiN36ytHjZEIT3fQs2RW1d6DWQBU6RJfA/E7Ba2vY/l7GTpS5JY
	 xIxkbE6b8MGDcuFFe+DEEMxsz3QA0IVBSDBnXBM48FOBpDpq7sSKeWUSurSwAtuknX
	 H6yeVc1TLIDPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DAE7719C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667335358.20408.15606992592889759063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75e72ff6f8aff3411a27fc2af343e3cd83a448445324ee8d5e466b78f59849c
Date: Sun, 12 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736673353
